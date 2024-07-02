import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/Data/variables/variables.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:flutter_ics_homescreen/screensize.dart';
import 'package:flutter_ics_homescreen/sliderscreen3.dart';
import 'package:intl/intl.dart';

import 'color_seeting_button_widget.dart';


class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override

  Widget build(BuildContext context) {


    return Scaffold(

      body: Container(
        color:Colors.blueGrey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: screenWidth*0.15,
                    color:Colors.white,
                    child: Image.asset('asset/mylogo.png')), // Replace 'assets/logo.png' with your logo
                //const SizedBox(width:250),
                Container(
                    alignment: Alignment.center,
                    width: screenWidth*0.60 ,child: const Text("Knemetic solutions",style: TextStyle(fontSize:40,fontWeight:FontWeight.normal,color:Colors.white),)),
                Container(
                  color:Colors.blue,
                  width: screenWidth*0.15,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.calendar_month_rounded,color:Colors.white),
                          Text(DateFormat('EEEE dd MMM').format(DateTime.now()).toString(), style: const TextStyle(fontSize: datetimefontsize,color:Colors.white),),
                        ],
                      ),
                      Row(
                        children: [
                          Text( DateFormat('            HH:mm:ss').format(DateTime.now()).toString(), style: const TextStyle(fontSize: datetimefontsize,color:Colors.white)),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                color_setting_button(screenheight: screenHeight, screenwidth: screenWidth, myText: 'Mono Color settings',myicon:Icons.settings, iconcolors: Colors.white,),
                color_setting_button(screenheight: screenHeight, screenwidth: screenWidth, myText: 'RGB Color-Green settings',myicon:Icons.settings, iconcolors: Colors.green,),
                color_setting_button(screenheight: screenHeight, screenwidth: screenWidth, myText: 'RGB Color-Brown settings',myicon:Icons.settings, iconcolors: Colors.brown,),
                color_setting_button(screenheight: screenHeight, screenwidth: screenWidth, myText: 'RGB Color-??? settings',myicon:Icons.settings, iconcolors: Colors.black,),
                Container(
                  height:screenHeight*.25,
                  width: screenWidth*0.18,
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
                        Image.asset("asset/cinemabg.png",height: 80,width: 80,),
                        const SizedBox(height:10),
                        const Text("Top Light settings",style:TextStyle(fontSize:20,color:Colors.white)),
                      ],
                    ),
                  ),
                )





              ],
            ),
            const SizedBox(height: 40),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const slider_screen3(slidervalue: 154,),
                const slider_screen3(slidervalue: 245,),
                const slider_screen3(slidervalue: 56,),
                const slider_screen3(slidervalue: 78,),
                slider_brightness(slidervalue: 89,),


              ],
            ),
            const Spacer(),
            Row(
              children: [
                const SizedBox(width:screenWidth*0.10,),
                const SizedBox(
                  width: screenWidth*.8,
                  height: screenHeight*0.06,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings,size:50,color:Colors.blue,),
                      Text('Adjust Bottom Camera and Top lighting parameters ',style: TextStyle(fontSize: 25,color:Colors.white),),
                    ],
                  ),
                ),

                const SizedBox(width:5),
                SizedBox(height:screenHeight*0.07,width:130,child: ElevatedButton(onPressed: (){

                  Navigator.pushNamed(context, "SettingsScreen");
                }, child: Text("Back",style: textStyleForAllText ()))),


              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}



