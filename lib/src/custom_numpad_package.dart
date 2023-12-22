/// A customizable numeric pad widget for Flutter applications.
/// This widget allows users to create a numeric pad interface with customizable button dimensions, colors, and text styles, along with a text controller for input.
import 'package:flutter/material.dart';

class CustomNumPad extends StatefulWidget {
  ///The height of each numeric pad button.
  final double buttonHeight;

  ///The width of the numeric pad button.
  final double buttonWidth;

  ///Spacing between rows of buttons in numeric pad.
  final double rowSpacing;

  ///Spacing between columns of buttons in the numeric pad.
  final double columnSpacing;

  ///The button radius for each numeric pad button.
  final double buttonRadius;

  ///The background color of numeric pad buttons.
  final Color buttonColor;

  ///The background color of numeric pad.
  final Color bgColor;

  ///The corner radius of entire numeric pad.
  final double cornerRadius;

  ///The border size of numeric pad buttons.
  final double buttonBorder;

  ///The border's color of numeric pad buttons.
  final Color buttonBorderColor;

  ///The controller that manages the input text field.
  final TextEditingController? controller;

  ///The text style applied to the numeric pad buttons.
  final TextStyle buttonTextStyle;

  /// Creates a [CustomNumPad] widget.
  /// Creates a [CustomNumPad] widget with customizable parameters.
  ///
  /// [buttonHeight] sets the height of each button in the numeric pad. The default value is 80.
  ///
  /// [buttonWidth] sets the width of each button in the numeric pad. The default value is 95.
  ///
  /// [rowSpacing] determines the vertical spacing between rows of buttons. The default value is 5.
  ///
  /// [columnSpacing] determines the horizontal spacing between columns of buttons. The default value is 5.
  ///
  /// [controller] is the text controller managing the input field. It's optional.
  ///
  /// [cornerRadius] sets the corner radius of the numeric pad. The default value is 0.0.
  ///
  /// [bgColor] defines the background color of the numeric pad. The default is Colors.transparent.
  ///
  /// [buttonRadius] is the corner radius of each button in the numeric pad. The default value is 17.
  ///
  /// [buttonColor] is the background color of the numeric pad buttons. The default value is Color(0xffF5F6FA).
  ///
  /// [buttonTextStyle] defines the text style applied to the numeric pad buttons. The default style is bold, size 24, with the color set to Color(0xff005E54).
  const CustomNumPad({
    Key? key,
    this.buttonHeight = 80,
    this.buttonWidth = 95,
    this.rowSpacing = 5,
    this.columnSpacing = 5,
    //required this.controller,
    this.controller,
    this.cornerRadius = 0.0,
    this.bgColor = Colors.transparent,
    this.buttonRadius = 17,
    this.buttonColor = const Color(0xffF5F6FA),
    this.buttonBorder = 0.0,
    this.buttonBorderColor = Colors.transparent,
    this.buttonTextStyle = const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Color(0xff005E54),
        fontFamily: null),
  }) : super(key: key);

  @override
  State<CustomNumPad> createState() => _CustomNumPadState();
}

///This class manages the state of the CustomNumPad widget.
class _CustomNumPadState extends State<CustomNumPad> {
  @override
  Widget build(BuildContext context) {
    //Padding around entire widget
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            //Setting the size and appearance of the numeric pad
            height: (widget.rowSpacing * 3) + (widget.buttonHeight * 4),
            width: (widget.columnSpacing * 3) + (widget.buttonWidth * 3),
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(widget.cornerRadius),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Rows of numeric pad button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton(1), // Creating a button for number 1
                    SizedBox(
                      width: widget.columnSpacing,
                    ),
                    _buildButton(2), // Creating a button for number 2
                    SizedBox(
                      width: widget.columnSpacing,
                    ),
                    _buildButton(3), // Creating a button for number 3
                  ],
                ),
                SizedBox(
                  height: widget.rowSpacing,
                ), // Space between rows of buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton(4), // Creating a button for number 4
                    SizedBox(
                      width: widget.columnSpacing,
                    ),
                    _buildButton(5), // Creating a button for number 5
                    SizedBox(
                      width: widget.columnSpacing,
                    ),
                    _buildButton(6), // Creating a button for number 6
                  ],
                ),
                SizedBox(
                  height: widget.rowSpacing,
                ), // Space between rows of buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton(7), // Creating button for number 7
                    SizedBox(
                      width: widget.columnSpacing,
                    ),
                    _buildButton(8), // Creating button for number 8
                    SizedBox(
                      width: widget.columnSpacing,
                    ),
                    _buildButton(9), // Creating button for number 9
                  ],
                ),
                SizedBox(
                  height: widget.rowSpacing,
                ), // Space between rows of buttons
                //Special buttons (dot, zero, backspace)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: widget.buttonHeight,
                      width: widget.buttonWidth,
                      decoration: BoxDecoration(
                          color: widget.buttonColor,
                          borderRadius:
                              BorderRadius.circular(widget.buttonRadius),
                          border: Border.all(
                              width: widget.buttonBorder,
                              color: widget.buttonBorderColor)),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(widget.buttonRadius),
                        child: TextButton(
                          onPressed: () {
                            widget.controller?.text += '.';
                          },
                          child: Text(
                            '.',
                            style: TextStyle(
                              fontWeight: widget.buttonTextStyle.fontWeight,
                              fontSize: (widget.buttonTextStyle.fontSize)! + 15,
                              color: widget.buttonTextStyle.color,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ), //Dot Button
                    SizedBox(
                      width: widget.columnSpacing,
                    ),
                    Container(
                      height: widget.buttonHeight,
                      width: widget.buttonWidth,
                      decoration: BoxDecoration(
                          color: widget.buttonColor,
                          borderRadius:
                              BorderRadius.circular(widget.buttonRadius),
                          border: Border.all(
                              width: widget.buttonBorder,
                              color: widget.buttonBorderColor)),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(widget.buttonRadius),
                        child: TextButton(
                          onPressed: () {
                            widget.controller?.text += '0';
                          },
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontWeight: widget.buttonTextStyle.fontWeight,
                              fontSize: widget.buttonTextStyle.fontSize,
                              color: widget.buttonTextStyle.color,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ), //Zero Button
                    SizedBox(
                      width: widget.columnSpacing,
                    ),
                    Container(
                      height: widget.buttonHeight,
                      width: widget.buttonWidth,
                      decoration: BoxDecoration(
                          color: widget.buttonColor,
                          borderRadius:
                              BorderRadius.circular(widget.buttonRadius),
                          border: Border.all(
                              color: widget.buttonBorderColor,
                              width: widget.buttonBorder)),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(widget.buttonRadius),
                        child: TextButton(
                          onPressed: () {
                            if (widget.controller!.text.isNotEmpty) {
                              final String xyz = widget.controller!.text
                                  .substring(
                                      0, widget.controller!.text.length - 1);
                              widget.controller?.text = xyz;
                            }
                          },
                          child: Icon(
                            Icons.backspace_outlined,
                            color: widget.buttonTextStyle.color,
                            size: widget.buttonTextStyle.fontSize! + 5,
                          ),
                        ),
                      ),
                    ) //Backspace button
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  //Helper method to create numeric buttons
  Widget _buildButton(int number) {
    return Container(
      height: widget.buttonHeight, //Sets the height of the button
      width: widget.buttonWidth, // Sets the width of the button
      decoration: BoxDecoration(
          color: widget.buttonColor, // Sets the button's background color
          borderRadius: BorderRadius.circular(
              widget.buttonRadius), //Rounds the button corners
          border: Border.all(
              width: widget.buttonBorder, color: widget.buttonBorderColor)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.buttonRadius),
        child: TextButton(
          onPressed: () {
            //Appends the tapped number to the controller's text
            widget.controller?.text += number.toString();
          },
          child: Text(
            number.toString(),
            style: TextStyle(
              //Displays the number on the screen
              color: widget.buttonTextStyle.color, // Sets the text color
              fontSize:
                  widget.buttonTextStyle.fontSize, // Sets the text font size
              fontWeight: widget
                  .buttonTextStyle.fontWeight, // Sets the text font weight
              fontFamily: widget
                  .buttonTextStyle.fontFamily, // Sets the text font family
            ),
            textAlign: TextAlign.center,
          ), // Aligns the text to the center of the button
        ),
      ),
    );
  }
}
