import 'package:digital_hive_app/models/Hive.dart';
import 'package:digital_hive_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hives extends StatefulWidget {
  const Hives({super.key});

  @override
  State<Hives> createState() => _HivesState();
}

class _HivesState extends State<Hives> {

  bool loading = true;
  List<Hive> hives = [
      Hive(id: "sdsddf", name: "Number 1", description: "Postazione 1"),
      Hive(id: "sdsddf", name: "Number 2", description: "Postazione 2"),
      Hive(id: "sdsddf", name: "Number 3", description: "Postazione 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: getWidth(context),
          height: getHeight(context) -210,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: hives.map((hive){
              return Card(
                elevation: 10,
                shadowColor: secondary_color,
                child: ListTile(
                  title: Text(hive.name, style: TextStyle(color: first_color, fontWeight: FontWeight.w600),),
                  subtitle: Text(hive.description),
                  trailing: Icon(Icons.navigate_next),
                ),
              );
            }).toList(),
          ),
        ),

        Positioned(
          bottom: 15,
          right: 15,
          child: FloatingActionButton(
            backgroundColor: secondary_color,
            onPressed: (){

            },

            child: Icon(Icons.add, color: Colors.white, size: 25,),
          ),
        )
      ],
    );
  }
}
