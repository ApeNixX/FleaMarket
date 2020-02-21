package fm.interceptor;

import fm.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Interceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        System.out.println("方法前 1");
        //判断用户是否登陆  如果没有登陆  重定向到登陆页面   不放行   如果登陆了  就放行了
        String requestURI = httpServletRequest.getRequestURI();
        if(!requestURI.contains("/user/password")){
            User user = (User) httpServletRequest.getSession().getAttribute("cur_user");
            if(null == user){
                httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/user/login1");
                return false;
            }
        }
        return true;


    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        System.out.println("方法后 1");
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        System.out.println("页面渲染后 1");
    }
}
