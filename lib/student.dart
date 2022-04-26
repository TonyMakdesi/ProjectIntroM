import 'package:flutter/material.dart';

import 'greeting.dart';
import 'main.dart';
/*// Firebase imports
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Firebase options

import 'firebase_options.dart';


Future<void> main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(StudentScreen());
}*/

class StudentScreen extends StatelessWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExAmIn.ap',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
              .copyWith(secondary: Colors.red)),
      home: stuLogIn(),
    );
  }
}

class stuLogIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<stuLogIn> {
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
            left: 445,
            bottom: 500,
            child: Text(
              'Login als student !',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 50),
            ),
          ),
          Positioned(
            left: 445,
            bottom: 450,
            child: Text(
              'Gebruik je s-nummer om in te loggen',
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
            right: 450,
            top: 400,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'S-',
              ),
            ),
          ),
          Positioned(
            left: 450,
            right: 450,
            top: 480,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GHFlutter()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Greeting()));
              },
              child: Icon(
                Icons.login_rounded,
                size: 40,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          const Positioned(
              left: 0,
              bottom: 0,
              child: Image(
                image: NetworkImage(
                    'https://images.squarespace-cdn.com/content/v1/5caf2df9797f74139d7958b8/1585236259323-8R0O3JC7O3LJ8IYQVOPP/APH_01.png'),
              )),
        ]));
  }
}
