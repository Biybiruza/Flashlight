import 'package:flutter/material.dart';

class FlashlightPageState extends StatefulWidget {
  const FlashlightPageState({Key? key}) : super(key: key);

  @override
  State<FlashlightPageState> createState() => _FlashlightPageStateState();
}

class _FlashlightPageStateState extends State<FlashlightPageState> {
  String flashlightStatus = "off";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [ 
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Flashlight is $flashlightStatus",
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: "DancingScript",
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Image.asset((flashlightStatus == "off")
                ? "assets/image/flashlight_off.jpg"
                : "assets/image/flashlight_on.jpg")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (flashlightStatus == "off") {
                flashlightStatus = "on";
              } else if (flashlightStatus == "on") {
                flashlightStatus = "off";
              }
            });
          },
            child: Icon((flashlightStatus == "off") ? Icons.flashlight_off : 
            Icons.flashlight_on,
          color: Colors.black,),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
