import 'package:flutter/material.dart';

class MealsHome extends StatefulWidget {
  const MealsHome({Key? key}) : super(key: key);

  @override
  State<MealsHome> createState() => _MealsHomeState();
}

class _MealsHomeState extends State<MealsHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('MealsHome'),
      ),
    );
  }
}
