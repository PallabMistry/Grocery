import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery/splashscreen.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum LoginScreen{
  SHOW_MOBILE_ENTER_WIDGET,
  SHOW_OTP_FORM_WIDGET
}
class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController  phoneController = TextEditingController();
  TextEditingController  otpController = TextEditingController();
  LoginScreen currentState = LoginScreen.SHOW_MOBILE_ENTER_WIDGET;
  FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationID = "";
  String initialCountry = 'BD';
  PhoneNumber number = PhoneNumber(isoCode: 'BD');
  void SignOutME() async{
    await _auth.signOut();
  }
  void signInWithPhoneAuthCred(AuthCredential phoneAuthCredential) async
  {

    try {
      final authCred = await _auth.signInWithCredential(phoneAuthCredential);

      if(authCred.user != null)
      {

        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => splashscreen()));
      }
    } on FirebaseAuthException catch (e) {

      print(e.message);
      ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('Some Error Occured. Try Again Later')));
    }
  }


  showMobilePhoneWidget(context){

    return Scaffold(
      backgroundColor:Color(0xffffffcc) ,
      body:SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 50.w,right: 20.w,left: 20.w),
        child: Center(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80.h,),
              Image(image: AssetImage('image/send.png'),height: 200.h,width: 200.w,),
              SizedBox(height: 30.h,),
              Text("Verify Your Phone Number" , style:GoogleFonts.bangers(fontSize: 30.sp,),),
              SizedBox(height: 20.h,),
              Text("Enter Phone Number" , style:TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.black45),),
              SizedBox(height: 20.h,),

              Center(
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.DIALOG,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  initialValue: number,
                  textFieldController:phoneController,
                  formatInput: false,
                  keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
                  inputBorder: OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),


              SizedBox(height: 20.h,),
              ElevatedButton(onPressed: ()  async{
                await _auth.verifyPhoneNumber(

                    phoneNumber: "+880${phoneController.text}",
                    verificationCompleted: (phoneAuthCredential) async{


                    },
                    verificationFailed: (verificationFailed){
                      print(verificationFailed);
                    },

                    codeSent: (verificationID, resendingToken) async{
                      setState(() {

                        currentState = LoginScreen.SHOW_OTP_FORM_WIDGET;
                        this.verificationID = verificationID;
                      });
                    },
                    codeAutoRetrievalTimeout: (verificationID) async{
                    }
                );
              }, child: Text("Send OTP")),
              SizedBox(height: 16.h,),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "/splashscreen");

              }, child: Text('Home',style: GoogleFonts.bangers(fontWeight: FontWeight.bold,),),)



            ],),
        ),
      ),
      ),
    );
  }
  //-------------------------------------------------------

  showOtpFormWidget(context){
    return  SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 80.h,),
            Image(image: AssetImage('image/download.png'),height: 200.h,width: 200.w,),
            SizedBox(height: 30.h,),
            Text("OTP Verification" , style:GoogleFonts.bangers(fontSize: 30.sp,),),
            SizedBox(height: 20.h,),
            Text("Please Enter OTP" , style:TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Colors.black45),),
            SizedBox(height: 20.h,),

            Center(
              child: TextField(
                controller: otpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r) ),
                    hintText: "Enter Your OTP"
                ),
              ),
            ),

            // Center(
            //   child: OTPTextField(
            //
            //     length: 6,
            //     width: MediaQuery.of(context).size.width,
            //     textFieldAlignment: MainAxisAlignment.spaceAround,
            //     fieldWidth: 55.w,
            //     fieldStyle: FieldStyle.box,
            //     outlineBorderRadius: 15.r,
            //     keyboardType: TextInputType.number,
            //
            //
            //     style: TextStyle(fontSize: 17.sp,color: Colors.black),
            //     onChanged: (pin) {
            //       print("Changed: " + pin);
            //     },
            //     onCompleted: (pin) {
            //       print("Completed: " + pin);
            //     },
            //   ),
            //
            //
            // ),

            SizedBox(height: 20.h,),
            ElevatedButton(onPressed: () {

              AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(verificationId: verificationID, smsCode: otpController.text);
              signInWithPhoneAuthCred(phoneAuthCredential);
            }, child: Text("Verify")),
            SizedBox(height: 16.h,),
          ],),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Color(0xffffffcc) ,
      body: currentState == LoginScreen.SHOW_MOBILE_ENTER_WIDGET ? showMobilePhoneWidget(context) : showOtpFormWidget(context),
    );
  }
}