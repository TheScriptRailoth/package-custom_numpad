import 'package:flutter/material.dart';
class CustomNumPad extends StatefulWidget {
  final double buttonHeight;
  final double buttonWidth;
  final double rowSpacing;
  final double columnSpacing;
  final double buttonRadius;
  final Color buttonColor;
  final Color bgColor;
  final double cornerRadius;
  final TextEditingController? controller;

  final TextStyle buttonTextStyle;

  const CustomNumPad({
    Key? key,
    this.buttonHeight=80,
    this.buttonWidth=95,
    this.rowSpacing=5,
    this.columnSpacing=5,
    //required this.controller,
    this.controller,
    this.cornerRadius=0.0,
    this.bgColor=Colors.transparent,
    this.buttonRadius = 17,
    this.buttonColor = const Color(0xffF5F6FA),
    this.buttonTextStyle= const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Color(0xff005E54),
        fontFamily: null
    ),
  }) :super(key: key);

  @override
  State<CustomNumPad> createState() => _CustomNumPadState();
}


class _CustomNumPadState extends State<CustomNumPad> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            height: (widget.rowSpacing*3)+(widget.buttonHeight*4),
            width: (widget.columnSpacing*3)+(widget.buttonWidth*3),
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(widget.cornerRadius),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton(1),
                    SizedBox(width: widget.columnSpacing,),
                    _buildButton(2),
                    SizedBox(width: widget.columnSpacing,),
                    _buildButton(3),
                  ],
                ),
                SizedBox(height: widget.rowSpacing,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton(4),
                    SizedBox(width: widget.columnSpacing,),
                    _buildButton(5),
                    SizedBox(width: widget.columnSpacing,),
                    _buildButton(6),
                  ],
                ),
                SizedBox(height: widget.rowSpacing,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButton(7),
                    SizedBox(width: widget.columnSpacing,),
                    _buildButton(8),
                    SizedBox(width: widget.columnSpacing,),
                    _buildButton(9),
                  ],
                ),
                SizedBox(height: widget.rowSpacing,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: widget.buttonHeight,
                      width: widget.buttonWidth,
                      decoration: BoxDecoration(
                        color: widget.buttonColor,
                        borderRadius: BorderRadius.circular(widget.buttonRadius),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(widget.buttonRadius),
                        child: TextButton(
                          onPressed: (){
                            widget.controller?.text+='.';
                          },
                          child: Text('.', style: TextStyle(
                            fontWeight: widget.buttonTextStyle.fontWeight,
                            fontSize: (widget.buttonTextStyle.fontSize)!+15,
                            color: widget.buttonTextStyle.color,
                          ),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                    SizedBox(width: widget.columnSpacing,),
                    Container(
                      height: widget.buttonHeight,
                      width: widget.buttonWidth,
                      decoration: BoxDecoration(
                        color: widget.buttonColor,
                        borderRadius: BorderRadius.circular(widget.buttonRadius),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(widget.buttonRadius),
                        child: TextButton(
                          onPressed: (){
                            widget.controller?.text+='0';
                          },
                          child: Text('0', style: TextStyle(
                            fontWeight: widget.buttonTextStyle.fontWeight,
                            fontSize: widget.buttonTextStyle.fontSize,
                            color: widget.buttonTextStyle.color,
                          ),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                    SizedBox(width: widget.columnSpacing,),
                    Container(
                      height: widget.buttonHeight,
                      width: widget.buttonWidth,
                      decoration: BoxDecoration(
                        color: widget.buttonColor,
                        borderRadius: BorderRadius.circular(widget.buttonRadius),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(widget.buttonRadius),
                        child: TextButton(
                          onPressed: (){
                            if(widget.controller!.text.isNotEmpty){
                              final String xyz= widget.controller!.text.substring(0,widget.controller!.text.length-1);
                              widget.controller?.text=xyz;
                            }
                          },
                          child: Icon(Icons.backspace_outlined, color: widget.buttonTextStyle.color, size: widget.buttonTextStyle.fontSize!+5,),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
  Widget _buildButton( int number){
    return Container(
      height: widget.buttonHeight,
      width: widget.buttonWidth,
      decoration: BoxDecoration(
        color: widget.buttonColor,
        borderRadius: BorderRadius.circular(widget.buttonRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.buttonRadius),
        child: TextButton(
          onPressed: (){
            widget.controller?.text+=number.toString();
          },
          child: Text(number.toString(), style: TextStyle(
            color: widget.buttonTextStyle.color,
            fontSize: widget.buttonTextStyle.fontSize,
            fontWeight: widget.buttonTextStyle.fontWeight,
            fontFamily: widget.buttonTextStyle.fontFamily,
          ),
            textAlign: TextAlign.center,),
        ),
      ),
    );

  }
}
