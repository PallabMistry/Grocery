import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}
class _profileState extends State<profile> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffe6f2ff),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 44.w,),//SizedBox(height: 10.0,),
                Text('PROFILE',style: GoogleFonts.luckiestGuy(color: Colors.black,fontSize: 40.sp),
                ),
                FloatingActionButton(
                  backgroundColor:Colors.white ,
                  mini: true,
                  onPressed: () {
                    Navigator.pushNamed(context, "/editprofile");
                  },
                  child: Icon(Icons.settings,size:25.w,color: Colors.black,),
                ),
              ],),
            SizedBox(height: 100.h,),

            Container(
              height: 180.h,
              width: 300.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.r,
                        spreadRadius: 2.r,
                        color: Colors.grey.shade300
                      // offset: Offset(0.0, 3.0)
                    )
                  ]),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                      top: -95.w,
                      left: 80.w,
                      child: Container(
                        height: 180.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 6.w),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.r,
                                offset: Offset(0.r, 3.r),
                                color: Colors.grey.shade400,
                              )
                            ]),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(90.r),
                            child: Image.asset('image/pol.jpg',
                              height: 160.h,
                              width: 160.w,
                              fit: BoxFit.cover,)),
                      )),
                  Positioned(
                    top: 90.w,
                    left: 86.w,
                    child: Text('Pallab Mistry', style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 26.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ),
                  Positioned(
                      top: 120.w,
                      left: 130.w,
                      child:TextButton(onPressed: () {
                        }, child: Text('Log out',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20.sp,color:Colors.blue ,
                                  fontWeight: FontWeight.bold))))
                    )
                ],),
            ),
            SizedBox(height: 20.w,),

            Container(
              height:60.h,
              child: Card(
                margin: EdgeInsets.only(right: 10.w,left: 10.w),shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
                child: ListTile(
                  leading:FloatingActionButton.small(onPressed: () {},
                    backgroundColor: Colors.deepOrange,child: Icon(Icons.av_timer),),
                  title: Text('Order history',style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              height: 60.h,
              child: Card(
                margin:EdgeInsets.only(right: 10.w,left: 10.w,top: 10.w),shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),),
                child: ListTile(
                  leading:FloatingActionButton.small(onPressed: () {},
                    backgroundColor: Colors.deepOrange,child: Icon(Icons.house),),
                  title: Text('Delivery address',style: TextStyle(fontWeight: FontWeight.bold),
                  ),),
              ),
            ),
            Container(
              height: 60.h,
              child: Card(
                margin:EdgeInsets.only(right: 10.w,left: 10.w,top: 10.w),shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),),
                child: ListTile(
                  leading:FloatingActionButton.small(onPressed: () {},
                    backgroundColor: Colors.deepOrange,child: Icon(Icons.payment),),
                  title: Text('Cards & payment',style: TextStyle(fontWeight: FontWeight.bold),
                  ),),
              ),
            ),
            Container(
              height: 60.h,
              child: Card(
                margin:EdgeInsets.only(right: 10.w,left: 10.w,top: 10.w),shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),),
                child: ListTile(
                  leading: FloatingActionButton.small(onPressed: () {},
                      backgroundColor: Colors.deepOrange, child: Icon(Icons.my_location, )),
                  title: Text('Tracking my order', style: TextStyle(fontWeight: FontWeight.bold),
                  ),),
              ),
            ),
          ],),
      ),
    );
  }
}
// ----------------------


class editprofile extends StatelessWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6f2ff),
      body:
      Padding(
        padding: EdgeInsets.all(8.w),
        child: ListView(
          children: [
            Row(
              children: [
                FloatingActionButton(
                  backgroundColor:Colors.white ,
                  mini: true,
                  onPressed: () {
                    Navigator.pushNamed(context, "/profile");
                  },
                  child: Icon(Icons.arrow_back_ios,size: 25.w,color: Colors.black,),
                ),
                SizedBox(width: 50.w,),
                Text('Edit profile',style: GoogleFonts.fredokaOne(color: Colors.black,fontSize: 40.sp),
                ),
              ],),
            Container(
              padding: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Stack(
                      overflow: Overflow.visible,
                      children:[
                        Container(
                          height: 180.h, width: 180.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,width:6.w),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.r,
                                  offset: Offset(0.w, 3.w),
                                  color: Colors.grey.shade400,
                                )
                              ]
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.r),
                              child: Image.asset('image/pol.jpg',height: 180.h,width: 180.w,fit: BoxFit.cover,)
                          ),
                        ),
                        Positioned(
                          bottom: -6.w,
                          right: 0.w,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white70,width: 3.w),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5.r, spreadRadius: 1.r,
                                      // offset: Offset(0.0, 3.0),
                                      color: Colors.grey.shade300,
                                    )
                                  ],
                                  color: Colors.deepOrangeAccent
                              ),
                              child: IconButton(onPressed: (){
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryAddresses()));
                              }, icon: Icon(Icons.create_sharp,color: Colors.white,size: 30.w,))),
                        )
                      ]
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'My Phone',
                      hintText: 'Enter Your Number',
                      labelStyle: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.blue,
                      ),
                      hintStyle: TextStyle(fontSize: 20.sp, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.black,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    maxLength: 20,
                  ),
                  SizedBox(height: 15.h),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter Your Email',
                      labelStyle: TextStyle(fontSize: 20.sp, color: Colors.blue,),
                      hintStyle: TextStyle(fontSize: 20.sp, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Colors.black,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    maxLength: 20,
                  ),
                  SizedBox(height: 15.h),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Enter Your Email',
                      labelStyle: TextStyle(
                        fontSize: 20.sp, color: Colors.blue,
                      ),
                      hintStyle: TextStyle(fontSize: 20.sp, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Colors.black,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    maxLength: 40,
                  ),
                  SizedBox(height: 15.h),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'PassWord',
                      hintText: 'Enter Your PassWord',
                      labelStyle: TextStyle(fontSize: 18.sp, color: Colors.blue),
                      hintStyle: TextStyle(fontSize: 20.sp, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      suffix: Icon(Icons.remove_red_eye_outlined),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    obscuringCharacter: '*',
                    maxLength: 15,
                  )
                ],
              ),
            ),
          ],),
      ),
    );
  }
}

