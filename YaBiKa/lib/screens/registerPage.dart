import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:yabika/screens/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(RegisterPage());
}

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();

  var score = 0;

  Future <void> kayitOl() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: t1.text, password: t2.text)
        .then((users) {
      Navigator.push(
          context, MaterialPageRoute(
        builder: (context)=> LoginPage(),
      )
      );
      FirebaseFirestore.instance
          .collection("users")
          .doc(t1.text)
          .set({"Usermail": t1.text,
        "Userpassword": t2.text,
        "Username": t3.text,
        "Usersurname" : t4.text,
        "Userscore" : score,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Kayıt Ol'),
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                },
              ),
            ),
            backgroundColor: Colors.deepPurple.shade400,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget> [
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      child: Divider(),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      child: TextField(
                        controller: t3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "İsim",
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      child: TextField(
                        controller: t4,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Soy İsim",
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      child: TextField(
                        controller: t1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "E-mail",
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      child: TextField(
                        controller: t2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Şifre",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: kayitOl,
                      child: const Text('Kayıt ol',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow.shade600,
                        minimumSize: const Size(200,40),
                        alignment: Alignment.center,
                      ),)
                  ],
                ),
              ),
            )
        )
    );
  }
}