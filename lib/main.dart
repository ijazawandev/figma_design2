import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return MaterialApp(
        home: Scaffold(
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/kismas.png',

                  // fit: BoxFit.fitHeight,
                  // scale: 0.7,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.1, left: 10),
                child: Row(
                  children: [
                    Container(
                      height: height*.05,
                      width: width*.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff333848),
                      ),
                      child: Image.asset(
                        'assets/backword.png',
                        scale: 2,
                      ),
                    ),
                    SizedBox(width: width * .5),
                    Container(
                      height: height*.05,
                      width: width*.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff333848)),
                      child: Image.asset('assets/safe.png', scale: 1.8),
                    ),
                    SizedBox(width: width * .06),
                    Container(
                      height: height*.05,
                      width: width*.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff333848)),
                      child: Image.asset(
                        'assets/upload.png',
                        scale: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height * 0.5,
                  width: double.infinity,
                  color: Colors.white,
                   padding: const EdgeInsets.only(left: 10,right: 10),
                  // margin: const EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Container(height: 40,width: 40,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),color: Color(0xfff5f3f3)
                        ),
                        child: Image.asset('assets/pta.png'),
                        ),
                          Column(
                            children: [
                              Text(
                                'Design house',
                                style: TextStyle(fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/star.png',
                                    scale: 8,
                                  ),
                                  Text('4.9'),
                                  Text('(127)')
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: width * 0.32),
                          Container(
                            height: height * .045,
                            width: width*.2,
                            decoration: BoxDecoration(
                                color: Color(0xff152432),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              'assets/mess.png',
                              scale: 2,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height*.05,
                      ),
                      Row(
                        children: [
                          Text(
                            'Kismas',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: width*.52,
                          ),
                          Text('Posted 1 hr ago')
                        ],
                      ),
                      SizedBox(
                        height: height*.03,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height*.04,
                            width: width*.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffb4efe0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.sync,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: width*.03
                                ),
                                Text('Shop online')
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width*.05
                          ),
                          Container(
                            height: height*.04,
                            width: width*.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffc5e1fa)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.power_settings_new_rounded,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: width*.02,
                                ),
                                Text('Best product')
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height*.02,
                      ),
                      Text(
                        'Description',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              'Goldy lamp in an ideal solution for creating\n'
                                  'acozy atmosphere in your home.This\n'
                                  'stylish and functional ligting element\n'
                                  'provides comfortable.',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height*.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height*.07,
                          width: width*1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffd971e6)),
                          child: Center(
                              child: Text(
                                'Exchange',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
