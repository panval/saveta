import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 3,
        ),
        Card(
          elevation: 5,
          shadowColor: Colors.black,
          child: ListTile(
            leading: const SwitchToggle(),
            title: const Center(
              child: Text(
                'Sabrina Cerny',
              ),
            ),
            trailing: ElevatedButton(
              child: const Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: null,
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.teal),
              ),
            ),
          ),
        ),
        Card(
          elevation: 5,
          shadowColor: Colors.black,
          child: ListTile(
            leading: const SwitchToggle(),
            title: const Center(
              child: Text(
                'Katharina Gneihs',
              ),
            ),
            trailing: ElevatedButton(
              child: const Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
              ),
            ),
          ),
        ),
        Container(
          height: 20,
          color: Colors.transparent,
          child: const Center(
            child: Text(
              'Superbuddy',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          elevation: 5,
          shadowColor: Colors.black,
          child: ListTile(
            leading: const SwitchToggle(),
            title: const Center(
              child: Text(
                'Philip Truck',
              ),
            ),
            trailing: ElevatedButton(
              child: const Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              onPressed: null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
              ),
            ),
          ),
        ),
        const Card(
          elevation: 0,
          child: ListTile(),
        ),
      ],
    );
  }
}

/// stateful widget that the main application instantiates
class SwitchToggle extends StatefulWidget {
  const SwitchToggle({Key? key}) : super(key: key);

  @override
  State<SwitchToggle> createState() => _MyStatefulWidgetState();
}

/// private State class that goes with MyStatefulWidget
class _MyStatefulWidgetState extends State<SwitchToggle> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Colors.teal,
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
    );
  }
}
