import 'package:flutter/material.dart';

class Buddies extends StatelessWidget {
  const Buddies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
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
            'Buddies',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.person_add),
        ),
      ),
    );
  }
}
