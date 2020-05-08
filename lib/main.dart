import 'package:flutter/material.dart';
import './quiz_questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AnimalQuiz(),
    );
  }
}

class AnimalQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new AnimalQuizState();
  }
}

class AnimalQuizState extends State<AnimalQuiz>{
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("Multiple Choice Quiz"),
       backgroundColor: Colors.blue,
     ),


     body: new Container(
          margin: const EdgeInsets.all(15.0),
       child: new Column(
          
         crossAxisAlignment: CrossAxisAlignment.stretch,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[

           new MaterialButton(
             height: 50.0,
               color: Colors.green,
               onPressed: startQuiz,
               child: new Text("Start Quiz",
                 style: new TextStyle(
                     fontSize: 18.0,
                     color: Colors.white
                 ),)
           )
         ],
       ),
     ),


   );
  }

  void startQuiz(){
   setState(() {
     Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Quiz1()));
   });
  }
}