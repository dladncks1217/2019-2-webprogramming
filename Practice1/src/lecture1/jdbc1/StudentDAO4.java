package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class StudentDAO4 {
	private static Student getStudentFrom(ResultSet resultSet) throws SQLException {
		Student student = new Student();
		student.setId(resultSet.getInt("id"));
		student.setStudentNumber(resultSet.getString("studentNumber"));
		student.setName(resultSet.getString("name"));
		student.setDepartmentId(resultSet.getInt("departmentId"));
		student.setYear(resultSet.getInt("year"));
		student.setDepartmentName(resultSet.getString("departmentName"));
		return student;
	}

	public static List<Student> findAll() throws Exception {
		String sql = "SELECT s.*, d.departmentName " + "FROM student s LEFT JOIN department d ON s.departmentId = d.id";
		try (Connection connection = DB.getConnection("student1");
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {
			ArrayList<Student> list = new ArrayList<Student>();
			while (resultSet.next())
				list.add(getStudentFrom(resultSet));
			return list;
		}
	}

	public static Student findById(int id) throws Exception {
		String sql = "SELECT s.*, d.departmentName " + "FROM student s LEFT JOIN department d ON s.departmentId = d.id "
				+ "WHERE s.id = ?";
		try (Connection connection = DB.getConnection("student1");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setInt(1, id);
			try (ResultSet resultSet = statement.executeQuery()) {
				if (resultSet.next())
					return getStudentFrom(resultSet);
				else
					return null;
			}
		}
	}

	public static void insert(Student student) throws Exception {
		String sql = "INSERT student (name, studentNumber, departmentId, year) VALUES (?, ?, ?, ?)";
		try (Connection connection = DB.getConnection("student1");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setString(1, student.getName());
			statement.setString(2, student.getStudentNumber());
			statement.setInt(3, student.getDepartmentId());
			statement.setInt(4, student.getYear());
			statement.executeUpdate();
		}
	}
}