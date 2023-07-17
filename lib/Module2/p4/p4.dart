import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:level() ,
    );
  }
}
class level extends StatefulWidget {
  const level({Key? key}) : super(key: key);

  @override
  State<level> createState() => _levelState();
}

class _levelState extends State<level> {
  
  var colorlist=[
    Colors.lightGreenAccent,
    Colors.orangeAccent,
    Colors.cyanAccent,
    Colors.deepOrangeAccent,
    Colors.amberAccent,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.redAccent,
    Colors.yellowAccent
  ];
  Color defaultcolor=Colors.grey;
  randomcolor()
  {
    var ran=Random().nextInt(colorlist.length);
    setState(() {
      defaultcolor= colorlist[ran];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:defaultcolor ,
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
            child: Column(
              children: [
               ElevatedButton(onPressed: () {
                 randomcolor();
               }, child: Text('click me')),
              ],
          ),
        ),
      ),
    );
  }
}

