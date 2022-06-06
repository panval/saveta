import 'package:calendart/NavBar/Datenschutzerklaereung.dart';
import 'package:calendart/NavBar/Einstellungen.dart';
import 'package:flutter/material.dart';
import 'Buddies.dart';
import 'Profil.dart';
import '../Screens/Login/login.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          //Oben
          const UserAccountsDrawerHeader(
            accountName: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  'Hi Valentin!',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            accountEmail: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  'valentinpanda@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.black),
          ),
          //Abstandhalter 2
          const ListTile(),
          //Abstandhalter2
          const ListTile(),
          ListTile(
            tileColor: Colors.grey,
            trailing: const Icon(
              Icons.login,
              color: Colors.black,
              size: 30,
            ),
            title: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Saved for Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
              );
            },
          ),
          ListTile(
            trailing: const Icon(
              Icons.person,
              color: Colors.black,
              size: 30,
            ),
            title: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Profil',
                style: TextStyle(fontSize: 18),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profil(),
                ),
              );
            },
          ),
          //Buddies
          ListTile(
            trailing: const Icon(
              Icons.supervisor_account,
              color: Colors.black,
              size: 30,
            ),
            title: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Buddies',
                style: TextStyle(fontSize: 18),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Buddies(),
                ),
              );
            },
          ),
          //Einstellungen
          ListTile(
            trailing: const Icon(
              Icons.settings,
              color: Colors.black,
              size: 30,
            ),
            title: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Einstellungen',
                style: TextStyle(fontSize: 18),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Einstellungen(),
                ),
              );
            },
          ),
          //Datenschutzerklärung
          ListTile(
            trailing: const Icon(
              Icons.insert_drive_file,
              color: Colors.black,
              size: 25,
            ),
            title: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Datenschutzerklärung',
                style: TextStyle(fontSize: 16),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Datenschutzerklaerung(),
                ),
              );
            },
          ),
          //Abstandhalter
          const ListTile(),
          //Impresum
          Container(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.all(30),
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '© 2022 - 2023\nValentin Panda\n\nSturzgasse 29/7\n1150 Vienna\nAustria\n\n VAT-ID AUT123456789',
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
