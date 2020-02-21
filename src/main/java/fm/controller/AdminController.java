package fm.controller;

import com.github.pagehelper.PageInfo;
import fm.pojo.*;
import fm.service.*;
import fm.util.GoodsGrid;
import fm.util.OrdersGrid;
import fm.util.PurseGrid;
import fm.util.UserGrid;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    @Resource
    private UserService userService;
    @Resource
    private GoodsService goodsService;
    @Resource
    private OrdersService ordersService;
    @Resource
    private PurseService purseService;
    @Resource
    private AdminService adminService;


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String login(HttpSession session) {
        // 清除session
        session.invalidate();
        return "/admin/login";
    }
    //后台首页
    @RequestMapping(value = "/indexs")
    public String indexs(HttpServletRequest request) {
        Admin admin = (Admin) request.getSession().getAttribute("admin");
        if (admin != null) {
            Integer id = admin.getId();
            Admin myadmin = adminService.findAdminById(id);
            request.getSession().setAttribute("admin", myadmin);
            return "/admin/index";
        }
        return "/admin/login";

    }

    //后台登录
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String index(HttpServletRequest httpServletRequest, Admin admins){
        Admin admin = adminService.findAdmin(admins.getPhone(),admins.getPassword());
        if(admin!=null){
            httpServletRequest.getSession().setAttribute("admin",admin);
            return "admin/index";
        }
        return "admin/login";

    }
    //后台注销
    @RequestMapping(value = "/logout")
    public String logout(HttpServletRequest httpServletRequest){
        httpServletRequest.getSession().setAttribute("admin",null);
        return "admin/login";
    }
    /* 个人信息 */
    @RequestMapping(value = "/info")
    @ResponseBody
    public ModelAndView getInfo(HttpServletRequest request) {
        Admin admin = (Admin) request.getSession().getAttribute("admin");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("admin", admin);
        modelAndView.setViewName("admin/info");
        return modelAndView;
    }

    /* 查找所有用户 */
    @RequestMapping(value = "/userList")
    @ResponseBody
    public ModelAndView getUserList(@RequestParam int pageNum) {
        ModelAndView modelAndView = new ModelAndView();
        int pageSize = 10;
        int total = userService.getUserNum();
        List<User> rows = userService.getPageUser(pageNum, pageSize);
        UserGrid userGrid = new UserGrid();
        userGrid.setCurrent(pageNum);
        userGrid.setRowCount(pageSize);
        userGrid.setRows(rows);
        userGrid.setTotal(total);
        modelAndView.addObject("userGrid", userGrid);
        modelAndView.setViewName("admin/user/user_list");
        return modelAndView;
    }

    /* 查看用户 */
    @RequestMapping(value = "/getUser")
    @ResponseBody
    public User getUser(HttpServletRequest request) {
        String id = request.getParameter("id");
        User user = userService.getUserById(Integer.parseInt(id));
        return user;
    }
    /* 修改用户 */
    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    @ResponseBody
    public String updateUser(HttpServletRequest request, User user) {
        User users = userService.selectByPrimaryKey(user.getId());
        user.setPassword(users.getPassword());
        try {
            userService.updateUserName(user);
        } catch (Exception e) {
            return "{\"success\":false,\"msg\":\"保存失败!\"}";
        }
        return "{\"success\":true,\"msg\":\"保存成功!\"}";
    }


    /* 查询用户 */
    @RequestMapping(value = "/searchUser")
    @ResponseBody
    public ModelAndView searchUser(HttpServletRequest request, User user,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum) {
        ModelAndView mv = new ModelAndView();
        //int pageNum = 1;
        int pageSize = 10;

        String phone = user.getPhone();
        String username = user.getUsername();
        Integer status = user.getStatus();
        int total = userService.getUserNumByCondition(phone,username,status);
        List<User> rows = userService.getPageUserByUser1(phone, username, status, pageNum, pageSize);
        PageInfo<User> userPageInfo = new PageInfo<User>(rows);
        UserGrid userGrid = new UserGrid();
        User searchuser = new User();
        searchuser.setPhone(phone);
        searchuser.setUsername(username);
        searchuser.setStatus(status);
        userGrid.setCurrent(pageNum);
        userGrid.setRowCount(pageSize);
        userGrid.setRows(rows);
        userGrid.setTotal(total);
        mv.addObject("userGrid", userGrid);
        mv.addObject("searchuser", searchuser);
        mv.addObject("userPageInfo", userPageInfo);

        mv.setViewName("admin/user/user_search");
        return mv;
    }



    /* 查找所有商品 */
    @RequestMapping(value = "/goodsList")
    @ResponseBody
    public ModelAndView getGoodsList(@RequestParam("pageNum") int pageNum) {
        ModelAndView modelAndView = new ModelAndView();
        int pageSize = 10;
        int total = goodsService.getGoodsNum();
        List<Goods> rows = goodsService.getPageGoods(pageNum, pageSize);
        GoodsGrid goodsGrid = new GoodsGrid();
        goodsGrid.setCurrent(pageNum);
        goodsGrid.setRowCount(pageSize);
        goodsGrid.setRows(rows);
        goodsGrid.setTotal(total);
        modelAndView.addObject("goodsGrid", goodsGrid);
        modelAndView.setViewName("admin/goods/goods_list");
        return modelAndView;
    }

    /* 查看商品 */
    @RequestMapping(value = "/getGoods")
    @ResponseBody
    public Goods getGoods(HttpServletRequest request) {
        String id = request.getParameter("id");
        Goods goods = goodsService.getGoodsById(Integer.parseInt(id));
        return goods;
    }

    /* 修改商品 */
    @RequestMapping(value = "/updateGoods", method = RequestMethod.POST)
    @ResponseBody
    public String updateGoods(HttpServletRequest request, Goods goods) {
        int id = goods.getId();
        Goods oldGoods = goodsService.getGoodsById(id);
        goods.setUserId(oldGoods.getUserId());
        goods.setPolishTime(oldGoods.getPolishTime());
        goods.setEndTime(oldGoods.getEndTime());
        try {
            goodsService.updateGoodsByPrimaryKeyWithBLOBs(goods.getId(), goods);
        } catch (Exception e) {
            return "{\"success\":false,\"msg\":\"保存失败!\"}";
        }
        return "{\"success\":true,\"msg\":\"保存成功!\"}";
    }

    /* 查询商品 */
    @RequestMapping(value = "/searchGoods")
    @ResponseBody
    public ModelAndView searchGoods(HttpServletRequest request, Goods goods,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum) {
        ModelAndView mv = new ModelAndView();
        //int pageNum = 1;
        int pageSize = 10;
        Integer id = goods.getId();
        String name = goods.getName();
        Integer status = goods.getStatus();
        Integer catelogId = goods.getCatelogId();
        int total = goodsService.getGoodsNumByCondition(id,name,status,catelogId);
        List<Goods> rows = goodsService.getPageGoodsByGoods(id, name, status,catelogId, pageNum, pageSize);
        GoodsGrid goodsGrid = new GoodsGrid();
        Goods searchgoods = new Goods();
        searchgoods.setId(id);
        searchgoods.setName(name);
        searchgoods.setStatus(status);
        searchgoods.setCatelogId(catelogId);
        goodsGrid.setCurrent(pageNum);
        goodsGrid.setRowCount(pageSize);
        goodsGrid.setRows(rows);
        goodsGrid.setTotal(total);
        mv.addObject("goodsGrid", goodsGrid);
        mv.addObject("searchgoods", searchgoods);
        mv.setViewName("admin/goods/goods_search");
        return mv;
    }


    /* 查找所有订单 */
    @RequestMapping(value = "/ordersList")
    @ResponseBody
    public ModelAndView getOrdersList(@RequestParam("pageNum") int pageNum) {
        ModelAndView modelAndView = new ModelAndView();
        int pageSize = 10;
        int total = ordersService.getOrdersNum();
        List<Orders> rows = ordersService.getPageOrders(pageNum, pageSize);
        OrdersGrid ordersGrid = new OrdersGrid();
        ordersGrid.setCurrent(pageNum);
        ordersGrid.setRowCount(pageSize);
        ordersGrid.setRows(rows);
        ordersGrid.setTotal(total);
        modelAndView.addObject("ordersGrid", ordersGrid);
        modelAndView.setViewName("admin/orders/orders_list");
        return modelAndView;
    }

    /* 查看订单 */
    @RequestMapping(value = "/getOrders")
    @ResponseBody
    public Orders getOrders(HttpServletRequest request) {
        String id = request.getParameter("id");
        Orders orders = ordersService.getOrdersById(Integer.parseInt(id));
        return orders;
    }

    /* 修改订单 */
    @RequestMapping(value = "/updateOrders", method = RequestMethod.POST)
    @ResponseBody
    public String updateOrders(HttpServletRequest request, Orders orders) {
        int id = orders.getId();
        Orders oldorders = ordersService.getOrdersById(id);
        orders.setGoodsId(oldorders.getGoodsId());
        orders.setUserId(oldorders.getUserId());
        Goods goods=goodsService.getGoodsById(oldorders.getGoods().getId());
        if (oldorders.getOrderState() != orders.getOrderState()) {
            Float balance = orders.getOrderPrice();
            if (orders.getOrderState() == 3) {
                purseService.updatePurseByuserId(goods.getUserId(), balance);
            } else {
                purseService.updatePurseOfdel(goods.getUserId(), balance);
            }
        }
        try {
            ordersService.updateByPrimaryKey(id, orders);
        } catch (Exception e) {
            return "{\"success\":false,\"msg\":\"保存失败!\"}";
        }
        return "{\"success\":true,\"msg\":\"保存成功!\"}";
    }

    /* 删除订单 */
    @RequestMapping(value = "/deleteOrders", method = RequestMethod.POST)
    @ResponseBody
    public String deleteOrders(HttpServletRequest request, @RequestParam(value = "ids[]") String[] ids) {
        try {
            for (int i = 0; i < ids.length; i++) {
                ordersService.deleteOrdersByPrimaryKeys(Integer.parseInt(ids[i]));
            }
        } catch (Exception e) {
            return "{\"success\":false,\"msg\":\"删除失败!\"}";
        }
        return "{\"success\":true,\"msg\":\"删除成功!\"}";
    }

    /* 查询订单 */
    @RequestMapping(value = "/searchOrders")
    @ResponseBody
    public ModelAndView searchOrders(HttpServletRequest request, Orders orders,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum) {
        ModelAndView mv = new ModelAndView();
        //int pageNum = 1;
        int pageSize = 10;

        Long orderNum = orders.getOrderNum();
        String orderInformation = orders.getOrderInformation();
        Integer orderState = orders.getOrderState();
        int total = ordersService.getOrdersNumByCondition(orderNum,orderInformation,orderState);
        List<Orders> rows = ordersService.getPageOrdersByOrders(orderNum, orderInformation, orderState, pageNum, pageSize);
        OrdersGrid ordersGrid = new OrdersGrid();
        Orders searchorders = new Orders();
        searchorders.setOrderNum(orderNum);
        searchorders.setOrderInformation(orderInformation);
        searchorders.setOrderState(orderState);
        ordersGrid.setCurrent(pageNum);
        ordersGrid.setRowCount(pageSize);
        ordersGrid.setRows(rows);
        ordersGrid.setTotal(total);
        mv.addObject("ordersGrid", ordersGrid);
        mv.addObject("searchorders", searchorders);
        mv.setViewName("admin/orders/orders_search");
        return mv;
    }


    /* 查找所有钱包 */
    @RequestMapping(value = "/purseList")
    @ResponseBody
    public ModelAndView getPurseList(HttpServletRequest request) {
        int pageNum=Integer.parseInt(request.getParameter("pageNum"));
        ModelAndView modelAndView = new ModelAndView();
        int pageSize = 10;
        int total = purseService.getPurseNum();
        List<Purse> rows = purseService.getPagePurse(pageNum, pageSize);
        PurseGrid purseGrid = new PurseGrid();
        purseGrid.setCurrent(pageNum);
        purseGrid.setRowCount(pageSize);
        purseGrid.setRows(rows);
        purseGrid.setTotal(total);
        modelAndView.addObject("purseGrid", purseGrid);
        modelAndView.setViewName("admin/purse/purse_list");
        return modelAndView;
    }

    /* 查询钱包 */
    @RequestMapping(value = "/searchPurse")
    @ResponseBody
    public ModelAndView searchPurse(HttpServletRequest request, Purse purse,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum) {
        ModelAndView mv = new ModelAndView();
        //int pageNum = 1;
        int pageSize = 10;
        Integer userId = purse.getUserId();
        Integer state=purse.getState();
        int total = purseService.getPurseNumByCondition(userId,state);
        List<Purse> rows = purseService.getPagePurseByPurse(userId,state, pageNum, pageSize);
        PurseGrid purseGrid = new PurseGrid();
        Purse searchpurse = new Purse();
        searchpurse.setUserId(userId);
        searchpurse.setState(state);
        purseGrid.setCurrent(pageNum);
        purseGrid.setRowCount(pageSize);
        purseGrid.setRows(rows);
        purseGrid.setTotal(total);
        mv.addObject("purseGrid", purseGrid);
        mv.addObject("searchpurse", searchpurse);
        mv.setViewName("admin/purse/purse_search");
        return mv;
    }

    /* 查看钱包 */
    @RequestMapping(value = "/getPurse")
    @ResponseBody
    public Purse getPurse(HttpServletRequest request) {
        String id = request.getParameter("id");
        Purse purse = purseService.getPurseById(Integer.parseInt(id));
        return purse;
    }

    /* 通过 */
    @RequestMapping(value = "/updatePursePass", method = RequestMethod.POST)
    @ResponseBody
    public String updatePursePass(HttpServletRequest request, Purse purse) {
        Float balance=purse.getBalance();
        purse.setState(2);
        try {
            if(purse.getRecharge()!=null){//充值 充值金额=null 当前金额=当前金额+充值金额
                Float recharge=purse.getRecharge();
                Float balanceRecharge=balance+recharge;
                purse.setBalance(balanceRecharge);
                purseService.updatePursePassById(purse.getId(),purse);
            }if(purse.getWithdrawals()!=null) {//提现
                Float withdrawals=purse.getWithdrawals();
                Float balanceWithdrawals=balance-withdrawals;
                purse.setBalance(balanceWithdrawals);
                purseService.updatePurseRefuseById(purse.getId(),purse);
            }
        }
        catch (Exception e) {
            return "{\"success\":true,\"msg\":\"审核失败，请核对金额!\"}";
        }
        return "{\"success\":true,\"msg\":\"审核成功!\"}";
    }

    /* 不通过 */
    @RequestMapping(value = "/updatePurseRefuse", method = RequestMethod.POST)
    @ResponseBody
    public String updatePurseRefuse(HttpServletRequest request, Purse purse) {
        purse.setState(1);
        try {

            purseService.updatePurseRefuseById(purse.getId(),purse);

        }
        catch (Exception e) {
            return "{\"success\":true,\"msg\":\"审核失败!\"}";
        }
        return "{\"success\":true,\"msg\":\"审核成功!\"}";
    }

    /* 用户查看审核结果 */
    @RequestMapping(value = "/updatePurseState", method = RequestMethod.GET)
    public void updatePurseState(HttpServletRequest request) {
        Integer id=Integer.parseInt(request.getParameter("id"));
        Purse purse= purseService.getPurseById(id);
        purse.setState(null);
        this.purseService.updateByPrimaryKey(id,purse);//修改state为null
    }

}
