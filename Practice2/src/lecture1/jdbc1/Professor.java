package lecture1.jdbc1;

public class Professor{
	int id;
	String professorName;
	int departmentId;

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
	public int getdepartmentId() {
		return departmentId;
	}
	public void setdepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
}