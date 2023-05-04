void main() {
  int i - 1; // 클래스 속성
  var name = 'data'; // 지역 변수 함수 메소드
  i = 123;
  name = 'string';
  
  final fin_val = 'nico'; // 수정 안댐
  
  dynamic name;
  name = '12';
  name = 12;
  name = true;
  
  const api_key = '1231141231'; // 컴파일 타임에 입력되어 있어야함
  
  String? username = 'user';
  username = null;
  
  if(username is String){
    print(username.isEmpty);
  }
  
  print(username?.isEmpty);
  
  late final String str;
  str = 'str'; // 상수 선언 후 값을 무조건 초기화 해줘야함
  print(str); // 윗 줄이 없으면 실행 X
  
  
  

}
