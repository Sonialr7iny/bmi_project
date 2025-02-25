import 'package:flutter/material.dart';

class BMIRresultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;

  BMIRresultScreen({
    required this.result,
    required this.isMale,
    required this.age,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text(
          'BMI Result'
        ),
        leading: IconButton(
          icon: Icon(
              Icons.keyboard_arrow_left
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale?'Male':'Female'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Weight : $result',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
