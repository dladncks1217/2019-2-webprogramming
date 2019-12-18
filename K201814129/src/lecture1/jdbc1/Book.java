package lecture1.jdbc1;

public class Book {
	int id;
	String title;
	String author;
	int categoryId;
	String categoryName;
	int price;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getTitle(){
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor(){
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}

	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName(){
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
