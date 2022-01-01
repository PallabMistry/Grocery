import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/splashscreen.dart';
import 'package:lottie/lottie.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  bool _obscureText=true;
  signup()async{
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email:_emailController.text,
          password:_passwordController.text
      );
      var authCredential=userCredential.user;
      print(authCredential!.uid);
      if(authCredential.uid.isNotEmpty){
        Navigator.pushNamed(context, "/splashscreen");
        // Navigator.push(context, CupertinoPageRoute(builder: (_)=> splashscreen()));
      }
      else {
            Fluttertoast.showToast(msg:'You havent signed up yet');
        }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg:'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(msg:'The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding( padding: EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Lottie.asset('image/signup.json') ,


              Text('Welcome to Registration Page.',style: GoogleFonts.carterOne(fontSize: 30.sp,color: Colors.deepOrangeAccent),),
              Text('Please write to correct information.',  style: GoogleFonts.satisfy(fontSize: 20.sp,color: Color(0xFF00bfff),),),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Container(
                    height: 38.h,width: 41.w,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,borderRadius: BorderRadius.circular(12.r)),
                    child: Center(
                      child: Icon(Icons.email_outlined,color: Colors.white,size: 20.w,),
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  Expanded(child: TextField(
                    controller:  _emailController,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(fontSize: 20.sp, color: Colors.black),
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 20.sp, color: Colors.blue,),
                      )
                  )),
                ],),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Container(
                    height: 38.h,width: 41.w,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,borderRadius: BorderRadius.circular(12.r)),
                    child: Center(
                      child: Icon(Icons.lock_outline,color: Colors.white,size: 20.w,),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(child: TextField(
                      controller:_passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          hintText: 'password must be 7 character ',
                          hintStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
                          labelText: 'PassWord',
                          labelStyle: TextStyle(fontSize: 20.sp, color: Colors.blue,),
                          suffixIcon: _obscureText ==true
                              ? IconButton(onPressed: () {
                            setState(() {
                              _obscureText=false;
                            });
                          },
                              icon:Icon(Icons.remove_red_eye,size:20.w))
                             : IconButton(onPressed: () {
                            setState(() {
                              _obscureText=true;
                            });
                          },
                               icon: Icon(Icons.visibility_off,size:20.w),
                          )
                      ),
                  ),
                  ),],
              ),
              SizedBox(height: 25.h,),
              SizedBox(width: 10.sw,height: 56.h,
                child: ElevatedButton(onPressed: () {
                  signup();

                }, child: Text('Continue',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold),)),
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Text('Already have an Accounts? ',  style: GoogleFonts.satisfy(fontSize: 20.sp,color: Color(0xFF00bfff),),),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, "/otp ");

                  }, child: Text('LogIn',style:GoogleFonts.secularOne(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.red)))
                ],
              ),
            ],),
          )
        ),
    );
  }
}




