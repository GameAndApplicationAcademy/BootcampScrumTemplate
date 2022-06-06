import 'package:flutter/material.dart';
import 'package:yabika/screens/chooseLessonPage.dart';
import 'package:yabika/screens/leaderboard.dart';
import 'package:yabika/screens/mainPage.dart';
import 'package:yabika/screens/questsPage.dart';


void main() {
  runApp(EndGamePage());
}

class EndGamePage extends StatelessWidget {
  const EndGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        backgroundColor: Colors.deepPurple.shade100,
        body: Center(
          child: Container(
            width: 800,
            height: 800,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 150,),

                Text("Testi Bitirdiniz.Tebrikler!",
                  style: TextStyle(
                      height: 5, fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),

                SizedBox( height: 40),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 12,
                      primary: Colors.yellow.shade700,
                      onPrimary: Colors.white,
                      minimumSize: Size(240,45),
                    ),
                    child: Text("Liderlik Tablosu"),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MaxTable4()));
                    }),

                /* SizedBox(height: 100),
                ElevatedButton(
                  child: Text("3 Doğru"), onPressed: () {}, style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 12,
                    onPrimary: Colors.white,
                    minimumSize: Size(200,45),
                    primary: Colors.green
                ),),
                SizedBox(height: 30),
                ElevatedButton(child: Text("2 Yanlış"), onPressed: () {}, style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 12,
                    onPrimary: Colors.white,
                    minimumSize: Size(200,45),
                    primary: Colors.red,
                ),),
                SizedBox(height: 30),
                ElevatedButton(
                  child: Text("3 Boş"), onPressed: () {}, style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 12,
                    onPrimary: Colors.white,
                    minimumSize: Size(200,45),
                    primary: Colors.grey
                ),),
                SizedBox(height: 70),*/
                SizedBox( height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 12,
                      primary: Colors.deepPurple.shade700,
                      onPrimary: Colors.white,
                      minimumSize: Size(240,45),
                    ),
                    child: Text("Tekrar Oyna"),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ChooseLessonPage()));
                    }),
                SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 12,
                      onPrimary: Colors.white,
                      primary: Colors.red.shade600,
                      minimumSize: Size(240,45),
                    ),
                    child: Text("Anasayfa"),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}