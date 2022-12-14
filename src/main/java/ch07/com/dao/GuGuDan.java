package ch07.com.dao;

public class GuGuDan {
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String process(int num) {
		String result = null;
		
		for (int i = 1; i < 10; i++) {
			result = num + "*" + i + "=" + num * i;
		}
		
		return result;
	}
	
}
