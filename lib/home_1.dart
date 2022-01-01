import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/populardeals.dart';

class home_1 extends StatefulWidget {
  const home_1({Key? key}) : super(key: key);

  @override
  _home_1State createState() => _home_1State();
}

class _home_1State extends State<home_1> {
  //----------
  bool status1 = false;

  Color _textColor = Colors.black;
  Color _appBarColor = Color.fromRGBO(36, 41, 46, 1);
  Color _scaffoldBgcolor = Color(0xffe6f2ff);
  //------
  @override
  Widget build(BuildContext context) {

    void populardeals;
    return Theme(
      data: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: _textColor),
          bodyText2: TextStyle(color: _textColor),
        ),
      ),

      child: Scaffold(
        backgroundColor: _scaffoldBgcolor,
         // backgroundColor: Color(0xffe6f2ff),
        body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlutterSwitch(
                    width: 60.0,
                    height: 45.0,
                    toggleSize: 35.0,
                    value: status1,
                    borderRadius: 30.0,
                    padding: 2.0,
                    activeToggleColor: Color(0xFF6E40C9),
                    inactiveToggleColor: Color(0xFF2F363D),
                    activeSwitchBorder: Border.all(
                      color: Color(0xFF3C1E70),
                      width: 6.0,
                    ),
                    inactiveSwitchBorder: Border.all(
                      color: Color(0xFFD1D5DA),
                      width: 6.0,
                    ),
                    activeColor: Color(0xFF271052),
                    inactiveColor: Color(0xffe6f2ff),
                    activeIcon: Icon(
                      Icons.nightlight_round,
                      color: Color(0xFFF8E3A1),
                    ),
                    inactiveIcon: Icon(
                      Icons.wb_sunny,
                      color: Color(0xFFFFDF5D),
                    ),
                    onToggle: (val) {
                      setState(() {
                        status1 = val;

                        if (val) {
                          _textColor = Colors.white;
                          _appBarColor = Color.fromRGBO(22, 27, 34, 1);
                          _scaffoldBgcolor = Color(0xFF0D1117);
                        } else {
                          _textColor = Colors.black;
                          _appBarColor = Color.fromRGBO(36, 41, 46, 1);
                          _scaffoldBgcolor = Color(0xffe6f2ff);
                        }
                      });
                    },
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(5.w),
                child: Row(
                  children: [
                    Text('Hand picked fresh \nitems only for you!',style:GoogleFonts.carterOne(fontSize: 23.sp),),
                    SizedBox(width:92.w,),
                    Container(
                      child: Icon(Icons.notifications_none_outlined,size: 35.w,color: Colors.black,),
                    ),
                  ],),),
              Padding(
                padding:EdgeInsets.only(left: 15.w,right: 15.w),
                child: TextFormField(
                  readOnly: true,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.black54,),
                      hintText: 'Search for Anything',
                      hintStyle: GoogleFonts.openSans(color: Colors.black54),
                      fillColor: Colors.white,
                      filled:true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10.r)
                      )),
                ),
              ),
              SizedBox(height:4.h,),
              Padding(
                padding: EdgeInsets.only(left: 12.w,right: 12.w),
                child: Container(
                  child: Row(
                    children: [
                      Text('Catagories',style:GoogleFonts.satisfy(fontSize: 25.sp,fontWeight: FontWeight.bold),),
                      SizedBox(width:160.w,),
                      Container(
                          child: TextButton(onPressed: () {},
                              child: Text('See All',style: TextStyle(color: Colors.deepOrange,fontSize: 17.sp),))
                      ),
                    ],),
                ),
              ),
              SingleChildScrollView(
                reverse: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.w),
                  child: Row(
                    children: [
                      Container(
                        height: 85.h,width: 85.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage('image/vagetable.jpg'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20.r))),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.w, child: Container(height: 22.h,width: 85.w,
                              decoration:BoxDecoration( borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.r) ,bottomLeft:Radius.circular(20.r)),
                                color: Colors.deepOrange,) ,child: Text('Vagetables',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),)],
                        ),
                      ),
                      SizedBox(width: 4.w), Container(
                        height: 85.h,width:85.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('image/fruits.jpg'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20.r))),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.w, child: Container(height: 22.h,width: 85.w,
                              decoration:BoxDecoration( borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.r) ,bottomLeft:Radius.circular(20.r)),
                                color: Colors.deepOrange,) ,child: Text('Fruits',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),)],
                        ),
                      ),SizedBox(width: 4.w,),Container(
                        height:  85.h,width:  85.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('image/meetfish.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20.r))),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.w, child: Container(height: 22.h,width: 85.w,
                              decoration:BoxDecoration( borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.r) ,bottomLeft:Radius.circular(20.r)),
                                color: Colors.deepOrange,) ,child: Text('Meet&Fish',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),)],
                        ),
                      ),SizedBox(width: 4.w,),Container(
                        height: 85.h,width:  85.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage('image/DairyEggs.png',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20.r))),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.w, child: Container(height: 22.h,width: 85.w,
                              decoration:BoxDecoration( borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.r) ,bottomLeft:Radius.circular(20.r)),
                                color: Colors.deepOrange,) ,child: Text('Dairy&Eggs',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),)],
                        ),
                      ),SizedBox(width: 4.w,),Container(
                        height: 85.h,width:  85.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage('image/Beverage.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20.r))),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.w, child: Container(height: 22.h,width: 85.w,
                              decoration:BoxDecoration( borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.r) ,bottomLeft:Radius.circular(20.r)),
                                color: Colors.deepOrange,) ,child: Text('Beverages',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),)],
                        ),
                      ),SizedBox(width: 4.w,),Container(
                        height: 85.h,width: 85.w,

                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage('image/rice.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20.r))),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.w, child: Container(height: 22.h,width: 85.w,
                              decoration:BoxDecoration( borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.r) ,bottomLeft:Radius.circular(20.r)),
                                color: Colors.deepOrange,) ,child: Text('Rice',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),)],
                        ),
                      ),SizedBox(width: 4.w,),Container(
                        height: 85.h,width: 85.w,

                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage('image/lentil.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20.r))),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.w, child: Container(height: 22.h,width: 85.w,
                              decoration:BoxDecoration( borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.r) ,bottomLeft:Radius.circular(20.r)),
                                color: Colors.deepOrange,) ,child: Text('Lentil',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),)],
                        ),
                      ),
                    ],),
                ),
              ),
              SizedBox(height: 3.h,),
              CarouselSlider(items: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      image: DecorationImage(
                        image: AssetImage('image/banner2.jpg'),
                        fit: BoxFit.cover,
                      )),),Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      image: DecorationImage( image: AssetImage('image/banner3.jpg'),
                        fit: BoxFit.cover,
                      )),),Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      image: DecorationImage( image: AssetImage('image/banner4.jpg'),
                        fit: BoxFit.cover,
                      )),),Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      image: DecorationImage(image: AssetImage('image/banner1.jpg'),
                        fit: BoxFit.cover,
                      )),),
              ], options: CarouselOptions(
                height:120.h,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                reverse: true,
                // viewportFraction: 0.8
              )),
              SizedBox(height:4.h,),
              Padding(
                padding:EdgeInsets.only(right: 12.w,left: 12.w),
                child: Container(
                  child: Row(
                    children: [
                      Text('Popular Deals',style:GoogleFonts.satisfy(fontSize: 25.sp,fontWeight: FontWeight.bold),),
                      SizedBox(width:130.w,),
                      Container(child: TextButton(onPressed: () {
                        Navigator.pushNamed(context, "/populardeals");
                        }, child: Text('See All',style: TextStyle(color: Colors.deepOrange,fontSize: 17.sp,fontWeight: FontWeight.bold),))
                      ),
                    ],),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 30.w),
                child: Row(
                  children: [
                    Container(
                      height: 185.h, width: 160.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.white),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            top:-35.w,right:12.w,
                            child: CircleAvatar(
                              backgroundImage:AssetImage('image/chicken.jpg'),
                              radius: 68.r,),),
                          Positioned(top: 100.w, left:24.w, child: Text('Chicken',style: GoogleFonts.carterOne(
                            textStyle: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Colors.black),)),),
                          Positioned(top: 130.w, left:44.w,child:Text('1kg,with skin-Boiler',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
                          Positioned(top: 159.w, left:15.w,child: Text('৳220',style: GoogleFonts.fredokaOne(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
                          Positioned(top: 144.w, right:11.w,child: IconButton(onPressed: () {},icon: Icon(Icons.add_box,color: Colors.deepOrange,size: 35.w,),),),
                        ],
                      ),
                    ),
                    SizedBox(width:15.w,),
                    Container(
                      height: 185.h, width: 160.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.white),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            top:-35.w,right:12.w, child: CircleAvatar(
                            backgroundImage: AssetImage('image/apple.jpeg'), radius: 68.r,
                          ),
                          ),
                          Positioned(top: 100.w, left:34.w, child: Text('Red Apple \n',style: GoogleFonts.carterOne(
                            textStyle: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Colors.black),)),),
                          Positioned(top: 130.w, left:10.w,child:Text('1kg,Indian',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
                          Positioned(top: 159.w, left:15.w,child: Text('৳180',style: GoogleFonts.fredokaOne(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
                          Positioned(top: 144.w, right:11.w,child: IconButton(onPressed: () {},icon: Icon(Icons.add_box,color: Colors.deepOrange,size: 35.w,),),),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],),
        ),
      ),
    );
  }
}
