import 'package:flutter/material.dart';

class Player {
  String? name;

  Player({this.name});
}

void main() {
  var ksw = Player();
  runApp(App());
}

// widget : widget을 레고처럼 합쳐서 앱(UI)을 만들 수 있다.
// 공식 홈페이지에 다양한 widget이 존재함
// widget을 만든다는건 class 를 만든다는 것

class App extends StatelessWidget {
//StatelessWidget.build 는 widget의 UI를 만드는 것을 의미

  @override // 부모의 메소드를 오버라이드(재정의) 함
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello flutter!'),
        ),
        body: Center(
          child: Text('hello world'),
        ),
      ),
    );

    /*
      build 에서 return 할 때, 둘 중 하나를 return 해야한다.
      1. material : 구글 -> flutter 는 구글에서 만들어서 이게 더 잘 나옴
      2. cupertino : 애플
      위 둘은 각 플랫폼의 디자인 시스템이다.

      scaffold : 화면 구조를 제공해줌
     */
  }
}
