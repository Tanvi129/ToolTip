import 'package:flutter/material.dart';
import 'package:tooltip/models/tooltipArguments.dart';
import 'package:tooltip/widgets/CustomTextFormField.dart';
import 'package:tooltip/widgets/LabelText.dart';

class Screen_1 extends StatefulWidget {
  Screen_1({super.key});

  @override
  State<Screen_1> createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  final _formKey = GlobalKey<FormState>();

  final tooltipTextController = TextEditingController();

  final textColorController = TextEditingController();

  final backColorController = TextEditingController();

  final textsizeController = TextEditingController();

  final paddingController = TextEditingController();

  final cornerRadiusController = TextEditingController();

  final toolTipWidthController = TextEditingController();

  final arrowWidthController = TextEditingController();

  final arrowHeightController = TextEditingController();

  List<String> buttonList = <String>[
    'Button1',
    'Button2',
    'Button3',
    'Button4',
    'Button5'
  ];

  String? widgetDropDownValue;

  String? holder = '';

  void getDropDownItem() {
    setState(() {
      holder = widgetDropDownValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffF5F5F5),
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const LabelText(labeltext: "Target Element"),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.center,
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              width: 3, color: Colors.black), //<-- SEE HERE
                        )),
                    value: widgetDropDownValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    iconSize: 30,
                    hint: const Text('Select the button'),
                    iconEnabledColor: Colors.black,
                    elevation: 16,
                    isExpanded: true,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    onChanged: (String? newval) {
                      setState(() {
                        widgetDropDownValue = newval;
                      });
                    },
                    items: buttonList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 16),
                const LabelText(labeltext: "ToolTip Text"),
                const SizedBox(height: 16),
                CustomTextField(
                    controller: tooltipTextController,
                    hintText: 'Input',
                    keyboardType: TextInputType.text,
                    obscureText: false),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelText(labeltext: "Text Size"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,
                            child: CustomTextField(
                                controller: textsizeController,
                                hintText: 'Input',
                                keyboardType: TextInputType.number,
                                obscureText: false),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelText(labeltext: "Text Padding"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,
                            child: CustomTextField(
                                controller: paddingController,
                                hintText: 'Input',
                                keyboardType: TextInputType.number,
                                obscureText: false),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const LabelText(labeltext: "Text Color"),
                const SizedBox(height: 16),
                CustomTextField(
                    controller: textColorController,
                    hintText: 'Enter the hex code',
                    keyboardType: TextInputType.text,
                    obscureText: false),
                const SizedBox(height: 16),
                const LabelText(labeltext: "Background Color"),
                const SizedBox(height: 16),
                CustomTextField(
                    controller: backColorController,
                    hintText: 'Enter the hex code',
                    keyboardType: TextInputType.text,
                    obscureText: false),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelText(labeltext: "Corner Radius"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,
                            child: CustomTextField(
                                controller: cornerRadiusController,
                                hintText: 'Input',
                                keyboardType: TextInputType.number,
                                obscureText: false),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelText(labeltext: "ToolTip Width"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,
                            // fit: FlexFit.loose,
                            child: CustomTextField(
                                controller: toolTipWidthController,
                                hintText: 'Input',
                                keyboardType: TextInputType.number,
                                obscureText: false),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelText(labeltext: "Arrow Width"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,
                            child: CustomTextField(
                                controller: arrowWidthController,
                                hintText: 'Input',
                                keyboardType: TextInputType.number,
                                obscureText: false),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelText(labeltext: "Arrow Height"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,
                            child: CustomTextField(
                                controller: arrowHeightController,
                                hintText: 'Input',
                                keyboardType: TextInputType.number,
                                obscureText: false),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, "/screen2",
                            arguments: TooltipArguments(
                                targetElement: widgetDropDownValue,
                                toolTipText: tooltipTextController.text,
                                tooltipTextSize:
                                    double.parse(textsizeController.text),
                                toolTipPadding:
                                    double.parse(paddingController.text),
                                textColor: textColorController.text,
                                backgroundColor: backColorController.text,
                                cornerRadius:
                                    double.parse(cornerRadiusController.text),
                                arrowHeight:
                                    double.parse(arrowHeightController.text),
                                arrowWidth:
                                    double.parse(arrowWidthController.text),
                                tooltipWidth:
                                    double.parse(toolTipWidthController.text)));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Please fill all the Details')),
                        );
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 40,
                        child: const Text('Render Tooltip')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
