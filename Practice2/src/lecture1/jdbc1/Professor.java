package lecture1.jdbc1;

public class Professor{
	int id;
	String professorName;
	String departmentName;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getprofessorName(){
		return professorName;
	}
	public void setprofessorName(String professorName) {
		this.professorName = professorName;
	}
	public String getdepartmentName() {
		return departmentName;
	}
	public void setdepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
}