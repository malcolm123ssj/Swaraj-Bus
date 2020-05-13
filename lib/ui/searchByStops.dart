import 'package:bitbusapp/data/route.dart' as RouteData;
import 'package:bitbusapp/ui/route.dart' as RouteUI;
import 'package:flutter/material.dart';

class SearchByStops extends StatefulWidget {
  @override
  _SearchByStopsState createState() => _SearchByStopsState();
}

class _SearchByStopsState extends State<SearchByStops> {
  int start, stop, startIndex, stopIndex;
  bool once = false;
  List<RouteData.Route> res = List();
  List<String> stopsList = [
    RouteData.BIT,
    RouteData.Doranda,
    RouteData.ButiMore,
    RouteData.Firayalal,
    RouteData.Lalpur,
    RouteData.KantaToli
  ];
  List<DropdownMenuItem> _listDDMI = [
    DropdownMenuItem(value: 1, child: Text(RouteData.BIT)),
    DropdownMenuItem(value: 2, child: Text(RouteData.Doranda)),
    DropdownMenuItem(value: 3, child: Text(RouteData.ButiMore)),
    DropdownMenuItem(value: 4, child: Text(RouteData.Firayalal)),
    DropdownMenuItem(value: 5, child: Text(RouteData.Lalpur)),
    DropdownMenuItem(value: 6, child: Text(RouteData.KantaToli)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search By Stops"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                    hint: Text("START"),
                    value: start,
                    items: _listDDMI,
                    onChanged: (value) {
                      setState(() {
                        start = value;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                    hint: Text("STOP"),
                    value: stop,
                    items: _listDDMI,
                    onChanged: (value) {
                      setState(() {
                        stop = value;
                      });
                    }),
              ),
            ],
          ),
          Builder(
            builder: (context) => RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              onPressed: () {
                if (start == null && stop == null) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Please Select Start and Stop Location"),
                    duration: Duration(seconds: 1),
                  ));
                } else if (stop == null) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Please Select Stop Location"),
                    duration: Duration(seconds: 1),
                  ));
                } else if (start == null) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Please Select Start Location"),
                    duration: Duration(seconds: 1),
                  ));
                } else {
                  once = true;
                  res.clear();
                  startIndex =
                      RouteData.route1.list.indexOf(stopsList[start - 1]);
                  stopIndex =
                      RouteData.route1.list.indexOf(stopsList[stop - 1]);
                  if (startIndex != -1 &&
                      stopIndex != -1 &&
                      startIndex < stopIndex) {
                    res.add(RouteData.route1);
                  }
                  startIndex =
                      RouteData.route2.list.indexOf(stopsList[start - 1]);
                  stopIndex =
                      RouteData.route2.list.indexOf(stopsList[stop - 1]);
                  if (startIndex != -1 &&
                      stopIndex != -1 &&
                      startIndex < stopIndex) {
                    res.add(RouteData.route2);
                  }
                  startIndex =
                      RouteData.route3.list.indexOf(stopsList[start - 1]);
                  stopIndex =
                      RouteData.route3.list.indexOf(stopsList[stop - 1]);
                  if (startIndex != -1 &&
                      stopIndex != -1 &&
                      startIndex < stopIndex) {
                    res.add(RouteData.route3);
                  }
                  startIndex =
                      RouteData.route4.list.indexOf(stopsList[start - 1]);
                  stopIndex =
                      RouteData.route4.list.indexOf(stopsList[stop - 1]);
                  if (startIndex != -1 &&
                      stopIndex != -1 &&
                      startIndex < stopIndex) {
                    res.add(RouteData.route4);
                  }
                  startIndex =
                      RouteData.route5.list.indexOf(stopsList[start - 1]);
                  stopIndex =
                      RouteData.route5.list.indexOf(stopsList[stop - 1]);
                  if (startIndex != -1 &&
                      stopIndex != -1 &&
                      startIndex < stopIndex) {
                    res.add(RouteData.route5);
                  }
                  setState(() {});
                }
              },
              child: Text("Search for Routes"),
            ),
          ),
          res.length != 0
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: res != null ? res.length : 0,
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
                                      RouteUI.Route(res[index])));
                        },
                        child: Text(
                          "Route Number ${res[index].routeNumber}",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ));
                  },
                )
              : Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(once ? "No Results Found!!!" : ""),
                  ),
                ),
        ],
      ),
    );
  }
}
