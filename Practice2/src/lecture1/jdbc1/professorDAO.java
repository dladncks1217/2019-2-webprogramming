package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class professorDAO {
	public static List<Professor> findAll() throws Exception {
		String sql = "SELECT p.*,d.departmentName FROM professor p LEFT JOIN department d ON p.departmentId = d.id";
		try (Connection connection = DB.getConnection("student1");
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {
			ArrayList<Professor> list = new ArrayList<Professor>();
			while (resultSet.next()) {
				Professor professor = new Professor();
				professor.setId(resultSet.getInt("id"));
				professor.setprofessorName(resultSet.getString("professorName"));
				professor.setdepartmentName(resultSet.getString("departmentName"));
				list.add(professor);
			}
			return list;
		}
	}

	public static void insert(Professor professor) throws Exception {
		String sql = "INSERT professor (professorName, departmentId) VALUES (?, ?)";
		try (Connection connection = DB.getConnection("student1");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setString(1, professor.getprofessorName());
			statement.setString(2, professor.getdepartmentName());
			statement.executeUpdate();
		}
	}

	public static List<Professor> getlastid() throws Exception {
		String sql = "SELECT * FROM professor ORDER BY id DESC limit 1";
		try (Connection connection = DB.getConnection("student1");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			PreparedStatement statements = connection.prepareStatement(sql);
			ResultSet resultSet = statements.executeQuery();
			ArrayList<Professor> lists = new ArrayList<Professor>();
			while (resultSet.next()) {
				Professor professors = new Professor();
				professors.setId(resultSet.getInt("id"));
				professors.setprofessorName(resultSet.getString("professorName"));
				professors.setdepartmentName(resultSet.getString("departmentName"));
				lists.add(professors);
			}
			return lists;
		}

	}
}
