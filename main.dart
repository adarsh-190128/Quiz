// import 'package:demo/Question.dart';
import 'package:flutter/material.dart';
void main() => runApp(Quizzler());
class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(padding: EdgeInsets.symmetric( horizontal: 10.0),
          child: Quizpage(),
          ),

        ),
      ),
    );
  }
}
class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  List<Icon> ScoreKeeper=[ ];
  List<String> Questions=[

    'The difference between the squares of two consecutive odd integers is always divisible by',
    'If p and q are the two digits of the number 653pq such that this number is divisible by 80, then p+q is equal to ',
    'A 3-digit number 4p3 is added to another 3-digit number 984 to give the four-digit number 13q7, which is divisible by 11. Then, (p + q) is ',
    'What should be the maximum value of Q in the following equation? 5P9 – 7Q2 + 9R6 = 823'
  ];
  List<List<String>> options=[['5','6','7','None'],['3','6','7','8'],['2','3','4','6'],['10','11','12','15'],['5','6','7','9']];
  List<String> answers=['6','8','2','10','7'];
  int questionnubmer=1;
  // Question q1=Question(questionNumber: 1,questionText: 'How many of the following numbers are divisible by 3 but not by 9. 4320, 2343, 3474, 4131, 5286, 5340, 6336, 7347, 8115, 9276',answer: '6',options: ['5','6','7','None']);


  @override


  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: -1,
          child:
        Padding(padding:
        EdgeInsets.only(left: 3,top: 50),
          child: Text('Total Questions:-30',
          style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          ),
          ),

        ),
        ),
         Expanded(


          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Center(
              child: Text('Question :- $questionnubmer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Padding(

          padding: const EdgeInsets.only(top: 0),
          child: SizedBox(height: 3,width: 30,
          child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
          ),
        ),
         Expanded(
        flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                Questions[questionnubmer-1],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: -1,
          child:Padding(padding:
          EdgeInsets.all(12),
            child:  FlatButton(onPressed: (){
              String correctans = answers[questionnubmer-1];
              if(correctans == options[questionnubmer-1][0]){
                print('CORRECT');
              }
              else{
                print('WRONG');
              }
              setState((){
                ScoreKeeper.add(Icon(Icons.check,color: Colors.green,));
                questionnubmer++;
              });
            },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                child: Padding(padding:
                EdgeInsets.all(10),
                  child: Text(options[questionnubmer-1][0],
                    style: TextStyle(color: Colors.black,fontSize: 25,),
                  ),
                )
            ),
          ),
        ),
        Expanded(
          flex: -1,
          child:Padding(padding:
          EdgeInsets.all(12),
            child:  FlatButton(onPressed: (){
              String correctans = answers[questionnubmer-1];
              if(correctans == options[questionnubmer-1][1]){
                print('CORRECT');
              }
              else{
                print('WRONG');
              }
              setState((){
                ScoreKeeper.add(Icon(Icons.check,color: Colors.green,));
                questionnubmer++;
              }
              );
            },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                child: Padding(padding:
                EdgeInsets.all(10),
                  child: Text(options[questionnubmer-1][1],
                    style: TextStyle(color: Colors.black,fontSize: 25,),
                  ),
                )
            ),
          ),
        ), Expanded(
          flex: -1,
          child:Padding(padding:
          EdgeInsets.all(12),
            child:  FlatButton(onPressed: (){
              String correctans = answers[questionnubmer-1];
              if(correctans == options[questionnubmer-1][2]){
                print('CORRECT');
              }
              else{
                print('WRONG');
              }
              setState((){
                ScoreKeeper.add(Icon(Icons.close,color: Colors.red,));
                questionnubmer++;
              });
            },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                child: Padding(padding:
                EdgeInsets.all(10),
                  child: Text(options[questionnubmer-1][2],
                    style: TextStyle(color: Colors.black,fontSize: 25,),
                  ),
                )
            ),
          ),
        ), Expanded(
          flex: -1,
          child:Padding(padding:
          EdgeInsets.all(12),
            child:  FlatButton(onPressed: (){
              String correctans = answers[questionnubmer-1];
              if(correctans == options[questionnubmer-1][3]){
                print('CORRECT');
              }
              else{
                print('WRONG');
              }
              setState((){
                ScoreKeeper.add(Icon(Icons.check,color: Colors.green,));
                questionnubmer++;

              });
            },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                child: Padding(padding:
                EdgeInsets.all(10),
                  child: Text(options[questionnubmer-1][3],
                    style: TextStyle(color: Colors.black,fontSize: 25,),
                  ),
                ),
            ),
          ),
        ),
        Row(
          children: ScoreKeeper,
        ),

      ],
    );
  }
}

