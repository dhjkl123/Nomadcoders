class Player{
//   late final String name;
//   late int age;
  
//   Player(String anme, int age){
//     this.name = name;
//     this.age = age;
    
//   } not constructors
  
  final String name;
  int age;
  
  Player(this.name,this.age); //constructors
  
  void sayHello(){
    var name = 'no name';
    print("hi, i am ${this.name}"); 
    print("hi, i am $name"); 
  }
}



void main() {
  
  var player = Player('ksw',20);
  var player2 = Player('name',10);
  
  player.sayHello();
  player2.sayHello();


}