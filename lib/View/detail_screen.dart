import 'package:covid_tracker/View/world_state.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases;
  int totalDeaths;
  int totalRecovered;
  int todayRecovered;
  int active;
  int critical;
  int test;
  int todayCases;
  DetailScreen({
    Key? key,
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.active,
    required this.critical,
    required this.test,
    required this.todayRecovered,
    required this.todayCases,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.0489),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.086,
                      ),
                      ReusableRow(
                          title: "Tests", value: widget.test.toString()),
                      ReusableRow(
                          title: "Total Cases",
                          value: widget.totalCases.toString()),
                      ReusableRow(
                          title: "Recovered",
                          value: widget.totalRecovered.toString()),
                      ReusableRow(
                          title: "Deaths",
                          value: widget.totalDeaths.toString()),
                      ReusableRow(
                          title: "Active", value: widget.active.toString()),
                      ReusableRow(
                          title: "Critical", value: widget.critical.toString()),
                      ReusableRow(
                          title: "Today Recovered",
                          value: widget.todayRecovered.toString()),
                      ReusableRow(
                          title: "Today CAses",
                          value: widget.todayCases.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              ),
            ],
          )
        ],
      ),
    );
  }
}
