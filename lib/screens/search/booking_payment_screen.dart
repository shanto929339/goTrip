import 'package:GoTrip/screens/search/booking_details_screen.dart';
import 'package:GoTrip/screens/search/payment_details_success_screen.dart';
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


class BookingPaymentScreen extends StatefulWidget {
  @override
  _BookingPaymentScreenState createState() => _BookingPaymentScreenState();
}

class _BookingPaymentScreenState extends State<BookingPaymentScreen> {
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
          'Booking Details',
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:20),
                  Text("How do you want to pay?", style: TextStyle(fontWeight: FontWeight.bold, fontSize:18),),
                  SizedBox(height:20),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Color(0xffDDDDDD),),
                      color: Color(0xffffff)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Full Name'),
                    ),
                  ),
                  SizedBox(height:20),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Color(0xffDDDDDD),),
                      color: Color(0xffffff)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Select payment method'),
                    ),
                  ),
                  SizedBox(height:20),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Color(0xffDDDDDD),),
                      color: Color(0xffffff)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Card holder name'),
                    ),
                  ),
                  SizedBox(height:20),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Color(0xffDDDDDD),),
                      color: Color(0xffffff)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Credit/debit card number'),
                    ),
                  ),
                  SizedBox(height:20),
                  Row(children: [

                  ],),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Color(0xffDDDDDD),),
                      color: Color(0xffffff)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Expiry date'),
                    ),
                  ),
                  SizedBox(height:20),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Color(0xffDDDDDD),),
                      color: Color(0xffffff)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'CVC/CVV *'),
                    ),
                  ),
                  SizedBox(height:20),
                  Image.asset("assets/images/debit-card-icon.png"),
                  
                  SizedBox(height:20),
                  Divider(thickness: 1,),
                  SizedBox(height:20),


                  Text("Get access to members-only deals, just like the millions of other email subscribers"),
                  SizedBox(height:30),
                  GestureDetector(child: 
                    Container(
                          padding: EdgeInsets.only(left:15,right:15,top:15,bottom: 15),
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xff3554D1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("Book Now",style: TextStyle(color:Colors.white, fontSize: 16),),
                            SizedBox(width:10),
                            Image.asset("assets/images/top-right-icon-white.png")
                          ]),
                       ),onTap: (){
                            Navigator.of(context).push(
                                              MaterialPageRoute(builder: (_) => PaymentDetailsSuccessScreen
                                              ()));
                        }),
                   SizedBox(height:30),
                  

                  
                ],
              
          ), padding: EdgeInsets.only(top:20,left: 20,right:20))
      ),
    )));
  }
}