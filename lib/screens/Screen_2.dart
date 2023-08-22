import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tooltip/widgets/LabelText.dart';

class Screen_2 extends StatefulWidget {
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  Colors.grey,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black 
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      child:const  LabelText(labeltext: "Button 1")),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black 
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      child:const  LabelText(labeltext: "Button 2")),
                ),
              ],
            ),
            ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black 
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      child:const  LabelText(labeltext: "Button 3")),
                ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black 
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      child:const  LabelText(labeltext: "Button 4")),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black 
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      child:const  LabelText(labeltext: "Button 5")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
