package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class BookDAO {
	public static List<Book> findAll() throws Exception {
		String sql = "SELECT b.*,c.categoryName FROM book b LEFT JOIN category c ON b.categoryId = c.id";
		try (Connection connection = DB.getConnection("book3");
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {
			ArrayList<Book> list = new ArrayList<Book>();
			while (resultSet.next()) {
				Book book = new Book();
				book.setId(resultSet.getInt("id"));
				book.setTitle(resultSet.getString("title"));
				book.setAuthor(resultSet.getString("author"));
				book.setCategoryId(resultSet.getInt("categoryId"));
				book.setCategoryName(resultSet.getString("categoryName"));
				book.setPrice(resultSet.getInt("price"));
				list.add(book);
			}
			return list;
		}
	}
	public static void insert(Book book) throws Exception {
		String sql = "INSERT book (title, author, categoryId, price) VALUES (?, ?, ?, ?)";
		try (Connection connection = DB.getConnection("book3");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setString(1, book.getTitle());
			statement.setString(2, book.getAuthor());
			statement.setInt(3, book.getCategoryId());
			statement.setInt(4, book.getPrice());
			statement.executeUpdate();
		}
	}

}
