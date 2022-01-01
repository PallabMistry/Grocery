import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class populardeals extends StatefulWidget {
  const populardeals({Key? key}) : super(key: key);

  @override
  _populardealsState createState() => _populardealsState();
}

class _populardealsState extends State<populardeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6f2ff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5.h,width: ScreenUtil().screenWidth,),
            Padding(
              padding:  EdgeInsets.all(20.w),
              child: Row(
                children: [
                  Container(
                    child:IconButton(onPressed: () {
                      Navigator.pushNamed(context,"/profile");
                    }, icon: Icon(Icons.arrow_back_ios,size: 30,))
                  ),
                  SizedBox(width: 40.w,),
                  Text('Popular Deals',style:GoogleFonts.carterOne(fontSize: 24.sp),),
                ],),
            ),
            // SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.only(left: 12.w,right: 12.w),
              child: TextField(
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.black54,),
                    hintText: 'Search for Anything',
                    hintStyle: GoogleFonts.openSans(color: Colors.black54),
                    fillColor: Colors.white,
                    filled:true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.r)
                    )),
              ),
            ),
           SizedBox(height: 20.h,),
            SingleChildScrollView(
              reverse: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 21.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 185.h,
                          width: 160.w,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.white),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                top:-35.w,right:12.w,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('image/apple.jpeg'),
                                  radius: 68.r,
                                ),
                              ),
                              Positioned(top: 100.w, left:25.w, child: Text('Red Apple',style: GoogleFonts.carterOne(
                                textStyle: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Colors.black),)),),
                              Positioned(top: 130.w, left:44.w,child:Text('1kg,Indian',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
                              Positioned(top: 159.w, left:15.w,child: Text('৳220',style: GoogleFonts.fredokaOne(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
                              Positioned(top: 145.w, right:11.w,child: IconButton(onPressed: () {},icon: Icon(Icons.add_box,color: Colors.deepOrange,size: 35.w,),),),
                            ],
                          ),
                        ),
                        SizedBox( width:15.w,),
                        Container(
                          height: 185.h, width: 160.w,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.white),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                top:-35.w,right:12.w, child: CircleAvatar(
                                backgroundImage: AssetImage('image/chicken.jpg'), radius: 68.r,
                              ),),
                              Positioned(top: 100.w, left:38.w, child: Text('Chicken \n',style: GoogleFonts.carterOne(
                                textStyle: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Colors.black),)),),
                              Positioned(top: 130.w, left:14.w,child:Text('1kg,with skin-Boiler',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
                              Positioned(top: 159.w, left:15.w,child: Text('৳180',style: GoogleFonts.fredokaOne(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
                              Positioned(top: 144.w, right:11.w,child: IconButton(onPressed: () {},icon: Icon(Icons.add_box,color: Colors.deepOrange,size: 35.w,),),),
                            ],
                          ),
                        ),
                      ],
                    ), SizedBox(height:40.h,),
                    Row(
                      children: [
                        Container(
                          height: 185.h,
                          width: 160.w,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.white),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                top:-35.w,right:12.w,
                                child: CircleAvatar(backgroundImage:AssetImage('image/mutton.jpeg'), radius: 68.r,
                                ),),
                              Positioned(top: 100.w, left:38.w, child: Text('Mutton',style: GoogleFonts.carterOne(
                                textStyle: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Colors.black),)),),
                              Positioned(top: 130.w, left:70.w,child:Text('1kg',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
                              Positioned(top: 159.w, left:15.w,child: Text('৳850',style: GoogleFonts.fredokaOne(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
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
                                backgroundImage:AssetImage('image/rohu.jpg'), radius: 68.r,
                              ),
                              ),
                              Positioned(top: 100.w, left:30, child: Text('Rohu Fish',style: GoogleFonts.carterOne(
                                textStyle: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Colors.black),)),),
                              Positioned(top: 130.w, left:70.w,child:Text('1kg',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
                              Positioned(top: 159.w, left:15.w,child: Text('৳220',style: GoogleFonts.fredokaOne(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
                              Positioned(top: 144.w, right:11.w,child: IconButton(onPressed: () {},icon: Icon(Icons.add_box,color: Colors.deepOrange,size: 35.w,),),),
                            ],
                          ),
                        ),
                      ],
                    ), SizedBox(height:40.h,),
                    Row(
                      children: [
                        Container(
                          height: 185.h,
                          width: 160.w,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.white),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                top:-35.w,right:12.w,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('image/hilsa.jpg'),
                                  radius: 68.r,
                                ),),
                              Positioned(top: 100.w, left:50.w, child: Text('Hilsha',style: GoogleFonts.carterOne(
                                textStyle: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Colors.black),)),),
                              Positioned(top: 130.w, left:46.w,child:Text('1kg,Padma',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
                              Positioned(top: 159.w, left:15.w,child: Text('৳1400',style: GoogleFonts.fredokaOne(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
                              Positioned(top: 144.w, right:11.w,child: IconButton(onPressed: () {},icon: Icon(Icons.add_box,color: Colors.deepOrange,size: 35.w,),),),
                            ],
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        Container(
                          height: 185.h, width: 160.w,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Colors.white),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                top:-35.w,right:12.w, child: CircleAvatar(
                                backgroundImage: AssetImage('image/rices.jpg'), radius: 68.r,
                              ),
                              ),
                              Positioned(top: 100.w, left:60.w, child: Text('Rice',style: GoogleFonts.carterOne(
                                textStyle: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Colors.black),)),),
                              Positioned(top: 130.w, left:15.w,child:Text('1kg,28,29,Minicate',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),)),
                              Positioned(top: 159.w, left:15.w,child: Text('৳55-80',style: GoogleFonts.fredokaOne(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
                              Positioned(top: 144.w, right:11.w,child: IconButton(onPressed: () {},icon: Icon(Icons.add_box,color: Colors.deepOrange,size: 35.w,),),),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            )

          ],

        ),
      ),


    );
  }
}
