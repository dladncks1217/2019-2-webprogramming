package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class UserDAO {
	private static User getUserForm(ResultSet resultSet)throws SQLException{
		User user = new User();
		user.setId(resultSet.getInt("id"));
        user.setUserid(resultSet.getString("userid"));
        user.setName(resultSet.getString("name"));
        user.setUserType(resultSet.getString("userType"));
        user.setEnabled(resultSet.getBoolean("enabled"));
        user.setEmail(resultSet.getString("Email"));
        user.setDepartmentName(resultSet.getString("departmentName"));
        return user;
	}
	public static List<User> findAll() throws Exception {
        String sql ="SELECT s.*, d.departmentName "+
        		"FROM user s LEFT JOIN department d ON s.departmentId = d.id";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            ArrayList<User> list = new ArrayList<User>();
            while (resultSet.next()) {
                list.add(getUserForm(resultSet));
            }
            return list;}
	}
    public static List<User> findByName(String name) throws Exception {
        String sql = "SELECT u.*, d.departmentName " +
                     "FROM user u LEFT JOIN department d ON u.departmentId = d.id " +
                     "WHERE name LIKE ?";
        try (Connection connection = DB.getConnection("student1");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, name + "%");
            try (ResultSet resultSet = statement.executeQuery()) {
                ArrayList<User> list = new ArrayList<User>();
                while (resultSet.next()) {
                   list.add(getUserForm(resultSet));
                }
                return list;
            }
        }
    }

    public static List<User> findByDepartmentId(int departmentid) throws Exception{
    	String sql = "SELECT u.*, d.departmentName "+
    			"FROM user u LEFT JOIN department d ON u.departmentId = d. id "+
    			"WHERE u.departmentId = ?";
    	try(Connection connection = DB.getConnection("student1");
    			PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, departmentid);
            try (ResultSet resultSet = statement.executeQuery()) {
                ArrayList<User> list = new ArrayList<User>();
                while (resultSet.next())
                	list.add(getUserForm(resultSet));
                return list;
            }
    	}
    }
}