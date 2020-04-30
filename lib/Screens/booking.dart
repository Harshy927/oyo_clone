import 'package:flutter/material.dart';
import 'package:oyo_clone/Screens/completed_booking.dart';
import 'package:oyo_clone/Screens/upcoming_booking.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Bookings'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Upcoming',
                icon: Icon(Icons.calendar_view_day),
              ),
              Tab(
                text: 'Completed',
                icon: Icon(Icons.check),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            UpcomingBooking(),
            CompletedBooking(),
          ],
        ),
      ),
    );
  }
}
