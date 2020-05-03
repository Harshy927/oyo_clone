import 'package:flutter/material.dart';
import 'package:oyo_clone/Screens/completed_booking.dart';
import 'package:oyo_clone/Screens/upcoming_booking.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  int _currentIndex = 0;
  var svalue = 5.0;
  bool chk1 = false;
  bool chk2 = false;
  bool chk3 = false;
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedFontSize: 15,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              title: Text('Price'),
              backgroundColor: Colors.white70,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.filter_list),
              title: Text('Filter'),
              backgroundColor: Colors.white70,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sort),
              title: Text('Sort'),
              backgroundColor: Colors.white70,
            ),
          ],
          onTap: (int index) {
            if (index == 1) {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(1000.0, 1000.0, 750.0, 750.0),
                items: <PopupMenuItem<String>>[
                  PopupMenuItem<String>(
                      child: Row(
                    children: <Widget>[
                      Checkbox(
                        value: chk1,
                        onChanged: (bool value) {
                          setState(() {
                            chk1 = value;
                          });
                        },
                      ),
                      Text('PAY AT HOTEL'),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: <Widget>[
                      Checkbox(
                        value: chk2,
                        onChanged: (bool value) {
                          setState(() {
                            chk2 = value;
                          });
                        },
                      ),
                      Text('HIGHEST RATED OYO'),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: <Widget>[
                      Checkbox(
                        value: chk3,
                        onChanged: (bool value) {
                          setState(() {
                            chk3 = value;
                          });
                        },
                      ),
                      Text('PAY AT HOTEL'),
                    ],
                  ))
                ],
                elevation: 8.0,
              );
            }
            if (index == 2) {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(1000.0, 1000.0, 0.0, 0.0),
                items: <PopupMenuItem<String>>[
                  PopupMenuItem<String>(child: const Text('Price high to low')),
                  PopupMenuItem<String>(child: const Text('Price low to high')),
                  PopupMenuItem<String>(child: const Text('Ratings'))
                ],
                elevation: 8.0,
              );
            }
            if (index == 0) {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(1000.0, 1000.0, 500.0, 500.0),
                items: <PopupMenuItem<String>>[
                  PopupMenuItem<String>(child: const Text(' INR 1000-3000')),
                  PopupMenuItem<String>(child: const Text(' INR 3000-5000')),
                  PopupMenuItem<String>(
                      child: const Text(' INR 5000 and above')),
                ],
              );
            }

//              await showMenu<String>(
//            context: context,
//            position: RelativeRect.fromLTRB(1000.0, 1000.0, 0.0, 0.0),
//            items: <PopupMenuItem<String>>[
//            new PopupMenuItem<String>(
//            child: const Text('test1'), value: 'test1'),
//            new PopupMenuItem<String>(
//            child: const Text('test2'), value: 'test2'),
//            ],
//            elevation: 8.0,
//            );

            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
