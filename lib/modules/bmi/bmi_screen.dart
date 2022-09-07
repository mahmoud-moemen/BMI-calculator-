import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/modules/bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen ({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreen();
}

class _BmiScreen extends State<BmiScreen> {

  bool   isMale =true;
  double height =120.0;
  int    weight =40;
  int    age    =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator ',
        ),
      ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(

                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                          isMale=true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                                image:AssetImage('assets/images/male.png'),
                                height: 90.0,
                                width: 90.0,

                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale? Colors.blue: Colors.grey[400],

                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState((){
                          isMale=false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                              image:AssetImage('assets/images/female.png') ,
                              width: 90.0,
                              height: 90.0,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale? Colors.blue: Colors.grey[400],
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
                horizontal: 20.0,
              ),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400]
                ) ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline:TextBaseline.alphabetic ,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(width: 5.0,),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                    Slider(
                      value:height ,
                      max: 220.0,
                      min: 80.0,
                      onChanged:(value)
                      {
                       setState((){
                         height=value;
                       });
                      } ,),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed:()
                                {
                                  setState((){
                                    weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                mini: true,
                                child: Icon(
                                    Icons.remove
                                ) ,
                              ),
                              FloatingActionButton(
                                onPressed:()
                                {
                                  setState(()
                                  {
                                    weight++;
                                  }
                                  );
                                },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ) ,
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
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
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
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed:()
                                {
                                  setState(()
                                  {
                                    age--;
                                  }
                                  );
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(
                                    Icons.remove
                                ) ,
                              ),
                              FloatingActionButton(
                                onPressed:()
                                {
                                  setState((){
                                    age++;
                                  });

                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ) ,
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
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue[400]
            ) ,

             margin: EdgeInsets.all(05.0),
             width: double.infinity,

            child: MaterialButton(
              onPressed:()
              {
                double result=weight/pow(height/100,2);
                print(result.round());

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (Context)=>BMIResultScreen(
                        age: age,
                        isMale: isMale,
                        result:result.round() ,
                      ),
                  ),
                );
              },
              // height: 50.0,
              child:Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white
                ),

                ),
              ) ,),

        ],
      ),
    );
  }
}
