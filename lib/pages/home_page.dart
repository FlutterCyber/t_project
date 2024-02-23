import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Home Page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: "Private",
              ),
              Tab(
                icon: Icon(Icons.group),
                text: "Group",
              ),
              Tab(
                icon: Icon(Icons.message),
                text: "Channel",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.pink,
              child: Center(
                child: Text("Private"),
              ),
            ),
            Container(
              color: Colors.amberAccent,
              child: Center(
                child: Text("Group"),
              ),
            ),
            Container(
              color: Colors.tealAccent,
              child: Center(
                child: Text("Channels"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
