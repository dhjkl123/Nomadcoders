void main() {
  var name; // 초기화 하지 않으면 Dynamic Var
  name = 'string';
  name = 1;
  name = true;
  
  dynamic dy_var;
  if (dy_var is String) // 조건문에서 확인했기 때문에 조건문 안에서는 해당 자료형
  {
    // dy_var은 String
  }
  
  if (dy_var is int)
  {
    // dy_var은 int
  }
  
  // 강력하지만 정말로 필요할 때만 쓰도록 하자.
  
}
