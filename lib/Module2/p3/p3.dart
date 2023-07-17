import 'package:flutter/material.dart';
import 'package:flutter_project/dart-radiobutton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: methods(),
    );
  }
}

class methods extends StatefulWidget {
  const methods({Key? key}) : super(key: key);

  @override
  State<methods> createState() => _methodsState();
}

class _methodsState extends State<methods> {

  var result =0;
  var firstnumber='';
  var secondnumber='';
  var method='';

  final _firstnumber=TextEditingController();
  final _secondnumber=TextEditingController();

  void methodss(String? value)
  {
   setState(() {
     method=value!;
     int first = int.parse(_firstnumber.text);
     int second = int.parse(_secondnumber.text);
     if(value=="+")
     {
       result= first + second;
     }else if(value=='-')
     {
       result = first - second;
     }else if(value=='*')
     {
       result=first * second;
     }else if(value=='/')
     {
       result=first ~/ second;
     }
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextField(controller: _firstnumber,decoration: InputDecoration(hintText: 'enter first number'),),
              SizedBox(height: 10,),
              RadioListTile(title: Text('addition'),value: '+', groupValue: method, onChanged: (value) {
                methodss(value);
              },),
              RadioListTile(title: Text('substraction'),value: '-', groupValue:method, onChanged: (value) {
                methodss(value);
              },),
              RadioListTile(title: Text('multiplication'),value: '*', groupValue: method, onChanged: (value) {
                methodss(value);
              },),
              RadioListTile(title: Text('divison'),value: '/', groupValue: method, onChanged: (value) {
                methodss(value);
              },),
              SizedBox(height: 10,),
              TextField(controller: _secondnumber,decoration: InputDecoration(hintText: 'enter second number'),),
          SizedBox(height: 10,),
        Text('$result'),

            ],
          )

        ),
      ),
    );
  }
}
