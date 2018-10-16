package servlet;

import java.util.List;

import jdbc.JDBConnection;

public class OrderService {

	public boolean addOrder(String truename, String type, String time,
			String name) {
		if (JDBConnection.update(
				"insert into orders(truename,name,type,time) values (?,?,?,?)",
				new String[] { truename, name, type, time }))
			return true;
		else

			return false;
	}

	public List selectOrder(String truename) {
		List list = JDBConnection.queryForList(
				"select *from orders where truename=?",
				new String[] { truename });
		return list;
	}

	public boolean cancel(String id) {
		if (JDBConnection.update("delete from orders where id=?",
				new String[] { id }))
			return true;
		else
			return false;
	}

	public List getOrder() {
		List list = JDBConnection.queryForList("select *from orders", null);
		return list;
	}

}
