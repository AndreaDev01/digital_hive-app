import 'package:digital_hive_app/models/Hive.dart';
import 'package:flutter/cupertino.dart';

class Hives extends StatefulWidget {
  const Hives({super.key});

  @override
  State<Hives> createState() => _HivesState();
}

class _HivesState extends State<Hives> {

  bool loading = true;
  List<Hive> hives = [
      Hive(id: "sdsddf", name: "Number 1", description: "Postazione 1"),
      Hive(id: "sdsddf", name: "Number 1", description: "Postazione 1"),
      Hive(id: "sdsddf", name: "Number 1", description: "Postazione 1"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hives"),
    );
  }
}
