import 'package:GoTrip/screens/favorites/favorite_screen_detailed.dart';
import 'package:GoTrip/screens/home/home_screen.dart';
import 'package:GoTrip/screens/settings/signup_screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/address/add_address_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    super.initState();
  }

  Widget OtherSignInWidgets = Container(margin: EdgeInsets.only(left:20,right:20),
    child: Column(
    
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height:10),
      Text("or sign in with", textAlign: TextAlign.center, style: TextStyle(fontSize: 18),),
      SizedBox(height:20),
      Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Add your Facebook button click logic here
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // White background
          onPrimary: Color(0xff1967D2), // Blue border color
          side: BorderSide(
            color: Color(0xff1967D2), //  Blue border color
           
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
          ),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/facebook-logo.png', // Replace with the path to your Apple logo image
              height: 24, // Adjust the image height as needed
            ),
            SizedBox(width: 8), // Adjust the spacing as needed
            Text(
              'Facebook',
              style: TextStyle(
                color: Color(0xff1967D2), // Blue text color
                fontSize: 16, // Adjust the text size
              ),
            ),
          ],
        ),
      ),),
      SizedBox(height:20),
      Container(
      width: double.infinity,
      height:50,
      child: ElevatedButton(
        onPressed: () {
          // Add your Google button click logic here
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // White background
          onPrimary: Color(0xffD93025), // Blue border color
          side: BorderSide(
            color: Color(0xffD93025), // Blue border color
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google-logo.png', // Replace with the path to your Google logo image
              height: 24, // Adjust the image height as needed
            ),
            SizedBox(width: 8), // Adjust the spacing as needed
            Text(
              'Google',
              style: TextStyle(
                color: Color(0xffD93025), // Blue text color
                fontSize: 16, // Adjust the text size
              ),
            ),
          ],
        ),
      ),
    ),
    SizedBox(height:20),
    Container(
      width: double.infinity,
      height:50,
      child: ElevatedButton(
        onPressed: () {
          // Add your Apple button click logic here
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // White background
          onPrimary: Colors.black, // Blue border color
          side: BorderSide(
            color: Colors.black, // Blue border color
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/apple-logo.png', // Replace with the path to your Apple logo image
              height: 24, // Adjust the image height as needed
            ),
            SizedBox(width: 8), // Adjust the spacing as needed
            Text(
              'Apple',
              style: TextStyle(
                color: Colors.black, // Blue text color
                fontSize: 16, // Adjust the text size
              ),
            ),
          ],
        ),
      ),
    ),
    SizedBox(height:20),
    Text("By signing in, I agree to GoTrip Terms of Use and Privacy Policy.", style:TextStyle(fontSize: 16), textAlign: TextAlign.center,),
    SizedBox(height:30),
  ],));

  @override
  Widget build(BuildContext context) {
    Widget loginButton = InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => HomeScreen())),
      child: Container(
        height: 60,
        margin: EdgeInsets.only(left:15,right:15, bottom:25),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: mainButton,
            borderRadius: BorderRadius.circular(48.0)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text("Sign In",
              style: const TextStyle(
                  color: const Color(0xfffefefe),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0)),
             SizedBox(width:10),
            Image.asset("assets/images/signin-settings-icon.png"),
          ],)
        ),
      ),
    );


    return  AnnotatedRegion<SystemUiOverlayStyle>(
    value:  SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Color of you choice
      statusBarIconBrightness: Brightness.light,
    ),
    child: Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: darkGrey),
        leading: GestureDetector(
                    
                    onTap: (){ Navigator.pop(context);}, child: Padding( padding: EdgeInsets.only(left:20,), child: Image.asset("assets/images/back-icon-page.png"))),
   
        title: Text(
          'Login',
          style: TextStyle(
              color: darkGrey, fontWeight: FontWeight.w500, fontSize: 18.0),
              textAlign: TextAlign.center,
        ),
        bottom: PreferredSize(
                preferredSize: const Size.fromHeight(4.0),
                child: Container(
                    color: Color(0xffDDDDDD),
                    height: 1.5,
                ),
              )
      ),
      
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:
         AnnotatedRegion<SystemUiOverlayStyle>(
         value: SystemUiOverlayStyle.light,                
         child: SafeArea(
          bottom: true,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20,right:20,top:20, bottom:15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height:10),
                    Row(children: [
                       Text(
                        'Don\'t have an account yet?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff697488)
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(width:10),
                      GestureDetector(child: Text(
                        'Sign up for free',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff3554D1)
                        ),
                        textAlign: TextAlign.start,
                      ),onTap: () {
                        
                        Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => SignupScreen()));
                      },)
                    ],)
                   
                  ]),
                ),
                SizedBox(height:20),
                Container(
                  margin: EdgeInsets.only(left:20,right:20),
                  padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Color(0xffDDDDDD),),
                    color: Color(0xffffff)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Email'),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left:20,right:20),
                  padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Color(0xffDDDDDD),),
                    color: Color(0xffffff)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Password'),
                  ),
                ),
                SizedBox(height:20),
                Padding( padding: EdgeInsets.only(left: 20.0, top: 4.0, bottom: 4.0),child: Text("Forgot your password?", style: TextStyle(color: Color(0xff3554D1), decoration: TextDecoration.underline , fontWeight: FontWeight.bold),)),
                SizedBox(height:30),
                loginButton,
                OtherSignInWidgets,
              ],
            ), 
         
      
    )))));
  }
}