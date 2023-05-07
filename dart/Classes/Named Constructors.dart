class Player{
  
  final String name;
  int age, xp;
  String team;
  
  Player({required this.name,
          required this.age,
          required this.team,
          required this.xp}); 
  
  Player.createBluePlayer({ // 클래스명.별칭 -> Named Constructors
    required this.name,
    required this.age
    }) :  this.age = age,
          this.name = name, 
          this.team = 'blue', 
          this.xp = 0; // : 으로 속성 초기화

  Player.createRedPlayer( // 클래스명.별칭 -> Named Constructors
   this.name,
   this.age
  ) :  this.age = age,
        this.name = name, 
        this.team = 'red', 
        this.xp = 0; // : 으로 속성 초기화
  
  
  void sayHello(){
    var name = 'no name';
    print("hi, i am ${this.name}"); 
    print("hi, i am $name"); 
  }
}



void main() {
  
  var player = Player.createBluePlayer(
    name:'ksw',
    age:10
  );
  
    var player2 = Player.createRedPlayer(
    'none',
    20
  );
  
  player.sayHello();
}