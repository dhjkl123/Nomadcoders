class Player{
  
  String name;
  int age, xp;
  String team;
  
  Player({required this.name,
          required this.age,
          required this.team,
          required this.xp}); 
  
  
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
    team:'blue',
    xp:100
  );
  
  player.name = 'none';
  player.age = 20;
  player.team = 'red';
  player.xp = 200;
  
  
  // Cascade Notation
  var player2 = Player(
    name:'ksw',
    age:10,
    team:'blue',
    xp:100
  ) // ; 없음
  
  ..name = 'none'
  ..age = 20
  ..team = 'red'
  ..xp = 200
  ..sayHello(); // 메소드도 됨
  
  
  player.sayHello();
}