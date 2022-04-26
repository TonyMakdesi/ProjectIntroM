import 'package:demo_project_intro/student.dart';
import 'package:flutter/material.dart';

import 'admin.dart';

void main() {
  runApp(const GHFlutterApp());
}

class GHFlutterApp extends StatelessWidget {
  const GHFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExAmIn.ap',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
              .copyWith(secondary: Colors.red)),
      home: const GHFlutter(),
    );
  }
}

class GHFlutter extends StatefulWidget {
  const GHFlutter({Key? key}) : super(key: key);

  @override
  _GHFlutterState createState() => _GHFlutterState();
}

class _GHFlutterState extends State<GHFlutter> {
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
            left: 620,
            bottom: 500,
            child: Text(
              'Welcome In ExAmIn !',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 50),
            ),
          ),
          Positioned(
            left: 500,
            bottom: 270,
            width: 250,
            height: 50,
            child: FloatingActionButton(
              heroTag: 'admin',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdminScreen()));
              },
              child: const Icon(
                Icons.admin_panel_settings_outlined,
                size: 40,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Positioned(
            bottom: 270,
            right: 500,
            width: 250,
            height: 50,
            child: FloatingActionButton(
              heroTag: 'student',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StudentScreen()));
              },
              child: const Icon(
                Icons.account_box_rounded,
                size: 40,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          // Add more floating buttons if you want
          // There is no limit
          const Positioned(
              left: 0,
              bottom: 0,
              child: Image(
                image: NetworkImage(
                    'https://images.squarespace-cdn.com/content/v1/5caf2df9797f74139d7958b8/1585236259323-8R0O3JC7O3LJ8IYQVOPP/APH_01.png'),
              )),
        ],
      ),
    );
  }
}
