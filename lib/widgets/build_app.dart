import 'package:electronic_app/models/racipe.dart';
import 'package:electronic_app/screens/secanderi_screen.dart';
import 'package:flutter/material.dart';

class BuildRacipeCard extends StatelessWidget {
  final int i;
  const BuildRacipeCard({Key? key, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => SecanderiScreen(
                label: Racipe.sample[i].label,
                imageUrl: Racipe.sample[i].imageUrl,
                racipe: Racipe.sample[i],
              ),
            ),
          );
        },
        child: Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  child: Image.asset(
                    Racipe.sample[i].imageUrl,
                  ),
                ),
              ),
              Text(Racipe.sample[i].label)
            ],
          ),
        ),
      ),
    );
  }
}
