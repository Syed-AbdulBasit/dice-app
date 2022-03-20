import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.white,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}


  class SecondScreen extends StatefulWidget {
  @override
  _MyNewDiceAppState createState() => _MyNewDiceAppState();
  }

  class _MyNewDiceAppState extends State<SecondScreen> {

  var dice1 = 1;
  var dice2 = 2;
  var dice3 = 5;
  var dice4 = 6;
  var a=1;
  var b=2;
  var c=5;
  var d=6;
  var count=0;

  void totalSumofDices() {
  setState(() {

  count = a + b + c + d;
  });

  }
  void winner() {
    setState(() {
if (a>=b&&a>=c&&a>=d)
      print("dice1");
if (b>=a&&b>=c&&b>=d)
  print("dice2");
if (c>=b&&c>=a&&c>=d)
  print("dice3");
if (d>=b&&d>=c&&d>=a)
  print("dice4");
    });

  }


  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
  backgroundColor: Colors.blue,
  appBar: AppBar(
  title: Text("Sum of the dice:$count winner is $winner " ),
  centerTitle: true,
  backgroundColor: Colors.lightBlueAccent,
  ),
  body: Container(
  child:
  Column(mainAxisAlignment: MainAxisAlignment.end,
  children: [Row(
  children: [
  Expanded(
  child: Text('Dice1=${a}', textAlign: TextAlign.center)
  ),
  Expanded(
  child: Text('Dice2=${b}', textAlign: TextAlign.center)
  ),
  Expanded(
  child: Text('Dice3=${c}', textAlign: TextAlign.center)
  ),
  Expanded(
  child: Text('Dice4=${d}', textAlign: TextAlign.center)
  ),

  ]
  ),


  Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Expanded(
  child: TextButton(
  child: Image.asset('images/dice$dice1.png'),
  onPressed: () {
  setState(() {
  dice1 = Random().nextInt(6) + 1;
  a=0;
  a = a + dice1;
  totalSumofDices();
  });
  print(num);
  },
  ),
  ),
  Expanded(
  child: TextButton(
  child: Image.asset('images/dice$dice2.png'),
  onPressed: () {
  setState(() {
  dice2 = Random().nextInt(6) + 1;
  b=0;
  b = b + dice2;
  totalSumofDices();
  });
  print(num);
  },
  ),
  ),
  Expanded(
  child: TextButton(
  child: Image.asset('images/dice$dice3.png'),
  onPressed: () {
  setState(() {
  dice3 = Random().nextInt(6) + 1;
  c=0;
  c = c + dice3;
  totalSumofDices();
  });
  print(num);
  },
  ),
  ),
  Expanded(
  child: TextButton(
  child: Image.asset('images/dice$dice4.png'),
  onPressed: () {
  setState(() {
  dice4 = Random().nextInt(6) + 1;
  d=0;
  d = d + dice4;
  totalSumofDices();
  //sum();
  });
  print(num);
  },
  ),
  ),
  ],

  ),
  ],
  ),

  ),
  floatingActionButton: FloatingActionButton(
  onPressed: () {
  // show the dialog;
  showDialog(context:context,
  builder: (BuildContext context){
  return dialogbox('Result');
  }
  );
  },
  backgroundColor: Colors.lightBlueAccent,
  child: const Icon(Icons.lightbulb_outline
  )
  )
  )
  );
  }
  }

  class dialogbox extends StatelessWidget{
  var title;
  dialogbox(this.title);
  @override
  Widget build(BuildContext context){
  return AlertDialog(
  title: Text('result'),
  content: Text(title),
  actions: [
  new TextButton(onPressed: (){Navigator.of(context).pop();}, child:Text('ok'))
  ],
  );
  }

  }

/*

 */
