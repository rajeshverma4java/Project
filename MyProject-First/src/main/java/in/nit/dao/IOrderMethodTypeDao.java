package in.nit.dao;

import java.util.List;

import in.nit.model.OrderMethodType;


public interface IOrderMethodTypeDao {
	Integer saveOrderMethodtype(OrderMethodType omt);
	List<OrderMethodType> getAllOrderMethodType();
	void deleteOrderMethodType(Integer id);
	 public OrderMethodType viewOrderMethodType(Integer id);
	 public void updateOrderMethodType(OrderMethodType omt);
	 public List<Object[]> getOrderMethodTypeMethodCount();
	 public List<Object[]> getOrderMethodIdAndCode(String mode);

}
