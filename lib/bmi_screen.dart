import 'dart:math';

import 'package:bmi/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  bool isMale=true;
  bool isColor=true;
  double height=120.0;
  int weight=40;
  int age=20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale=true;
                         isColor=true;
                       });
                     },
                     child: Container(
                       child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(image: AssetImage(
                               'assets/images/male.png',
                           ),
                             height: 80.0,
                             width: 80.0,
                           ),
                           SizedBox(
                             height: 15.0,
                           ),
                           Text(
                             'MALE',
                             style: TextStyle(
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold,
                               color: isColor ?Colors.white:Colors.black,
                             ),
                           ),
                         ],
                       ),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color:isMale?Colors.deepPurple[200]: Colors.grey[400],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                    width: 6.0,
                  ),
                 Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                          isColor=false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage(
                                    'assets/images/female.png'
                                ),
                              height: 80.0,
                              width: 80.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color:isColor?Colors.black:Colors.white,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:isMale? Colors.grey[400]:Colors.deepPurple[200],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 6.0
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value:height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            height=value;
                          });
                        },
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight--',
                                child: Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                mini: true,
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight++',
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                onPressed: (){
                                  setState(() {
                                    if(age>1) {
                                      age--;
                                    }
                                    else{
                                      age=1;
                                    }
                                  });
                                },
                                heroTag: 'age--',
                                child: Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                mini: true,
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age++',
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.deepPurple[500],
            child: MaterialButton(
              height: 50.0,
              onPressed: (){
                double result=weight/pow(height/100, 2);
                print(result.round());

                Navigator.push(
                  context,
                MaterialPageRoute(
                  builder: (context) => BMIRresultScreen(
                    age: age,
                    result: result.round(),
                    isMale: isMale,
                  ),
                ),
                );
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
          ),
          
        ],
      ),
    );
  }
}
