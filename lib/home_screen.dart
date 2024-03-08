import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter Bottom Sheet Widget Update'),
          backgroundColor: Colors.red),
      body: Center(
          child: ElevatedButton(
              onPressed: _bottomSheet, child: const Text("Show Bottom Sheet"))),
    );
  }

  _bottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const UpdateBottomSheet();
      },
    );
  }
}

class UpdateBottomSheet extends StatefulWidget {
  const UpdateBottomSheet({Key? key}) : super(key: key);

  @override
  State<UpdateBottomSheet> createState() => _UpdateBottomSheetState();
}

class _UpdateBottomSheetState extends State<UpdateBottomSheet> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Switch(
        value: value,
        onChanged: (value) {
          setState(() {
            this.value = value;
          });
        },
      ),
    );
  }
}
