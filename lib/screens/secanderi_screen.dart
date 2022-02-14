import 'package:electronic_app/models/racipe.dart';
import 'package:flutter/material.dart';

class SecanderiScreen extends StatefulWidget {
  final String label;
  final String imageUrl;
  final Racipe racipe;
  const SecanderiScreen({
    Key? key,
    required this.label,
    required this.imageUrl,
    required this.racipe,
  }) : super(key: key);

  @override
  _SecanderiScreenState createState() => _SecanderiScreenState();
}

class _SecanderiScreenState extends State<SecanderiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.label),
      ),
      body: Column(
        children: [
          Image.asset(
            widget.imageUrl,
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.racipe.ingredent.length,
              itemBuilder: (ctx, i) {
                final ingredent = widget.racipe.ingredent[i];
                return Text(
                  '${ingredent.quantity} ${ingredent.mancure} ${ingredent.name}',
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
