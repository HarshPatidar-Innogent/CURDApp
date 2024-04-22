package model;

public class Student {
	private int studentId;
	private String studentName;
	private int studentAge;
	private String studentGender;
	private String studentEmail;

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Student(String studentName, int studentAge, String studentGender, String studentEmail) {
		super();
		this.studentName = studentName;
		this.studentAge = studentAge;
		this.studentGender = studentGender;
		this.studentEmail = studentEmail;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public int getStudentAge() {
		return studentAge;
	}

	public void setStudentAge(int studentAge) {
		this.studentAge = studentAge;
	}

	public String getStudentGender() {
		return studentGender;
	}

	public void setStudentGender(String studentGender) {
		this.studentGender = studentGender;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

}
