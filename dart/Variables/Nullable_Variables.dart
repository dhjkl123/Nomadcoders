void main() {
  // Null safety : null을 참조하면 런타임 에러 발생
  String? name = 'name';
  name = null;
  //name.length; error
  if (name != null){ //dart는 name이 null 이 아니란 것을 알기 떄문에 error X
    name.isNotEmpty;
  }
  
  // if문 대신 아래처럼 사용 가능
  name?.isNotEmpty; // ?는 null이 아니라면
  
}
