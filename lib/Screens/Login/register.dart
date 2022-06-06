import 'package:calendart/Screens/Login/animated_gradient.dart';
import 'package:flutter/material.dart';
import 'package:calendart/main.dart';
import 'login.dart';


class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          child: Container(
            child: Stack(
              children: [
                Positioned(child: AnimatedGradient()),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        'Registrieren',
                        style: TextStyle(
                          color: Colors.teal.shade100,
                          fontSize: 20.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                        width: 150.0,
                        child: Divider(
                          color: Colors.teal.shade100,
                        ),
                      ),
                      const Card(
                        color: Colors.white10,
                        elevation: 20,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: Center(
                          child: TextField(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: 'Wie darf man dich nennen?')),
                        ),
                      ),
                      const Card(
                        color: Colors.white10,
                        elevation: 20,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: Center(
                          child: TextField(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: 'Email')),
                        ),
                      ),
                      const Card(
                        color: Colors.white10,
                        elevation: 20,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: Center(
                          child: TextField(
                              obscureText: true,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: 'Passwort')),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ),
                              );
                            },
                            child: const Text(
                              'Zurück',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(
                                    Colors.lightBlueAccent),
                                overlayColor:
                                    MaterialStateProperty.all(Colors.white),
                                elevation: MaterialStateProperty.all(10),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white12)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Saveta(),
                                ),
                              );
                            },
                            child: const Text(
                              'Registrieren',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
