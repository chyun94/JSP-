package View;

public class Menu implements View {
	
	public int choice() {
		out.println(menuStr);
		out.println("Choice: ");
		return scan.nextInt();
	}
	
	@Override
	public void show() {
		
		out.println("#### 정보 관리 시스템 ####");
		int no = choice();
		while(no<0 || no>6) {
			out.println("유효한 선택이 아닙니다.");
			no = choice();
		}
		//R에 입력받은 번호를 입력하고 다시 Controller 실행
		
	}

}
