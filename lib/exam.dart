import 'dart:async';

import 'package:flutter/material.dart';

class examScreen extends StatelessWidget {
  const examScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExAmIn.ap',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
              .copyWith(secondary: Colors.red)),
      home: exam(),
    );
  }
}

class exam extends StatefulWidget {
  @override
  exam_begin createState() => exam_begin();
}

class exam_begin extends State<exam> {
  //String user = LoggedIn.sNummer;

  //quesrions
  List<String> Questions = [
    "Wat is het beste framework ?",
    "Wat is de mooiste kleur ?",
    "Leg uit waarom dit de mooiste kleur is ?"
  ];

  //timer
  static const countdownDuration = Duration(hours: 3);
  Duration _duration = Duration();
  Timer? timer;

  bool isCountdown = true;

  @override
  void initState() {
    super.initState();

    startTimer();
    reset();
  }

  void reset() {
    if (isCountdown) {
      setState(() => _duration = countdownDuration);
    } else {
      setState(() => _duration = Duration());
    }
  }

  void addTime() {
    final addSeconds = isCountdown ? -1 : 1;

    setState(() {
      final seconds = _duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        _duration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  double _height = 100;

  void onClick() {
    if (_height == 300) {
      setState(() {
        _height = 100.0;
      });
    } else {
      setState(() {
        _height = 300;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExAmIn.ap'),
      ),
      body: const Center(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned(
            left: 1470,
            bottom: 750,
            child: Text(
              'Intro Mobile',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.red,
                  fontSize: 35),
            ),
          ),
          const Positioned(
            left: 750,
            bottom: 700,
            child: Text(
              'Examenvragen :',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25),
            ),
          ),
          Positioned(
            left: 520,
            bottom: 500,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 227, 226, 226),
                ),
                child: Column(
                  children: [
                    //Text(user),
                    for (var i in Questions)
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 171, 169, 169),
                            ),
                            child: Text(
                              i,
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 35),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ]),
          ),
          const Positioned(
              left: 0,
              bottom: 0,
              child: Image(
                image: NetworkImage(
                    'https://images.squarespace-cdn.com/content/v1/5caf2df9797f74139d7958b8/1585236259323-8R0O3JC7O3LJ8IYQVOPP/APH_01.png'),
              )),
          Positioned(
            left: 25,
            bottom: 725,
            child: buildTime(),
          ),
        ],
      ),
    );
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(_duration.inHours);
    final minutes = twoDigits(_duration.inMinutes.remainder(60));
    final seconds = twoDigits(_duration.inSeconds.remainder(60));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: hours),
        const SizedBox(width: 5),
        buildTimeCard(time: minutes),
        const SizedBox(width: 5),
        buildTimeCard(time: seconds),
      ],
    );
  }

  Widget buildTimeCard({required String time}) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              time,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      );
}
