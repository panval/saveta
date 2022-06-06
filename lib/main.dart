import 'package:flutter/material.dart';
import 'package:calendart/NavBar/NavBar.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'package:calendart/Kontroller/kontroller.dart';
import 'Screens/full_screen_calendar.dart';

void main() {
  //Behält die App in aufrechter position
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const Saveta()));
  //Behält die App in aufrechter Position
  runApp(const Saveta());
}

class Saveta extends StatefulWidget {
  const Saveta({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<Saveta> {
  String? _month, _year;

  late final CalendarTapCallback? onTap; //Betrifft onTap Auswahl im Kalender

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        //Sprachen
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        SfGlobalLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('de'),
      ],
      locale: const Locale('de'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        endDrawer: const NavBar(),
        //APP BAR 1
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FullScreenCalendar()));
                },
                icon: const Icon(Icons.fullscreen),
              ),
            ),
            title: Text(
              '・  ' '$_month $_year' '  ・',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.normal),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            iconTheme:
                const IconThemeData(color: Colors.black), //betrifft Icons
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 15,
              child: Scaffold(
                body: SfCalendar(
                  dataSource: getCalendarDataSource(),
                  onTap: calendarTapped,
                  cellBorderColor: Colors.white,
                  backgroundColor: Colors.white,
                  onViewChanged: viewChanged,
                  todayTextStyle: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                  ),
                  headerDateFormat: 'MMMM',
                  todayHighlightColor: Colors.transparent,
                  firstDayOfWeek: 1,
                  headerHeight: 0,
                  viewHeaderHeight: 15,
                  view: CalendarView.month,
                  monthViewSettings: MonthViewSettings(
                      dayFormat: 'E',
                      numberOfWeeksInView: 6,
                      appointmentDisplayCount: 3,
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment,
                      monthCellStyle: MonthCellStyle(
                        trailingDatesTextStyle: TextStyle(
                            fontSize: 15, color: Colors.grey.shade300),
                        leadingDatesTextStyle: TextStyle(
                            fontSize: 15, color: Colors.grey.shade300),
                      )),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.endDocked,
                floatingActionButton: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FullScreenCalendar()),
                    );
                  },
                ),
              ),
            ),
            const Expanded(
                flex: 10,
                child: Kontroller(),),
          ],
        ),
      ),
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
      color: const Color(0xfff527318),
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

  void viewChanged(ViewChangedDetails viewChangedDetails) {
    SchedulerBinding.instance!.addPostFrameCallback((Duration duration) {
      setState(() {
        _month = DateFormat('MMMM')
            .format(viewChangedDetails
                .visibleDates[viewChangedDetails.visibleDates.length ~/ 2])
            .toString();
        _year = DateFormat('yy')
            .format(viewChangedDetails
                .visibleDates[viewChangedDetails.visibleDates.length ~/ 2])
            .toString();
      });
    });
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}
