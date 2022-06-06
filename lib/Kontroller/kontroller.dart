import 'package:flutter/material.dart';
import 'package:calendart/Kontroller/Tab2.dart';
import 'package:calendart/Kontroller/appointment_tab.dart';
import 'package:calendart/Kontroller/Tab1.dart';

class Kontroller extends StatefulWidget {
  const Kontroller({Key? key}) : super(key: key);

  @override
  _Kontroller createState() => _Kontroller();
}

class _Kontroller extends State<Kontroller>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(0.00),
        child: Column(
          children: [
            // give the tab bar a height [can change height to preferred height]
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: TabBar(
                indicatorColor: Colors.black,
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.calendar_month_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.apartment_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.ios_share_rounded),
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  //Tab1
                  AppointmentsTab(),
                  //Tab2
                  Tab2(),
                  //Tab3
                  Tab1(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
