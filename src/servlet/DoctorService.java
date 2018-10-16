package servlet;

import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;

public class DoctorService {

	public List select(String infor) {
		List list = JDBConnection.queryForList(
				"select *from doctor where name=? or type=? or specialty=?",
				new String[] { infor, infor, infor });
		return list;
	}

	public Map selectId(String id) {
		Map map = null;
		try {
			map = JDBConnection.queryForMap("select *from doctor where id=?",
					new String[] { id });
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}

	public boolean deleteDoctor(String id) {
		if (JDBConnection.update("delete from doctor where id=?",
				new String[] { id }))
			return true;
		else
			return false;
	}

	public List selectDoctor() {
		List list = JDBConnection.queryForList(
				"select *from doctor order by type,name desc", null);
		return list;
	}

	public boolean addDoctor(String name, String type, String age, String sex,
			String title, String address, String specialty, String phone,
			String introduction) {
		if (JDBConnection
				.update("insert into doctor(name,type,age,sex,title,address,specialty,phone,introduction) values (?,?,?,?,?,?,?,?,?)",
						new String[] { name, type, age, sex, title, address,
								specialty, phone, introduction })) {
			System.out.println("success");
			return true;
		}

		return false;
	}

	public boolean updateDoctor(String name, String type, String phone,
			String introduction, String id) {
		if (JDBConnection
				.update("update doctor set name=?,type=?,phone=?,introduction=? where id=?",
						new String[] { name, type, phone, introduction, id }))
			return true;
		else
			return false;
	}

}
