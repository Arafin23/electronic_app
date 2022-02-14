import 'package:electronic_app/models/racipe.dart';
import 'package:electronic_app/widgets/build_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Racipe.sample.length,
          itemBuilder: (ctx, i) {
            return BuildRacipeCard(
              i: i,
            );
          },
        ),
      ),
    );
  }
}
