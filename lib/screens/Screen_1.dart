import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tooltip/widgets/CustomTextFormField.dart';
import 'package:tooltip/widgets/DropDownList.dart';
import 'package:tooltip/widgets/LabelText.dart';

class Screen_1 extends StatelessWidget {
  Screen_1({super.key});

  final _formKey = GlobalKey<FormState>();
  final inputController = TextEditingController();
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
    'Button4'
  ];
  String? widgetDropDownValue;

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
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const LabelText(labeltext: "Target Element"),
                const SizedBox(height: 16),
                DropDownList(
                  dropDownValue: widgetDropDownValue,
                  hintext: 'Select the button',
                  list: buttonList,
                  unboundedWidth: true,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(height: 16),
                const LabelText(labeltext: "ToolTip Text"),
                const SizedBox(height: 16),
                CustomTextField(
                    controller: inputController,
                    hintText: 'Input',
                    keyboardType: TextInputType.text,
                    obscureText: false),
                const SizedBox(height: 16),
                Row(
                  //  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelText(labeltext: "Text Size"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,

                            // fit: FlexFit.loose,
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
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          const LabelText(labeltext: "Text Padding"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,
                            // fit: FlexFit.loose,
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
                    hintText: 'Input',
                    keyboardType: TextInputType.text,
                    obscureText: false),
                const SizedBox(height: 16),
                const LabelText(labeltext: "Background Color"),
                const SizedBox(height: 16),
                CustomTextField(
                    controller: backColorController,
                    hintText: 'Input',
                    keyboardType: TextInputType.text,
                    obscureText: false),
                const SizedBox(height: 16),
                Row(
                  //  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelText(labeltext: "Corner Radius"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,

                            // fit: FlexFit.loose,
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
                        // mainAxisSize: MainAxisSize.min,
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
                  //  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LabelText(labeltext: "Arrow Width"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,

                            // fit: FlexFit.loose,
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
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          const LabelText(labeltext: "Arrow Height"),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: 160,
                            // fit: FlexFit.loose,
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
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
