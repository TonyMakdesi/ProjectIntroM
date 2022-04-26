import 'package:flutter/material.dart';

import 'main.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExAmIn.ap',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
              .copyWith(secondary: Colors.red)),
      home: admLogIn(),
    );
  }
}

class admLogIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<admLogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExAmIn.ap'),
      ),
      body: const aPage(),
    );
  }
}

class aPage extends StatelessWidget {
  const aPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Stack(fit: StackFit.expand, children: <Widget>[
          Positioned(
            left: 445,
            bottom: 500,
            child: Text(
              'Login als admin !',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 50),
            ),
          ),
          Positioned(
            left: 450,
            right: 450,
            top: 400,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your username or email',
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
              onPressed: () {},
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
