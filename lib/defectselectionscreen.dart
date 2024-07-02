import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/Data/variables/variables.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:flutter_ics_homescreen/screensize.dart';


import 'package:flutter_ics_homescreen/sliderscreen3.dart';
import 'package:intl/intl.dart';

import 'color_seeting_button_widget.dart';
import 'defectselectionscreenwidget.dart';


class defectselection extends StatefulWidget {
  const defectselection({super.key});

  @override
  State<defectselection> createState() => _defectselectionState();
}

class _defectselectionState extends State<defectselection> {
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
                          const Icon(Icons.calendar_month_rounded),
                          Text(DateFormat('EEEE dd MMM').format(DateTime.now()).toString(), style:textStyleForAllText ()),
                        ],
                      ),
                      Row(
                        children: [
                          Text( DateFormat('            HH:mm:ss').format(DateTime.now()).toString(), style: textStyleForAllText ()),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),



            const Spacer(),
             Row(
               mainAxisAlignment:MainAxisAlignment.start ,
               children: [
                 Column(

                   children: [
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'MC', firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'PB',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'AAA',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'AA',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'A',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'B',firstvalue: true,),
                   ],
                 ),

                 const SizedBox(width:screenWidth*0.35,),
                 Column(
                   children: [
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'C',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'BB',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'BL',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'BERRY',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'BITS',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'HUSK/Stone',firstvalue: true,),
                   ],
                 )
               ],
             ),

            Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [

                SizedBox(width:120,height:60,child: ElevatedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen2()));

                }, child: Text("Back",style: textStyleForAllText ())))
              ],
            ),
            const Spacer(),
             Row(
              children: [
                const SizedBox(width:screenWidth*0.10,height: screenHeight*0.10,),
                SizedBox(
                  width: screenWidth*.8,
                  height: screenHeight*0.06,
                  child:  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.settings,size:50,color:Colors.blue,),
                      Text(' Settings ',style: textStyleBelowScreen ()),
                    ],
                  ),
                ),



              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}




