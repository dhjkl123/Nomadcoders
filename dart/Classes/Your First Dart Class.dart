class Player{
  late final String name;
  late int age;
  
  Player(String name, int age){
    this.name = name;
    this.age = age;
  }
  
  void sayHello(){
    var name = 'no name';
    print("hi, i am ${this.name}"); // this를 통해 현재 class 속성에 접근 가능
    print("hi, i am $name"); // 겹치는 변수가 없다면 this 안쓰는 것을 권고
  }
}

// class 내의 속성은 var 아닌 자료형을 무조건 명시하자

void main() {
  
  var player = Player('ksw',20);
  //player.name = 'ksw'; final 변수라 변경 불가능
  player.age = 10;
  
  print(player.name);
  print(player.age);
  player.sayHello();

}