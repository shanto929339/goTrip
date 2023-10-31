import 'package:GoTrip/screens/search/search_list_screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/address/add_address_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class HotelBookingScreen extends StatefulWidget {
  @override
  _HotelBookingScreenState createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    Widget searchButton = InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => SearchListScreen())),
      child: Container(
        height: 50,
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
            Image.asset("assets/images/search-button-icon.png"),
            SizedBox(width:10),
            Text("Search",
              style: const TextStyle(
                  color: const Color(0xfffefefe),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0)),
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: darkGrey),
        leading: GestureDetector(
                    
                    onTap: (){ Navigator.pop(context);}, child: Padding( padding: EdgeInsets.only(left:20,), child: Image.asset("assets/images/back-icon-page.png"))),
   
        title: Text(
          'Hotel Booking',
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
      
      bottomSheet: Container( child: searchButton),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
         value: SystemUiOverlayStyle.light,                
         child: SafeArea(
          bottom: true,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[ ListTile(
                  title: Text('Location'),
                  subtitle: Text('Where are you going?'),
                  leading: Image.asset('assets/images/location-icon.png',),
                  ),
                Padding( padding: EdgeInsets.only(left:20, right:20,), child: Divider(thickness: 1,color: Color(0xffDDDDDD),)),
                ListTile(
                  title: Text('Check in - Check out'),
                  subtitle: Text('Wed 2 Mar - Fri 11 Apr'),
                  leading: Image.asset('assets/images/checkin-checkout-icon.png'),
                  
                ),
                 Padding( padding: EdgeInsets.only(left:20, right:20,), child: Divider(thickness: 1,color: Color(0xffDDDDDD),)),
                ListTile(
                  title: Text('Guest'),
                  subtitle: Text('2 adults - 1 children - 1 room'),
                  leading: Image.asset('assets/images/guest-booking-icon.png'),
                ),
          ])
         
      ),
    ))));
  }
}