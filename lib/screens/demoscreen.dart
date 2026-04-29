import 'package:flutter/material.dart';

class Demoscreen extends StatefulWidget {
  const Demoscreen({super.key});

  @override
  State<Demoscreen> createState() => _DemoscreenState();
}

class _DemoscreenState extends State<Demoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: 
      Text("Hello"),),);
  }
}