import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yabika/screens/endGamePage.dart';
import 'package:yabika/screens/firestoreservice.dart';

import 'lessonsPage.dart';

class SciencePage extends StatefulWidget {
  const SciencePage({Key? key}) : super(key: key);


  @override
  State<SciencePage> createState() => _SciencePageState();
}

class _SciencePageState extends State<SciencePage> {
  final firestore=FirestoreService();

  //late Timer _timer;
  //int counter = 300;
  //void _startTimer(){

  // _timer = Timer.periodic(Duration(seconds: 1), (timer) {
  // setState(() {
  // if(counter>0) {
  // counter--;
  //}
  //else {
  // _timer.cancel();
  //}
  //});
  //});
  //}

  @override
  Widget build(BuildContext context) {
    //_startTimer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade400,
        title: Text('1.Soru'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            //Text("$counter"),
            Positioned(
              top: 10,
              left: 25,
              child: Image.asset(
                'images/fiz1.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 260,
              left: 280,
              child: Text(
                '2017 LYS-2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage2()));
              }, child: Text('A'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage2()));
              }, child: Text('B'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage2()));
              }, child: Text('C'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage2()));
              }, child: Text('D'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage2()));
                firestore.updateData( );
              }, child: Text('E'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage2()));
              }, child: Text('BOŞ'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
          ],
        ),

      ),
    );
  }
}

class SciencePage2 extends StatefulWidget {
  const SciencePage2({Key? key}) : super(key: key);

  @override
  State<SciencePage2> createState() => _SciencePage2State();
}

class _SciencePage2State extends State<SciencePage2> {
  final firestore=FirestoreService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade400,
        title: Text('2.Soru'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 25,
              child: Image.asset(
                'images/fiz2.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 260,
              left: 295,
              child: Text(
                '2017 LYS-2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage3()));
              }, child: Text('A'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage3()));
                firestore.updateData( );
              }, child: Text('B'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage3()));
              }, child: Text('C'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage3()));
              }, child: Text('D'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage3()));
              }, child: Text('E'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage3()));
              }, child: Text('BOŞ'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SciencePage3 extends StatefulWidget {
  const SciencePage3({Key? key}) : super(key: key);

  @override
  State<SciencePage3> createState() => _SciencePage3State();
}

class _SciencePage3State extends State<SciencePage3> {
  final firestore=FirestoreService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade400,
        title: Text('3.Soru'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 25,
              child: Image.asset(
                'images/kim1.jpeg',
                width: 350,
                height: 310,
              ),
            ),
            Positioned(
              top: 225,
              left: 290,
              child: Text(
                '2017 LYS-2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage4()));
              }, child: Text('A'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 330,
              left: 240,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage4()));
              }, child: Text('B'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 410,
              left: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage4()));
              }, child: Text('C'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 410,
              left: 170,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage4()));
              }, child: Text('D'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 410,
              left: 290,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage4()));
                firestore.updateData( );
              }, child: Text('E'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
            Positioned(
              top: 510,
              left: 171,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage4()));
              }, child: Text('BOŞ'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SciencePage4 extends StatefulWidget {
  const SciencePage4({Key? key}) : super(key: key);

  @override
  State<SciencePage4> createState() => _SciencePage4State();
}

class _SciencePage4State extends State<SciencePage4> {
  final firestore=FirestoreService();
  @override
  Widget build(BuildContext context) {return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.deepPurple.shade400,
      title: Text('4.Soru'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
      ],
    ),
    body: Center(
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 25,
            child: Image.asset(
              'images/kim2.jpeg',
              width: 350,
              height: 310,
            ),
          ),
          Positioned(
            top: 290,
            left: 295,
            child: Text(
              '2017 LYS-2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: 100,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage5()));
              firestore.updateData( );
            }, child: Text('A'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 330,
            left: 240,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage5()));
            }, child: Text('B'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 410,
            left: 50,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage5()));
            }, child: Text('C'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 410,
            left: 170,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage5()));
            }, child: Text('D'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 410,
            left: 290,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage5()));
            }, child: Text('E'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 510,
            left: 171,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SciencePage5()));
            }, child: Text('BOŞ'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
        ],
      ),
    ),
  );
  }
}

class SciencePage5 extends StatefulWidget {
  const SciencePage5({Key? key}) : super(key: key);

  @override
  State<SciencePage5> createState() => _SciencePage5State();
}

class _SciencePage5State extends State<SciencePage5> {
  final firestore=FirestoreService();
  @override
  Widget build(BuildContext context) {return Scaffold(
    appBar: AppBar(
      backgroundColor:Colors.deepPurple.shade400,
      title: Text('5.Soru'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
      ],
    ),
    body: Center(
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 25,
            child: Image.asset(
              'images/biy1.jpeg',
              width: 350,
              height: 310,
            ),
          ),
          Positioned(
            top: 280,
            left: 295,
            child: Text(
              '2017 LYS-2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: 100,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('A'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 330,
            left: 240,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('B'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 410,
            left: 50,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
              firestore.updateData( );
            }, child: Text('C'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 410,
            left: 170,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('D'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 410,
            left: 290,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('E'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
          Positioned(
            top: 510,
            left: 171,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EndGamePage()));
            }, child: Text('BOŞ'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple.shade400),
            ),
          ),
        ],
      ),
    ),
  );
  }
}
