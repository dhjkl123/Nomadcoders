enum Team {red,blue} // Enums

class Player{
  
  String name;
  int age, xp;
  Team team; // Enum 자료형으로 선언
  
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
    team: Team.blue, // Enum 자료형으로 초기화
    xp:100
  );
  
  player.name = 'none';
  player.age = 20;
  player.team = Team.red; // Enum 자료형으로 초기화
  player.xp = 200;

}