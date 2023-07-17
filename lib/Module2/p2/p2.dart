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

  final _firstnumbercontroller=TextEditingController();
  final _secondnumbercontroller=TextEditingController();
  var getvalue=0;
  var getvaluee=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              TextField(controller: _firstnumbercontroller,decoration: InputDecoration(hintText: 'enter first number'),),
              SizedBox(height: 10,),
              TextField(controller: _secondnumbercontroller,decoration: InputDecoration(hintText: 'enter second number'),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {
                setState(() {
                 int get=int.parse(_firstnumbercontroller.text);
                 int gett=int.parse(_secondnumbercontroller.text);
                 getvalue=get;
                 getvaluee=gett;
                });
              }, child: Text('get value')),
              Column(
                children: [
                  for(int i=getvalue+1;i<getvaluee;i++)
                   Text('$i')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

