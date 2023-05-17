import 'package:flutter/material.dart';

class Player {
  String? name;

  Player({this.name});
}

void main() {
  //var ksw = Player();
  runApp(const App());
}

// widget : widget을 레고처럼 합쳐서 앱(UI)을 만들 수 있다.
// 공식 홈페이지에 다양한 widget이 존재함
// widget을 만든다는건 class 를 만든다는 것 ...

// //StatelessWidget.build 는 widget의 UI를 만드는 것을 의미
// //statful : 상태가 변하는 위젯 <-> stateless 상태가 변하지 않는 위젯
// // stateful은 statful class 와 state 클래스로 이루어져있다.

// context : 상위 요소에 대한 정보

// widget lifecycle : initState -> build -> dispose

//===================Stateful===============================//

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<App> {
  //
  bool showTitle = true;
  List<int> numbers = [];

  //int counter = 0;

  // void OnClickBtn() {
  //   setState(() {
  //     // 화면을 새로고침 해줌
  //     //counter = counter + 1;
  //     numbers.add(numbers.length);
  //   });
  // }

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
            titleLarge: TextStyle(
          color: Colors.red,
        )),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showTitle ? const MyLargeTitle() : const Text('nothing'),
            IconButton(onPressed: toggleTitle, icon: const Icon(Icons.ac_unit))
            //for (var n in numbers) Text('$n'),
            // Text(
            //   '$counter',

            //   style: const TextStyle(
            //     fontSize: 30,
            //   ),
            // ),
            // IconButton(
            //   iconSize: 40,
            //   onPressed: OnClickBtn,
            //   icon: const Icon(Icons.add_box_rounded),
            // )
          ],
        )),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // build 이전에 실행됨
    // TODO: implement initState
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    // 위젯이 화면에서 사라질때 호출
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      //'Click Count',
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}


//===================Statless===============================//

// class App extends StatelessWidget {
//   const App({super.key});

//   @override // 부모의 메소드를 오버라이드(재정의) 함
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF181818),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 20,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         const Text(
//                           'Hey, Selena',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                         Text(
//                           'Welcome back',
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 219, 169, 169)
//                                 .withOpacity(1),
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Text(
//                   'Total Balance',
//                   style: TextStyle(
//                     color: Colors.white.withOpacity(0.8),
//                     fontSize: 22,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Text(
//                   '\$5 194 482',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 44,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Button(
//                         text: 'Transfer',
//                         bgColor: Color(0xFFF1B33B),
//                         textColor: Colors.black),
//                     Button(
//                         text: 'Request',
//                         bgColor: Color(0xFF1F2123),
//                         textColor: Colors.white),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   // main : 가로축 , cross : 세로축
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       'Wallets',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 36,
//                           fontWeight: FontWeight.w600),
//                     ),
//                     Text(
//                       'View ALL',
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const CurrencyCard(
//                   name: 'Euro',
//                   code: 'EUR',
//                   amount: '6 428',
//                   icon: Icons.euro_rounded,
//                   isInverted: false,
//                   offset: Offset(0, 0),
//                 ),
//                 const CurrencyCard(
//                   name: 'Bitcoin',
//                   code: 'BTC',
//                   amount: '9 785',
//                   icon: Icons.currency_bitcoin,
//                   isInverted: true,
//                   offset: Offset(0, -30),
//                 ),
//                 const CurrencyCard(
//                   name: 'Dollar',
//                   code: 'USD',
//                   amount: '428',
//                   icon: Icons.attach_money_outlined,
//                   isInverted: false,
//                   offset: Offset(0, -60),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );

//     /*
//       build 에서 return 할 때, 둘 중 하나를 return 해야한다.
//       1. material : 구글 -> flutter 는 구글에서 만들어서 이게 더 잘 나옴
//       2. cupertino : 애플
//       위 둘은 각 플랫폼의 디자인 시스템이다.

//       scaffold : 화면 구조를 제공해줌
//      */
//   }
// }
