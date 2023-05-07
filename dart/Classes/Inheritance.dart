class Human{
  final String name;
  Human({required this.name});
  void sayHi(){
    print('Hi my name is $name');
  }
}

enum Team {red, blue}

class Player extends Human { // Human의 속성과 메소드를 모두 받는다.
  final Team team;
  
  Player({
    required this.team,
    required String name
  }) : super(name:name); // super 부모 클래스와 상호작용할 수 있음
  
  @override
  void sayHi(){
    super.sayHi(); // 부모의 속성, 메소드에도 접근 가능
    print('and i play for $team.');
  }
  
  
}


void main() {
  
  var player = Player(team:Team.red, name:'ksw');
  
  player.sayHi();

}