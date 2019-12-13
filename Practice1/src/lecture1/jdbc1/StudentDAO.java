package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class StudentDAO {
	public static List<Student> findAll() throws Exception {
		String sql = "SELECT s.*, d.departmentName " + // 문자열 두 개 더할 때 d.deparmentName과 FROM 사이에 공백 있어야함.
				     "FROM student s LEFT JOIN department d ON s.departmentId = d.id";
		try (Connection connection = DB.getConnection("student1");  // student1 이라는 DB에 연결
				PreparedStatement statement = connection.prepareStatement(sql);  // (SQL 명령을 실행하기 위한 객체)
				ResultSet resultSet = statement.executeQuery()) { // PreparedStateument의 excuteQuery()메서드 실행 이후 DB에서 SQL명령 실행, SQL명령의 조회 결과가 resultSet객체에 채워저 전달.
			ArrayList<Student> list = new ArrayList<Student>();
			while (resultSet.next()) {  // 조회 결과 레코드 수 만큼 while문 실행.
				Student student = new Student(); // resultSet객체로부터 Student객체에 채운다.
				student.setId(resultSet.getInt("id"));
				student.setStudentNumber(resultSet.getString("studentNumber"));
				student.setName(resultSet.getString("name"));
				student.setDepartmentId(resultSet.getInt("departmentId"));
				student.setYear(resultSet.getInt("year"));
				student.setDepartmentName(resultSet.getString("departmentName"));
				list.add(student);
			}
			return list;
		}
	}
}