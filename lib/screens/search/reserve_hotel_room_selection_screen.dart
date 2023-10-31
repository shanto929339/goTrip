import 'package:GoTrip/screens/search/reserve_guest_information_screen.dart';
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


class ReserveHotelRoomSelectionScreen extends StatefulWidget {
  @override
  _ReserveHotelRoomSelectionScreenState createState() => _ReserveHotelRoomSelectionScreenState();
}

class _ReserveHotelRoomSelectionScreenState extends State<ReserveHotelRoomSelectionScreen> {
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
          'Select Room',
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
     bottomNavigationBar: BottomAppBar(
        height: 90,
        child:Padding(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left:15,right:15,top:15,bottom: 15),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(children: [
                Text("US\$72", style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.bold, fontSize: 17),)
              ],),
            ],)),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => ReserveGuestInformationScreen()));
              },
              child: Container(
              padding: EdgeInsets.only(left:15,right:15,top:15,bottom: 15),
              height: 55,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xff3554D1)),
              child: Row(children: [
                Text("Reserve",style: TextStyle(color:Colors.white, fontSize: 16),),
                SizedBox(width:10),
                Image.asset("assets/images/top-right-icon-white.png")
              ]),
            ))
          ],
        ), padding: EdgeInsets.only(right:20),),
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset("assets/images/search-image-template.png",fit: BoxFit.cover, height: 190,width:140),
                      SizedBox(width:20),
                      Expanded(child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Row(children: [
                              Image.asset("assets/images/single-star-icon.png"),
                              SizedBox(width: 10,),
                              Image.asset("assets/images/single-star-icon.png"),
                              SizedBox(width: 10,),
                              Image.asset("assets/images/single-star-icon.png"),
                              SizedBox(width: 10,),
                              Image.asset("assets/images/single-star-icon.png"),
                              SizedBox(width: 10,),
                              Image.asset("assets/images/single-star-icon.png"),
                              SizedBox(width: 10,),
                            ],),
                            SizedBox(height:15),
                            
                              Text("Great Northern Hotel, a Tribute Portfolio Hotel, London", style: TextStyle(fontWeight: FontWeight.bold, fontSize:16),)
                            ,
                            SizedBox(height:15),
                            Text("Westminster Borough, London"),
                            SizedBox(height:15),
                            Row(children: [
                              Container(
                                width: 33,
                                height: 33,
                                decoration: BoxDecoration(
                                  color: Color(0xff3554D1),
                                  borderRadius: BorderRadius.circular(5.0), 
                                ),
                                child: Center(
                                  child: Padding(child: Text(
                                    '4.8',
                                    style: TextStyle(
                                      color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),padding: EdgeInsets.all(5),),
                                ),
                              ),
                              SizedBox(width:10),
                              Text("Exceptional", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                              SizedBox(width:10),
                              Text("3,014 reviews", style: TextStyle(fontSize:11,color:Color(0xff697488)),)
                            ],),
                          ],
                        ))
                        
                    ],)
                  ),
                  SizedBox(height:20),
                  Divider(thickness: 1),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Check-in"),
                      SizedBox(height: 10,),
                      Text("Thu 21 Apr 2022", style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("15:00 – 23:00",style: TextStyle(color: Color(0xff697488)),)
                    ],),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      Text("Check-out"),
                      SizedBox(height: 10,),
                      Text("Sat 30 Apr 2022", style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("01:00 – 11:00",style: TextStyle(color: Color(0xff697488)),)
                    ],)
                  ],),
                  SizedBox(height:20),
                  Divider(thickness: 1),
                  SizedBox(height:20),
                  Text("Total length of stay:"),
                  SizedBox(height:10),
                  Text("9 nights", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height:10),
                  Text("Travelling on different dates?", style: TextStyle(color: Color(0xff3554D1),decoration: TextDecoration.underline),),
                  SizedBox(height:20),
                  Divider(thickness: 1),
                  SizedBox(height:20),
                  Text("You selected:"),
                  SizedBox(height:10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Superior Double Studio", style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold),),
                    Text("1 room, 4 adult")
                  ],),
                  SizedBox(height:10),
                  Text("Change your selection", style: TextStyle(color: Color(0xff3554D1),decoration: TextDecoration.underline),),
                  SizedBox(height:30),
                  Text("Your price summary", style: TextStyle(fontWeight: FontWeight.bold, fontSize:16),),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Superior Twin", style: TextStyle(color:Colors.black,),),
                    Text("US\$3,372.34")
                  ],),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Taxes and fees", style: TextStyle(color:Colors.black,),),
                    Text("US\$674.47")
                  ],),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Booking fees", style: TextStyle(color:Colors.black,),),
                    Text("FREE")
                  ],),
                  SizedBox(height:20),
                  Container(
                    padding: EdgeInsets.only(left:15,right:15),
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xffE5F0FD)),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Price", style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
                    Text("US\$4,046.81", style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold))
                  ],)),
                  SizedBox(height:30),
                  Text("Your payment schedule", style: TextStyle(fontWeight: FontWeight.bold, fontSize:16),),
                  SizedBox(height:30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Before you stay you'll pay", style: TextStyle(color:Colors.black,),),
                    Text("US\$4,047")
                  ],),
                  SizedBox(height:40),
                  Text("Do you have a promo code?", style: TextStyle(fontWeight: FontWeight.bold, fontSize:16),),
                  SizedBox(height:20),
                  Container(
                  // margin: EdgeInsets.only(left:20,right:20),
                  padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Color(0xffDDDDDD),),
                    color: Color(0xffffff)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Enter promo code'),
                  ),
                ),
                  SizedBox(height:20),
                  Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(border: Border.all(color: Color(0xff3554D13554D1),), borderRadius: BorderRadius.all(Radius.circular(10))),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text("Apply", style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff3554D13554D1)),),
                
                    ],)
                  ),
                  SizedBox(height:30),
                  



                  
                ],
              
          ), padding: EdgeInsets.only(top:20,left: 20,right:20))
      ),
    )));
  }
}