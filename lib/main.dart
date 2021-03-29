import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: BlueScreen(),
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}

class BlueScreen extends StatefulWidget {
  @override
  _BlueScreenState createState() => _BlueScreenState();
}

class _BlueScreenState extends State<BlueScreen> {
  int randomnumber = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        children: [
          SizedBox(height: 7),
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.grey[100],
            backgroundImage: NetworkImage(
                'https://cdn3.iconfinder.com/data/icons/emotion-30/32/cool-512.png'),
          ),
          Text(
            'User Name',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: Icon(Icons.call, color: Colors.orange),
              title: Text(
                '089768498765',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: Icon(Icons.mail, color: Colors.orange),
              title: Text(
                'kelvin345@gmail.com',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              title: Text(
                'Modal Saya :',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              title: Text(
                'Total Saldo :',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
