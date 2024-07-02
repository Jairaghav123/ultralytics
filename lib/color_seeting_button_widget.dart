import 'package:flutter/material.dart';

import 'Data/variables/variables.dart';

class color_setting_button extends StatefulWidget {

   color_setting_button({
    super.key,
    required this.screenheight,
    required this.screenwidth, required this.myText, required this.myicon, required this.iconcolors,
  });

  final double screenheight;
  final double screenwidth;
  final String myText ;
  final IconData myicon ;
  final Color iconcolors ;
  @override
  State<color_setting_button> createState() => _color_setting_buttonState();
}

class _color_setting_buttonState extends State<color_setting_button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:widget.screenheight*.25,
      width: widget.screenwidth*0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), // Adjust the value as needed
      ),
      child: ElevatedButton(
        onPressed: () {
          // Action for top camera view button
        },
        child:  Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Icon(widget.myicon,color:widget.iconcolors,size:110,),
            const SizedBox(height: 10,),
            Text(widget.myText,style: textStyleForAllText ()),
          ],
        ),
      ),
    );
  }
}