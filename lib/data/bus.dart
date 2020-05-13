import 'package:bitbusapp/data/route.dart';

class Bus {
  int busNumber;
  Route route;
  List<String> timing;

  Bus(this.busNumber, this.route, this.timing);
}

List<Bus> listBus = [
  Bus(1, route1, ["05:45 AM", "06:50 AM", "07:00 AM", "07:05 AM", "07:50 AM"]),
  Bus(2, route2, ["06:15 AM", "07:00 AM", "07:05 AM", "07:30 AM", "07:50 AM"]),
  Bus(3, route3, ["06:50 AM", "08:10 AM", "08:15 AM", "08:30 AM", "08:50 AM"]),
  Bus(4, route4, ["07:30 AM", "01:30 PM", "02:00 PM", "02:20 PM", "03:00 PM"]),
  Bus(5, route5, ["08:10 AM", "09:30 AM", "09:35 AM", "10:00 AM", "10:20 AM"]),
  Bus(6, route1, ["09:10 AM", "12:15 PM", "01:00 PM", "01:05 PM", "02:00 PM"]),
  Bus(7, route2, ["11:00 AM", "12:00 PM", "12:05 PM", "12:30 PM", "12:50 PM"]),
  Bus(8, route3, ["02:30 PM", "04:15 PM", "04:20 PM", "04:50 PM", "05:10 PM"]),
  Bus(9, route4, ["04:40 PM", "05:40 PM", "06:10 PM", "06:20 PM", "06:40 PM"]),
  Bus(10, route5, ["05:40 PM", "06:30 PM", "06:35 PM", "07:20 PM", "07:45 PM"]),
];
