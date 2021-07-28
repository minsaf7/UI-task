import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_assignment/UI%202/OtherTabs.dart';
import 'package:intern_assignment/UI%202/Today.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: AppBar(
              //automaticallyImplyLeading: false,
              flexibleSpace: appBarTitle(),
              backgroundColor: Colors.white,
              //  title: appBarTitle(),
              elevation: 0.0,
              bottom: TabBar(tabs: [
                Tab(
                  child: Text(
                    "Today",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Monthly",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Yearly",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Future",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ]),
            ),
          ),
          body: TabBarView(
            children: [
              Today(),
              Others(),
              Others(),
              Others(),
            ],
          )),
    );
  }

  appBarTitle() {
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back, Marvin",
                    style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                  ),
                  Text(
                    "Your financial situation looking good",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
        //indicator
        SizedBox(height: 10),
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.01,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.01,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),

        // score
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Beginner level",
                style: TextStyle(color: Colors.grey),
              ),
              Text("XP 300/500")
            ],
          ),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
