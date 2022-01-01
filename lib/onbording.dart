import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onbording extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
     SafeArea(
         child: Padding(
           padding: EdgeInsets.all(8.w),
           child: IntroductionScreen(
             pages: [
           PageViewModel(
             image: Image.asset('image/welcome.png',fit: BoxFit.cover,),
             title: 'Welcome \nto \nGroceryus',
             body: '15000+ Grocery items available \nonly for you.',
            decoration: getPageDecoration(),

           ),PageViewModel(
             image: Image.asset('image/easyshopping.png'),
             title: 'Easy Shopping',
             body: 'Easy and fast way of shopping \nto save your valuable time.',
                 decoration: getPageDecoration(),
           ),PageViewModel(
             image: Image.asset('image/fastdelivery.png'),
             title: 'Fast Delivery',
             body: 'Vary fast sane day delivery and \n custom delivery system.',
                 decoration: getPageDecoration(),
           ),
       ],
             done: RaisedButton(onPressed: () {
               Navigator.pushNamed(context, "/registration");
             },child: Text('Start',style:GoogleFonts.carterOne(
                 fontWeight: FontWeight.bold,fontSize: 15.sp,),),color: Colors.deepOrange,),
             onDone: () {

       },
       showSkipButton: true,
            skip: Text('Skip'),
       dotsDecorator: DotsDecorator(
           activeColor: Colors.deepOrange,
           size: Size(10.w, 10.w),
           activeSize: Size(30.w, 10.w),
           activeShape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(24.r),
           ),
       ),
             next: Icon(Icons.arrow_forward),
       globalBackgroundColor: Colors.white,
       showNextButton: true,
     ),
         ));
  // void splashscreen(context)=>Navigator.of(context).pushReplacement(
  //   MaterialPageRoute(builder:(_)=>splashscreen()),
  // );
}

PageDecoration getPageDecoration()=>PageDecoration(
  titleTextStyle: GoogleFonts.carterOne(fontSize: 35.sp,),
  bodyTextStyle: GoogleFonts.caveat(fontSize: 25.sp,fontWeight: FontWeight.bold)

);
