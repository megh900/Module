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
  
var getvalue=0;
  final _numbercontroller=TextEditingController();
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
              TextField(controller: _numbercontroller,decoration: InputDecoration(hintText: 'enter number'),),
              ElevatedButton(onPressed: () {
                setState(() {
                   int get=int.parse(_numbercontroller.text);
                    getvalue=get;
                });
              }, child: Text('get value')),
              Text("$getvalue"),
              Column(
                children: [
                  for(int i=1;i<=getvalue;i++)
                    TextField(decoration: InputDecoration(hintText: 'enter'),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
