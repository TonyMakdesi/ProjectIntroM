import 'package:demo_project_intro/student.dart';
import 'package:flutter/material.dart';

import 'exam.dart';

class Greeting extends StatelessWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExAmIn.ap',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
              .copyWith(secondary: Colors.red)),
      home: BeginEx(),
    );
  }
}

class BeginEx extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Start();
}

class Start extends State<BeginEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExAmIn.ap'),
      ),
      body: const sPage(),
    );
  }
}

class sPage extends StatelessWidget {
  const sPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Stack(fit: StackFit.expand, children: <Widget>[
          Positioned(
            left: 600,
            bottom: 500,
            child: Text(
              'Intro Mobile Examen !',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 50),
            ),
          ),
          Positioned(
            left: 300,
            bottom: 450,
            child: Text(
              'Het examen bestaat uit één onderdeel dat meerder oefeningen bevat. Lees de oefeningen goed en zorg ervoor dat je ze correct maakt.\n'
              'Je hebt 3u de tijd om je examen te maken en in te dienen. Zorg ervoor dat je op tijd je examen indient !',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20),
            ),
          ),
          Positioned(
            left: 450,
            bottom: 200,
            width: 200,
            height: 50,
            child: FloatingActionButton(
              heroTag: 'backMAin',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StudentScreen()));
              },
              child: const Icon(
                Icons.arrow_back,
                size: 40,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Positioned(
            left: 1070,
            bottom: 200,
            width: 200,
            height: 50,
            child: FloatingActionButton(
              heroTag: 'login',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const examScreen()));
              },
              child: Icon(
                Icons.run_circle_sharp,
                size: 40,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ]));
  }
}
