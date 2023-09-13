import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String name = "shishir";
    const int days = 30;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Center(child: Text("New Application",style: TextStyle(color: Colors.yellow),)),
      ),
      body: const Center(
        child: Text("Welcome to $days days of flutter by $name"),
      ),
    );
  }
}