
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
hmoda(){
  
}



  List boyot = [
    {"line1": '1', "line2": "1"},
    {"line1": "2", "line2": "2"},
    {"line1": "3", "line2": "3"},
    {"line1": "4", "line2": "4"}

  ];

  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          boyot[myIndex]["line1"],
          
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          boyot[myIndex]["line2"],
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                setState(() {
                  if (myIndex == 0) {
                    myIndex = boyot.length-1;
                  } else {
                    myIndex--;
                  }
                });
              },
              child: Icon(Icons.arrow_left,color: Colors.red,),
            ),
            SizedBox(
              width: 30,
            ),
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                setState(() {
                  if (myIndex == boyot.length-1) {
                    myIndex = 0;
                  } else {
                    myIndex++;
                  }
                });
              },
              child: Icon(Icons.arrow_right,color: Colors.red,),
            ),
          ],
        )
      ],
    ));
  }
}
