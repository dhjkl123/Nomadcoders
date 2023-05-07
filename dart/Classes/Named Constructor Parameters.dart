class Player{
  
  final String name;
  int age;
  String team;
  int xp;
  
  //Player(this.name,this.age,this.team,this.xp); Constructor positional Parameters
  Player({required this.name,
          required this.age,
          required this.team,
          required this.xp}); // Named Constructor Parameters
  
  void sayHello(){
    var name = 'no name';
    print("hi, i am ${this.name}"); 
    print("hi, i am $name"); 
  }
}



void main() {
  
  var player = Player(name:'ksw',age:20,team:'A',xp:100);
  //var player2 = Player('name',10,'B',200);
  
  player.sayHello();
}