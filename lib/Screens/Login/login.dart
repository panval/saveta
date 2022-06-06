import 'package:calendart/Screens/Login/animated_gradient.dart';
import 'package:flutter/material.dart';
import 'package:calendart/main.dart';
import 'register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            const Positioned(child: AnimatedGradient()),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                    child: Image(
                      image: AssetImage(
                        'assets/images/flutterlogo.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'LOGIN',
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
                              builder: (context) => const Register(),
                            ),
                          );
                        },
                        child: const Text(
                          'Registrieren',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all(Colors.blue),
                            foregroundColor: MaterialStateProperty.all(
                                Colors.lightBlueAccent),
                            overlayColor:
                                MaterialStateProperty.all(Colors.white),
                            elevation: MaterialStateProperty.all(15),
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
                          'Login',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
