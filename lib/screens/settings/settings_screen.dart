import 'package:GoTrip/screens/favorites/favorite_screen_detailed.dart';
import 'package:GoTrip/screens/settings/login_screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/address/add_address_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    super.initState();
  }

    final List<String> items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    


  @override
  Widget build(BuildContext context) {
    Widget loginButton = InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => LoginScreen())),
      child: Container(
        height: 60,
        margin: EdgeInsets.only(left:15,right:15, bottom:25),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: mainButton,
            borderRadius: BorderRadius.circular(38.0)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            GestureDetector(child: Text("Sign In",
              style: const TextStyle(
                  color: const Color(0xfffefefe),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0)),onTap:() => Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => LoginScreen()))),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(child:
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
                      'Account',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height:10),
                    Text(
                      'Manage Your Account',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff697488)
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ]),
                ),
                SizedBox(height:20),
                loginButton,
                 Padding(
                  padding: const EdgeInsets.only(left:5,right:20),
                  child: MenuList()),
              ],
            ), 
         
      
    )))));
  }
}

class MenuList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Padding(padding: EdgeInsets.only(left:15,top:15), child: Text("Help Support", style: TextStyle(color: Color(0xff051036,), fontWeight: FontWeight.bold, fontSize: 20))),
      SizedBox(height:15),
      ListTile(
        title: Text('Customer Service', style: TextStyle(color: Color(0xff051036,), fontWeight: FontWeight.w700,fontSize: 14),),
        leading: Image.asset('assets/images/customer-service-settings-icon.png',),
        ),
      Padding( padding: EdgeInsets.only(left:20, right:20,), child: Divider(thickness: 1,color: Color(0xffDDDDDD),)),
      ListTile(
        title: Text('Security', style: TextStyle(color: Color(0xff051036), fontWeight: FontWeight.w700),),
        leading: Image.asset('assets/images/security-settings-icon.png'),
        
      ),
        Padding( padding: EdgeInsets.only(left:20, right:20,), child: Divider(thickness: 1,color: Color(0xffDDDDDD),)),
      ListTile(
        title: Text('Legal Information', style: TextStyle(color: Color(0xff051036), fontWeight: FontWeight.w700),),
        leading: Image.asset('assets/images/phihing-settings-icon.png'),
      ),
      SizedBox(height:20),
      Padding(padding: EdgeInsets.only(left:15,top:30), child: Text("Setting", style: TextStyle(color: Color(0xff051036,), fontWeight: FontWeight.bold, fontSize: 20))),
      SizedBox(height:15),
      ListTile(
        title: Text('Currency', style: TextStyle(color: Color(0xff051036,), fontWeight: FontWeight.w700,fontSize: 14),),
        leading: Image.asset('assets/images/currency-settings-icon.png',),
        ),
      Padding( padding: EdgeInsets.only(left:20, right:20,), child: Divider(thickness: 1,color: Color(0xffDDDDDD),)),
      ListTile(
        title: Text('Terms of Service', style: TextStyle(color: Color(0xff051036), fontWeight: FontWeight.w700),),
        leading: Image.asset('assets/images/terms-of-service-icon.png'),
        
      ),
      Padding( padding: EdgeInsets.only(left:20, right:20,), child: Divider(thickness: 1,color: Color(0xffDDDDDD),)),
      ListTile(
        title: Text('Privacy Policy', style: TextStyle(color: Color(0xff051036), fontWeight: FontWeight.w700),),
        leading: Image.asset('assets/images/privacy-policy-icon.png'),
      ),
    ],);
  }
}
