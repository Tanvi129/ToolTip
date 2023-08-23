import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tooltip/models/tooltipArguments.dart';
import 'package:tooltip/widgets/LabelText.dart';
import 'dart:developer';
import 'package:tooltip/extensions/stringextension.dart';

class Screen_2 extends StatefulWidget {
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    final TooltipArguments args =
        ModalRoute.of(context)!.settings.arguments as TooltipArguments;

    return Scaffold(
      appBar: AppBar(title: const Text("Rendered Screen")),
      body: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Tooltip(
                  richMessage: WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Container(
                        width: args.targetElement! == "Button1"?  args.tooltipWidth!: 100,
                        child: Text(
                          args.targetElement! == "Button1"
                              ? args.toolTipText!
                              : "Button 1",
                            style: TextStyle(
                      color: args.targetElement! == "Button1" ? args.textColor!.toColor() : Colors.black,
                      fontSize: args.targetElement! == "Button1"
                          ? args.tooltipTextSize!
                          : 16),
                        ),
                      )),
                 
                  padding: args.targetElement! == "Button1"
                      ? EdgeInsets.all(args.toolTipPadding!)
                      : const EdgeInsets.all(4),

                  decoration: BoxDecoration(
                    color: args.targetElement! == "Button1"
                        ? args.backgroundColor!.toColor()
                        : Colors.grey,
                    borderRadius: args.targetElement! == "Button1"
                        ? BorderRadius.all(Radius.circular(args.cornerRadius!))
                        : const BorderRadius.all(Radius.circular(4)),
                  ),

                  child: ElevatedButton(
                    onPressed: () {
                      log("${args.arrowHeight}");
                      log(args.targetElement!);
                      log(args.textColor!);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black),
                    child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 40,
                        child: const LabelText(labeltext: "Button 1")),
                  ),
                ),
                Tooltip(
                  richMessage: WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Container(
                        alignment: Alignment.center,
                        width: args.targetElement! == "Button2"?  args.tooltipWidth!: 100,
                      
                        child: Text(
                          args.targetElement! == "Button2"
                              ? args.toolTipText!
                              : "Button 2",
                            style: TextStyle(
                      color: args.targetElement! == "Button2" ? args.textColor!.toColor() : Colors.black,
                      fontSize: args.targetElement! == "Button2"
                          ? args.tooltipTextSize!
                          : 16),
                        ),
                      )),
                 
                  padding: args.targetElement! == "Button2"
                      ? EdgeInsets.all(args.toolTipPadding!)
                      : const EdgeInsets.all(4),

                  decoration: BoxDecoration(
                    color: args.targetElement! == "Button2"
                        ? args.backgroundColor!.toColor()
                        : Colors.grey,
                    borderRadius: args.targetElement! == "Button2"
                        ? BorderRadius.all(Radius.circular(args.cornerRadius!))
                        : const BorderRadius.all(Radius.circular(4)),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black),
                    child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 40,
                        child: const LabelText(labeltext: "Button 2")),
                  ),
                ),
              ],
            ),
            Tooltip(
               richMessage: WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Container(
                        width: args.targetElement! == "Button3"?  args.tooltipWidth!: 100,
                        child: Text(
                          args.targetElement! == "Button3"
                              ? args.toolTipText!
                              : "Button 3",
                            style: TextStyle(
                      color: args.targetElement! == "Button3" ? args.textColor!.toColor() : Colors.black,
                      fontSize: args.targetElement! == "Button3"
                          ? args.tooltipTextSize!
                          : 16),
                        ),
                      )),
                 
                  padding: args.targetElement! == "Button3"
                      ? EdgeInsets.all(args.toolTipPadding!)
                      : const EdgeInsets.all(4),

                  decoration: BoxDecoration(
                    color: args.targetElement! == "Button3"
                        ? args.backgroundColor!.toColor()
                        : Colors.grey,
                    borderRadius: args.targetElement! == "Button3"
                        ? BorderRadius.all(Radius.circular(args.cornerRadius!))
                        : const BorderRadius.all(Radius.circular(4)),
                  ),

              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, foregroundColor: Colors.black),
                child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 40,
                    child: const LabelText(labeltext: "Button 3")),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Tooltip(
                   richMessage: WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Container(
                        width: args.targetElement! == "Button4"?  args.tooltipWidth!: 100,
                        child: Text(
                          args.targetElement! == "Button4"
                              ? args.toolTipText!
                              : "Button 4",
                            style: TextStyle(
                      color: args.targetElement! == "Button4" ? args.textColor!.toColor() : Colors.black,
                      fontSize: args.targetElement! == "Button4"
                          ? args.tooltipTextSize!
                          : 16),
                        ),
                      )),
                 
                  padding: args.targetElement! == "Button4"
                      ? EdgeInsets.all(args.toolTipPadding!)
                      : const EdgeInsets.all(4),

                  decoration: BoxDecoration(
                    color: args.targetElement! == "Button4"
                        ? args.backgroundColor!.toColor()
                        : Colors.grey,
                    borderRadius: args.targetElement! == "Button4"
                        ? BorderRadius.all(Radius.circular(args.cornerRadius!))
                        : const BorderRadius.all(Radius.circular(4)),
                  ),

                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black),
                    child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 40,
                        child: const LabelText(labeltext: "Button 4")),
                  ),
                ),
                Tooltip(
                   richMessage: WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Container(
                        width: args.targetElement! == "Button5"?  args.tooltipWidth!: 100,
                        child: Text(
                          args.targetElement! == "Button5"
                              ? args.toolTipText!
                              : "Button 5",
                            style: TextStyle(
                      color: args.targetElement! == "Button5" ? args.textColor!.toColor() : Colors.black,
                      fontSize: args.targetElement! == "Button5"
                          ? args.tooltipTextSize!
                          : 16),
                        ),
                      )),
                 
                  padding: args.targetElement! == "Button5"
                      ? EdgeInsets.all(args.toolTipPadding!)
                      : const EdgeInsets.all(4),

                  decoration: BoxDecoration(
                    color: args.targetElement! == "Button5"
                        ? args.backgroundColor!.toColor()
                        : Colors.grey,
                    borderRadius: args.targetElement! == "Button5"
                        ? BorderRadius.all(Radius.circular(args.cornerRadius!))
                        : const BorderRadius.all(Radius.circular(4)),
                  ),

                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black),
                    child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 40,
                        child: const LabelText(labeltext: "Button 5")),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
