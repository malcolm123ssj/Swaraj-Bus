import 'package:bitbusapp/data/bus.dart' as BusData;
import 'package:bitbusapp/ui/bus.dart' as BusUI;
import 'package:flutter/material.dart';

class SearchByBus extends StatefulWidget {
  @override
  _SearchByBusState createState() => _SearchByBusState();
}

class _SearchByBusState extends State<SearchByBus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search By Bus"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: BusData.listBus.length,
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
                              BusUI.Bus(BusData.listBus[index])));
                },
                child: Text(
                  "Bus Number ${BusData.listBus[index].busNumber}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ));
          },
        ));
  }
}
