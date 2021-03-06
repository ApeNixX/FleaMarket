package fm.service;


import fm.pojo.Orders;

import java.util.List;

public interface OrdersService {
	
	public List<Orders> getOrdersByUserId(Integer user_id);
	
	public List<Orders> getOrdersByUserAndGoods(Integer user_id);

	public void addOrders(Orders orders);

	public void deliverByOrderNum(Integer orderNum);

	public void receiptByOrderNum(Integer orderNum);

	public int getOrdersNum();

	public int getOrdersNumByCondition(Long orderNum, String orderInformation, Integer orderState);

	public List<Orders> getPageOrders(int pageNum, int pageSize);

	public Orders getOrdersById(int ordersId);


	public void updateByPrimaryKey(Integer id, Orders orders);

	public void deleteOrdersByPrimaryKeys(int parseInt);

	public List<Orders> getPageOrdersByOrders(Long orderNum, String orderInformation, Integer orderState, int pageNum,
                                              int pageSize);

}
