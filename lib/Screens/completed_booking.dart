import 'package:flutter/material.dart';
import 'package:oyo_clone/widget/hotel_item.dart';

class CompletedBooking extends StatefulWidget {
  @override
  _CompletedBookingState createState() => _CompletedBookingState();
}

class _CompletedBookingState extends State<CompletedBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return HotelItem(
            id: 'h2',
            title: 'Hotel Novotel Residency',
            imageUrl:
                'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/2/26/5152118/5152118_a80c356f-45bc-49aa-b981-0fd9baa13272_851_851.jpg',
            time: 'Apr 20',
            city: 'Delhi',
            guest: 4,
          );
        },
        itemCount: 3,
      ),
    );
  }
}