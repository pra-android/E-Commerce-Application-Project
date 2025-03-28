import 'package:flutter/material.dart';

class Catering extends StatelessWidget {
  const Catering({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [Center(child: Text("Catering Coming Soon"))],
      ),
    );
  }
}
