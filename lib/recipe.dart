import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class recipe extends StatefulWidget {
  const recipe({Key? key}) : super(key: key);

  @override
  _recipeState createState() => _recipeState();
}

class _recipeState extends State<recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6f2ff),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Row(
              children: [
                Text('choose your one \nfrom 1000+ Recipes!',style:GoogleFonts.carterOne(fontSize: 23.sp),),
                // SizedBox(width:60.w,),
              ],),
          ),
          // SizedBox(height: 10.0,),
          Padding(
            padding:EdgeInsets.only(left: 15.w,right: 15.w),
            child: TextField(
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
                  SizedBox(width:168.w,),
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
          SizedBox(height:4.h,),
          Padding(
            padding:EdgeInsets.only(right: 12.w,left: 12.w),
            child: Container(
              child: Row(
                children: [
                  Text('Popular Deals',style:GoogleFonts.satisfy(fontSize: 25.sp,fontWeight: FontWeight.bold),),
                  SizedBox(width:136.w,),
                  Container(child: TextButton(onPressed: () {
                    Navigator.pushNamed(context, "/populardeals");
                  }, child: Text('See All',style: TextStyle(color: Colors.deepOrange,fontSize: 17.sp,fontWeight: FontWeight.bold),))
                  ),
                ],),
            ),
          ),
        ],
      ),

    );
  }
}