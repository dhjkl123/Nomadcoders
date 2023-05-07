// Mixins Classes :  생성자가 없는 클래스
class Strong{
  final double strengthLevel = 1500;
}

class QuickRunner{
  void QuickRun(){
    print('Ruuuuuuuuuuuuun');
  }
}

class Tall {
  final double height = 1.99;
}
// Mixins Classes

enum Team {red, blue}

class Player with Strong, QuickRunner, Tall {  // Class의 속성들 뺏어와 사용가능 -> 재사용성 증가
  final Team team;
  
  Player({
    required this.team,
  });
 
}

class Horse with Strong, QuickRunner{} // Class의 속성들 뺏어와 사용가능 -> 재사용성 증가
class Kid with  QuickRunner{} // Class의 속성들 뺏어와 사용가능 -> 재사용성 증가

void main() {
  
  var player = Player(team:Team.red);
  
  player.QuickRun();
  player.height;
  player.strengthLevel;

}