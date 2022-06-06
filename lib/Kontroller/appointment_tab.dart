import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:intl/intl.dart';


class AppointmentsTab extends StatefulWidget {
  const AppointmentsTab({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AppointmentsTabState();
}

class AppointmentsTabState extends State<AppointmentsTab> {


  final List<Appointment> _appointmentDetails = <Appointment>[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 40,
        ),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) =>
                  SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(bottom: MediaQuery
                          .of(context)
                          .viewInsets
                          .bottom),

                    ),
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
          color: Colors.red,
          child: ListView.separated(
            itemCount: _appointmentDetails.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: const EdgeInsets.all(2),
                  height: 60,
                  color: _appointmentDetails[index].color,
                  child: ListTile(
                    leading: Column(
                      children: <Widget>[
                        Text(
                          _appointmentDetails[index].isAllDay
                              ? ''
                              : DateFormat('hh:mm a').format(
                              _appointmentDetails[index].startTime),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              height: 1.7),
                        ),
                        Text(
                          _appointmentDetails[index].isAllDay
                              ? 'All day'
                              : '',
                          style: const TextStyle(
                              height: 0.5, color: Colors.black),
                        ),
                        Text(
                          _appointmentDetails[index].isAllDay
                              ? ''
                              : DateFormat('hh:mm a').format(
                              _appointmentDetails[index].endTime),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    title: Text(
                        _appointmentDetails[index].subject,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ));
            },
            separatorBuilder: (BuildContext context, int index) =>
            const Divider(
              height: 5,
            ),
          )),
    );
  }

  void calendarTapped(CalendarTapDetails calendarTapDetails) {
    if (calendarTapDetails.targetElement == CalendarElement.calendarCell) {
      setState(() {});
    }
  }

  _DataSource getCalendarDataSource() {
    final List<Appointment> appointments = <Appointment>[];
    appointments.add(Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(hours: 1)),
      subject: 'Meeting',
      color: const Color(0xfffb21f66),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(days: -2, hours: 4)),
      endTime: DateTime.now().add(const Duration(days: -2, hours: 5)),
      subject: 'Development Meeting   New York, U.S.A',
      color: const Color(0xfff527318),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(days: -2, hours: 3)),
      endTime: DateTime.now().add(const Duration(days: -2, hours: 4)),
      subject: 'Project Plan Meeting   Kuala Lumpur, Malaysia',
      color: const Color(0xfffb21f66),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(days: -2, hours: 2)),
      endTime: DateTime.now().add(const Duration(days: -2, hours: 3)),
      subject: 'Support - Web Meeting   Dubai, UAE',
      color: const Color(0xfff3282b8),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(days: -2, hours: 1)),
      endTime: DateTime.now().add(const Duration(days: -2, hours: 2)),
      subject: 'Project Release Meeting   Istanbul, Turkey',
      color: const Color(0xfff2a7886),
    ));
    appointments.add(Appointment(
        startTime: DateTime.now().add(const Duration(hours: 4, days: -1)),
        endTime: DateTime.now().add(const Duration(hours: 5, days: -1)),
        subject: 'Release Meeting',
        color: Colors.lightBlueAccent,
        isAllDay: true));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 2, days: -4)),
      endTime: DateTime.now().add(const Duration(hours: 4, days: -4)),
      subject: 'Performance check',
      color: Colors.amber,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 11, days: -2)),
      endTime: DateTime.now().add(const Duration(hours: 12, days: -2)),
      subject: 'Customer Meeting   Tokyo, Japan',
      color: const Color(0xffffb8d62),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 6, days: 2)),
      endTime: DateTime.now().add(const Duration(hours: 7, days: 2)),
      subject: 'Retrospective',
      color: Colors.purple,
    ));

    return _DataSource(appointments);
  }

}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}
