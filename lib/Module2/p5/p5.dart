import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: level(),
    );
  }
}

class level extends StatefulWidget {
  const level({Key? key}) : super(key: key);

  @override
  State<level> createState() => _levelState();
}

class _levelState extends State<level> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Row(
            children: [
              ElevatedButton(onPressed:
                  () {
                    setState(() {
                      level +=1;
                    });
                  }, child: Text('+')),
              SizedBox(width: 20,),
              Text('$level'),
              SizedBox(width: 20,),
              ElevatedButton(onPressed:
                  () {
                setState(() {
                  level -=1;
                });
              }, child: Text('-')),

            ],
          )
        ),
      ),
    );
  }
}
