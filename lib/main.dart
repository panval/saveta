import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Column(
            children: [
              // AppBar1
              Expanded(
                flex: 20,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 50,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'April',
                                style: TextStyle(
                                  fontFamily: 'Varela',
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.supervisor_account,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.menu,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Kalender
              Expanded(
                flex: 150,
                child: Container(
                  color: Colors.white,
                ),
              ),
              // AppBar2
              Expanded(
                flex: 20,
                child: Row(
                  children: const [
                    Expanded(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.view_comfy,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.list,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              // Kontext
              Expanded(
                flex: 110,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
