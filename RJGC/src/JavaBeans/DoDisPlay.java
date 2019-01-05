package JavaBeans;

public class DoDisPlay {
	private String tid;
	private String tname;
	private int total_number;
	private int optional_number;
	private String teacher;
	public DoDisPlay(String tid,String tname,int total_number,int optional_number,String teacher) {
		this.tid = tid;
		this.tname = tname;
		this.total_number = total_number;
		this.optional_number = optional_number;
		this.teacher = teacher;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getTotal_number() {
		return total_number;
	}
	public void setTotal_number(int total_number) {
		this.total_number = total_number;
	}
	public int getOptional_number() {
		return optional_number;
	}
	public void setOptional_number(int optional_number) {
		this.optional_number = optional_number;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
}
