package View;

import Resource.R;
//extends를 하기 위해서는 리소스 패키지에다가도 R이라는 객체 생성
public interface View extends R{
	//show라는 추상 메소드 생성
	void show();
}
