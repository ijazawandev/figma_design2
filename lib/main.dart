import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;
  final images = [
    'image (1)',
    'image (2)',
    'image (3)',
    'image (4)',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Text(
            index.toString(),
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Positioned(
            bottom: height * 0.48,
            child: SizedBox(
              height: height * 0.52,
              width: width,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, i) => Image.asset(
                  'assets/${images[i]}.png',
                  fit: BoxFit.scaleDown,
                ),
                onPageChanged: (i) {
                  setState(() => index = i + 1);
                  debugPrint('index: $index');
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.06,
              vertical: height * 0.06,
            ),
            child: Row(
              children: [
                Container(
                  height: height * .05,
                  width: width * .1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff333848),
                  ),
                  child: Image.asset(
                    'assets/backword.png',
                    scale: 2,
                  ),
                ),
                const Spacer(),
                Container(
                  height: height * .05,
                  width: width * .1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff333848),
                  ),
                  child: Image.asset('assets/safe.png', scale: 1.8),
                ),
                SizedBox(width: width * .06),
                Container(
                  height: height * .05,
                  width: width * .1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff333848),
                  ),
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
              height: height * 0.50,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Container(
                          height: 5,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(210),
                              color: Color(0xffe4e4e4)),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: height * 0.065,
                          width: height * 0.065,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xfff0eaea),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: height * 0.06,
                                width: height * 0.06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/leaf.png',
                                  scale: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            const Text(
                              'Design house',
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/star (1).png',
                                  scale: 2,
                                ),
                                SizedBox(width: width * .01),
                                const Text('4.9'),
                                SizedBox(
                                  width: width * .01,
                                ),
                                const Text('(127)')
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: height * .045,
                          width: width * .2,
                          decoration: BoxDecoration(
                              color: const Color(0xff152432),
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            'assets/message (2).png',
                            scale: 2,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * .044,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Kismas',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: width * .48,
                        ),
                        const Text('Posted 1 hr ago')
                      ],
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.02, vertical: height * .01),
                          height: height * .04,
                          width: width * .3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xffb4efe0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.sync,
                                size: 15,
                              ),
                              SizedBox(width: width * .03),
                              const Text('Shop online')
                            ],
                          ),
                        ),
                        SizedBox(width: width * .05),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.02, vertical: height * .01),
                          height: height * .04,
                          width: width * .3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xffc5e1fa)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.power_settings_new_rounded,
                                size: 15,
                              ),
                              SizedBox(
                                width: width * .02,
                              ),
                              const Text('Best product')
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    const Text(
                      'Description',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.04),
                      child: const ReadMoreText(
                        'Goldy lamp in an ideal solution for creating a cozy atmosphere in your home.This stylish and functional lighting element provides comfortable. The Goldy lamp features a sleek and modern design that effortlessly complements any interior decor style. ',
                        style: TextStyle(fontSize: 18),
                        trimMode: TrimMode.Line,
                        trimLines: 3,
                        trimExpandedText: 'Read less',
                        trimCollapsedText: 'Read more',
                        moreStyle: TextStyle(fontWeight: FontWeight.bold),
                        lessStyle: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: height * .01),
                    Center(
                      child: Container(
                        height: height * .07,
                        width: width * 1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xfff371d2),
                              Color(0xffcd71ee),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Exchange',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
