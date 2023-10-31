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


class BookingDetailsScreen extends StatefulWidget {
  @override
  _BookingDetailsScreenState createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
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
          'Your Details',
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
                  Container(
                    padding: EdgeInsets.only(left:15,right:15),
                    height: 70,
                    decoration: BoxDecoration(color: Color(0xfff5f6fe)),
                    child: Row(
                    children: [
                    Expanded(child: Text("Sign in to book with your saved details or register to manage your bookings on the go!", style: TextStyle(color:Colors.black),),
                    )
                  ],)),
                  SizedBox(height:30),
                  Text("Let us know who you are", style: TextStyle(fontWeight: FontWeight.bold, fontSize:18),),
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
                          border: InputBorder.none, hintText: 'Email'),
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
                          border: InputBorder.none, hintText: 'Phone Number'),
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
                          border: InputBorder.none, hintText: 'Select Country'),
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
                          border: InputBorder.none, hintText: 'Select City'),
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
                          border: InputBorder.none, hintText: 'Address Line 1'),
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
                          border: InputBorder.none, hintText: 'Address Line 2'),
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
                          border: InputBorder.none, hintText: 'State/Province/Region'),
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
                          border: InputBorder.none, hintText: 'ZIP Code/Postal Code'),
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
                          border: InputBorder.none, hintText: 'Special Requests'),
                    ),
                  ),
                  SizedBox(height:20),

                  Text("By proceeding with this booking, I agree to GoTrip Terms of Use and Privacy Policy."),
                  SizedBox(height:30),
                  GestureDetector(child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left:15,right:15,top:15,bottom: 15),
                          height: 55,
                          width: 200,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xff3554D1)),
                          child: Row(children: [
                            Text("Next: Final details",style: TextStyle(color:Colors.white, fontSize: 16),),
                            SizedBox(width:10),
                            Image.asset("assets/images/top-right-icon-white.png")
                          ]),
                       ),]),onTap: (){
                            // Navigator.of(context).push(
                            //                   MaterialPageRoute(builder: (_) => ReserveHotelRoomSelectionScreen()));
                        }),
                   SizedBox(height:30),
                    Container(padding: EdgeInsets.only(left:15,right:15,top:15,bottom:15), height:100, color: Color(0xffEBFCEA),child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Image.asset("assets/images/money-icon-check.png"),
                      SizedBox(width: 20,),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Good to know:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        SizedBox(height:10),
                        Text("Free cancellation until 14:00 on 21 April 2022")
                      ],))
                    ]),),
                     SizedBox(height:30),
                    Container(padding: EdgeInsets.only(left:15,right:15,top:15,bottom:15),height:130, color: Color(0xffF5F5F5),child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Image.asset("assets/images/limited-supply-icon.png"),
                      SizedBox(width: 20,),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Limited supply in London for your dates:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        SizedBox(height:10),
                        Text("27 four-star hotels like this are already unavailable on our site")
                      ],))
                    ]),),
                    SizedBox(height:30)
                  



                  
                ],
              
          ), padding: EdgeInsets.only(top:20,left: 20,right:20))
      ),
    )));
  }
}