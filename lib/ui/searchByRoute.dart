import 'package:bitbusapp/data/route.dart' as RouteData;
import 'package:bitbusapp/ui/route.dart' as RouteUI;
import 'package:flutter/material.dart';

class SearchByRoute extends StatefulWidget {
  @override
  _SearchByRouteState createState() => _SearchByRouteState();
}

class _SearchByRouteState extends State<SearchByRoute> {
  List<RouteData.Route> _listRoute = [
    RouteData.route1,
    RouteData.route2,
    RouteData.route3,
    RouteData.route4,
    RouteData.route5,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search By Routes"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: _listRoute.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              RouteUI.Route(_listRoute[index])));
                },
                child: Text(
                  "Route Number ${_listRoute[index].routeNumber}",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ));
          },
        ));
  }
}
