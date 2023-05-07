abstract class Human{ // abstract class 추상화 클래스 생성자 없이 틀만 가지고 있음
  void walk();
  
}

enum Team {red,blue} 

class Coach extends Human{
  void walk(){ // Human에서 선언되었지만 정의는 사용되는 클래스에서 한다
    print('Coach is walking');
  }
}

class Player extends Human{ // 클래스에서 확장 시켜 사용할 수 있음
  
  String name;
  int age, xp;
  Team team; 
  
  Player({required this.name,
          required this.age,
          required this.team,
          required this.xp}); 
  
  void walk(){ // Human에서 선언되었지만 정의는 사용되는 클래스에서 한다
    print('i am walking');
  }
  
  void sayHello(){
    var name = 'no name';
    print("hi, i am ${this.name}"); 
    print("hi, i am $name"); 
  }
}



void main() {
  
  var player = Player(
    name:'ksw',
    age:10,
    team: Team.blue, 
    xp:100
  );
  
  player.name = 'none';
  player.age = 20;
  player.team = Team.red; 
  player.xp = 200;

}