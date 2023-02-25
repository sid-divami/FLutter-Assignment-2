import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 15, 71, 136),
        title: const Text('AppBar widget'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print('flight icon has been pressed');
              },
              icon: const Icon(Icons.flight)),
          IconButton(
              onPressed: () {
                print('dark mode button has been toggled');
              },
              icon: const Icon(Icons.dark_mode)),
          IconButton(
              onPressed: () {
                print('search button has been toggled');
              },
              icon: const Icon(Icons.dark_mode)),
          IconButton(
              onPressed: () {
                print('audio button has been toggled');
              },
              icon: const Icon(Icons.audiotrack)),
          DropdownButton(items: const [
            DropdownMenuItem(value: "account", child: Text('My Account')),
            DropdownMenuItem(value: 'my profile', child: Text('My Profile')),
          ], onChanged: (change) {})
        ],
      ),
      body: Column(children: [
        Container(
          color: const Color.fromARGB(180, 5, 171, 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(Icons.sailing)),
              Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 5.0, color: Colors.white))),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("New Chats",
                          style: TextStyle(color: Colors.blueGrey)))),
              TextButton(
                  onPressed: () {},
                  child: const Text("Groups",
                      style: TextStyle(color: Colors.red))),
              TextButton(
                  onPressed: () {},
                  child: const Text("Status",
                      style: TextStyle(color: Colors.lightBlueAccent))),
              TextButton(
                  onPressed: () {},
                  child:
                      const Text("Calls", style: TextStyle(color: Colors.red))),
            ],
          ),
        ),
      ]),
    );
  }
}
