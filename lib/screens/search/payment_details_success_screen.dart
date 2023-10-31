import 'package:GoTrip/screens/search/booking_details_screen.dart';
import 'package:GoTrip/screens/search/booking_payment_screen.dart';
import 'package:GoTrip/screens/search/search_list_screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/address/add_address_page.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class PaymentDetailsSuccessScreen extends StatefulWidget {
  @override
  _PaymentDetailsSuccessScreenState createState() => _PaymentDetailsSuccessScreenState();
}

class _PaymentDetailsSuccessScreenState extends State<PaymentDetailsSuccessScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    super.initState();
  }

  final List<Map<String,dynamic>> priceRoomItems = [
    { 
      "roomName": "Standard Twin Room" ,
      "roomPrices": ['1 (US\$ 3,120)',
    '2 (US\$ 6,240)',
    '3 (US\$ 9,360)']},

     { 
      "roomName": "Deluxe King Room" ,
      "roomPrices": ['1 (US\$ 3,120)',
    '2 (US\$ 6,240)',
    '3 (US\$ 9,360)']}
  ];


  @override
  Widget build(BuildContext context) {
   
    return   Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: darkGrey),
        leading: GestureDetector(
                    
                    onTap: (){ Navigator.pop(context);}, child: Padding( padding: EdgeInsets.only(left:20,), child: Image.asset("assets/images/back-icon-page.png"))),
   
        title: Text(
          'Payment Details',
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
     body: AnnotatedRegion<SystemUiOverlayStyle>(
         value: SystemUiOverlayStyle.light,                
         child: SafeArea(
          bottom: true,
          child: SingleChildScrollView(
            child: 
            Padding(child: Column(
                children: [
                 SizedBox(height:20),
                  Image.asset("assets/images/booking-success-icon.png"),
                  SizedBox(height:20),
                  Text("System, your order was submitted successfully!", style: TextStyle(fontWeight: FontWeight.bold, fontSize:18),textAlign: TextAlign.center,),
                  SizedBox(height:20),
                  Text("Booking details has been sent to: admin@bookingcore.test", style: TextStyle(color:Color(0xff697488)),textAlign: TextAlign.center,),
                  SizedBox(height:20),

                  Text("Your Information", style: TextStyle(fontWeight: FontWeight.bold, fontSize:16),textAlign: TextAlign.start,),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("First name"),
                    Text("System")
                  ],),
                  SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Last name"),
                    Text("Admin")
                  ],),
                  SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Email"),
                    Text("admin@bookingcore.test")
                  ],),
                  SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Phone"),
                    Text("112 666 888")
                  ],),
                  SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Address line 1"),
                    Text("123 Boulevard")
                  ],),
                  SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Address line 2"),
                    Text("")
                  ],),
                  SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("City"),
                    Text("New York")
                  ],),
                  SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("State/Province/Region"),
                    Text("")
                  ],),
                  SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("ZIP code/Postal code"),
                    Text("")
                  ],),
                   SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Country"),
                    Text("United States")
                  ],),
                   SizedBox(height:5),
                  Divider(thickness: 1,),
                  SizedBox(height:5),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Special Requirements"),
                    Text("")
                  ],),

                   SizedBox(height:30),
                  

                  
                ],
              
          ), padding: EdgeInsets.only(top:20,left: 20,right:20))
      ),
    )));
  }
}