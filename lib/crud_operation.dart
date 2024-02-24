import 'package:flutter/material.dart';

class AddaPlan extends StatefulWidget {
  const AddaPlan({super.key});

  @override
  State<AddaPlan> createState() => _AddaPlanState();
}

class _AddaPlanState extends State<AddaPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a plan'),
      ),
    );
  }
}
