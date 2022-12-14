package ch07.com.dao;

public class GuGuDan {
	
	public String[] process(int num) {
		String[] result = new String[9];
		
		for (int i = 0; i < 9; i++) {
			result[i] = num + "*" + (i + 1) + "=" + num * (i + 1);
		}
		
		return result;
	}
	
}
