import 'package:flutter/material.dart';

class FlashlightPageState extends StatefulWidget {
  const FlashlightPageState({Key? key}) : super(key: key);

  @override
  State<FlashlightPageState> createState() => _FlashlightPageStateState();
}

class _FlashlightPageStateState extends State<FlashlightPageState> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Text("Flashlight is on/of"),
            Image.asset("assets/image/flashlight_off")
          ],
        ),
      ),
    );
  }
}
