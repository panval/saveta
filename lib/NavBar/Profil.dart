import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
          title: const Text(
            'Profil',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(),
      ),
    );
  }
}