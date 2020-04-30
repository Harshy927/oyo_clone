
import 'package:flutter/material.dart';
import 'package:oyo_clone/widget/hotel_item.dart';

class UpcomingBooking extends StatefulWidget {
  @override
  _UpcomingBookingState createState() => _UpcomingBookingState();
}

class _UpcomingBookingState extends State<UpcomingBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return HotelItem(
            id: 'h1',
            title: 'Hotel Taj Residency',
            imageUrl:
                'https://www.rd.com/wp-content/uploads/2017/08/02-World%E2%80%99s-Most-Outrageous-Luxury-Hotels-and-Resorts-via-mardanpalace.com_-760x506.jpg',
            time: 'Apr 30',
            city: 'Mumbai',
            guest: 3,
          );
        },
        itemCount: 3,
      ),
    );
  }
}