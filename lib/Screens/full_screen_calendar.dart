import 'package:calendart/main.dart';
import 'package:flutter/material.dart';
import 'package:calendart/NavBar/NavBar.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'package:calendart/Kontroller/kontroller.dart';

class FullScreenCalendar extends StatefulWidget {
  const FullScreenCalendar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FullScreenCalendarState();
}

class FullScreenCalendarState extends State<FullScreenCalendar> {
  List<Appointment> _appointmentDetails = <Appointment>[];

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
        Locale('en'),
        Locale('de'),
      ],
      locale: const Locale('de'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        //APP BAR 1
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => Saveta()));
                },
                icon: Icon(Icons.fullscreen_exit),
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
              appointmentDisplayCount: 6,
              appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
              monthCellStyle: MonthCellStyle(
                trailingDatesTextStyle:
                    TextStyle(fontSize: 15, color: Colors.grey.shade300),
                leadingDatesTextStyle:
                    TextStyle(fontSize: 15, color: Colors.grey.shade300),
              )),
        ),
      ),
    );
  }

  void calendarTapped(CalendarTapDetails calendarTapDetails) {
    if (calendarTapDetails.targetElement == CalendarElement.calendarCell) {
      setState(() {
        _appointmentDetails =
            calendarTapDetails.appointments!.cast<Appointment>();
      });
    }
  }

  _DataSource getCalendarDataSource() {
    final List<Appointment> appointments = <Appointment>[];


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
