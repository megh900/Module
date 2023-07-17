import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _numcontroller = TextEditingController();

  String insertt(String value){
      return value.split('').reversed.join();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    TextField(
                    onChanged: (value) {
                      setState(() {
                        _numcontroller.text= insertt(value);
                      });

          }, decoration: InputDecoration(hintText: 'enter number'),),
      TextField(controller: TextEditingController(text: _numcontroller.text),decoration: InputDecoration(labelText: "Reverse Text"),)
        ],
      ),
              ),
    ),)
    ,
    )
    ,
    );
  }
}
