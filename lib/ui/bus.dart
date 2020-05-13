import 'package:bitbusapp/data/bus.dart' as BusData;
import 'package:flutter/material.dart';

class Bus extends StatelessWidget {
  final BusData.Bus _bus;

  Bus(this._bus);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bus Number ${_bus.busNumber}"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Route Number ${_bus.route.routeNumber}",
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _bus.route.list.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${index + 1}. ${_bus.route.list[index]}",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _bus.timing[index],
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
