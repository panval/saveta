import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        GridView.count(
          shrinkWrap: true,
          childAspectRatio: (1 / .4),
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            TextButton(
              child: Text('Tag'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                primary: Colors.white,
                shadowColor: Colors.teal,
                elevation: 5,
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Früh'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
                primary: Colors.white,
                shadowColor: Colors.teal,
                elevation: 5,
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Spät'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange,
                primary: Colors.white,
                shadowColor: Colors.teal,
                elevation: 5,
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Nacht'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                primary: Colors.white,
                shadowColor: Colors.teal,
                elevation: 5,
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Fortbildung'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink,
                primary: Colors.white,
                shadowColor: Colors.teal,
                elevation: 5,
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text('NoGo'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                primary: Colors.white,
                shadowColor: Colors.teal,
                elevation: 5,
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text('+'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey,
                primary: Colors.white,
                shadowColor: Colors.teal,
                elevation: 5,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
