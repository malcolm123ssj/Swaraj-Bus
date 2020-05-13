import 'package:bitbusapp/data/bus.dart' as BusData;
import 'package:bitbusapp/data/route.dart' as RouteData;
import 'package:bitbusapp/ui/bus.dart' as BusUI;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Route extends StatelessWidget {
  final RouteData.Route route;

  Route(this.route);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route Number ${route.routeNumber}"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: route.list.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${index + 1}. ${route.list[index]}",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              );
            },
          ),
          Divider(
            thickness: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Buses with this Route",
              style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.double),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: route.listBus.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: FlatButton(
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => BusUI.Bus(
                                BusData.listBus[route.listBus[index] - 1])));
                  },
                  child: Text(
                    "Bus Number ${route.listBus[index]}",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
