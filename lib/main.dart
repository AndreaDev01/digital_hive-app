import 'package:digital_hive_app/utils/constants.dart';
import 'package:digital_hive_app/views/hives.dart';
import 'package:digital_hive_app/views/profile.dart';
import 'package:digital_hive_app/views/stats.dart';
import 'package:flutter/material.dart';
import 'package:simple_bottom_bar/simple_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Hive',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: first_color),
      ),
      home: const MyHomePage(title: 'Digital Hive'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MenuItem> widgets =[
    MenuItem(index: 0, text: "Arnie", icon: Icons.home, widget: Hives()),
    MenuItem(index: 1, text: "Statistiche", icon: Icons.query_stats, widget: Stats()),
    MenuItem(index: 2, text: "Profilo", icon: Icons.person, widget: Profile()),
  ];

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      appBar: AppBar(
        backgroundColor: first_color,
        title: Text("Digital Hive", style: TextStyle(color: Colors.white),),
      ),
      widgets: widgets,
      bottomBarConfig: BottomBarConfig(
          activeCardColor: secondary_color.withOpacity(0.5),
          iconsColor: secondary_color.withOpacity(0.5),
          activeIconColor: Colors.white, textStyle: TextStyle(color: Colors.white)),
    );
  }
}
