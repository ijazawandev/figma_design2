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
            padding: const EdgeInsets.only(top: 40, left: 10),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.deepPurple),
                  child: Image.asset('assets/backword.png',scale: 10,),
                ),
                SizedBox(width: 200,),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.deepPurple),
                  child: Image.asset('assets/safe.png',scale: 8,),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.deepPurple),
                  child: Image.asset('assets/upload.png',scale: 8,),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 420,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/flower.png',
                          scale: 6,
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
                        SizedBox(width: 120),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            'assets/mess.png',
                            scale: 8,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Kismas',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Text('Posted 1 hr ago')
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.cyan),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.sync,
                                size: 15,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text('Shop online')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 20,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.cyan),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.power_settings_new_rounded,
                                size: 15,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text('Best product')
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
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
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pinkAccent),
                        child: Center(
                            child: Text(
                          'Exchange',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
