package ch07.com.dao;

public class Member {
	private String email;
	private String tel;
	public static final String MAILPTN = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
	public static final String TELPTN = "(02|010)-\\d{3,4}-\\d{4}";
	
	
	public String result() {
		String result = "유효성 검사에 통과하지 못했습니다.";
		
		if (email.matches(MAILPTN) && tel.matches(TELPTN)) {
			result = "환영합니다!";
		}
		
		System.out.println(result);
		return result;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
