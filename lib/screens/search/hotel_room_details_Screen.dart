import 'package:GoTrip/screens/search/search_list_screen.dart';
import 'package:GoTrip/screens/search/select_hotel_room_details_screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/address/add_address_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class HotelRoomDetailsScreen extends StatefulWidget {
  @override
  _HotelRoomDetailsScreenState createState() => _HotelRoomDetailsScreenState();
}

class _HotelRoomDetailsScreenState extends State<HotelRoomDetailsScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    super.initState();
  }
  
  Widget ReviewList () {
      return Container(
                height:500,
                child:    ListView.builder(
    
              itemBuilder: (_, index) =>Padding(
                padding: EdgeInsets.only(top:30),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                      Image.asset("assets/images/user-review-placeholder.png"), 
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Text("Tonko", style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10),
                        Text("March 2022", style: TextStyle(fontWeight: FontWeight.normal, color: Color(0xff697488)),)
                      ],)
                ],),
                SizedBox(height:20),
                Text("9.2 Superb", style: TextStyle(color: Color(0xff3554D1), fontWeight: FontWeight.bold),),
                SizedBox(height:10),
                Text("Nice two level apartment in great London location. Located in quiet small street, but just 50 meters from main street and bus stop.", 
                style: TextStyle(color: Colors.black),),
                SizedBox(height:20),
                
                Row(children: [
                      Image.asset("assets/images/review-image-placeholder.png"), 
                      SizedBox(width:10),
                      Image.asset("assets/images/review-image-placeholder.png"), 
                      SizedBox(width:10),
                      Image.asset("assets/images/review-image-placeholder.png"), 
                  ],),
                SizedBox(height:20),
                Row(children: [
                   Row(children: [
                      Image.asset("assets/images/list-view-like-icon.png"), 
                      SizedBox(width:10),
                      Text("Helpful", style: TextStyle(color: Color(0xff3554D1)),)
                  ],),
                  SizedBox(width: 30,),
                   Row(children: [
                    Image.asset("assets/images/list-view-dislike-icon.png"), 
                    SizedBox(width:10),
                    Text("Not helpful")
                ],)
                ],)
               
              ],)),
              itemCount: 10,
              scrollDirection: Axis.vertical));
  }
  
  @override
  Widget build(BuildContext context) {
   
    return   Scaffold(
      backgroundColor: Colors.white,
     bottomNavigationBar: BottomAppBar(
        height: 90,
        child:Padding(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left:15,right:15,top:15,bottom: 15),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(children: [
                Text("From", style: TextStyle(color: Color(0xff697488), fontSize: 17),),
                SizedBox(width:5),
                Text("US\$72", style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.bold, fontSize: 17),)
              ],),
              SizedBox(height:10),
              Row(children: [
                Text("10 - 20 April", style: TextStyle(color: Color(0xff697488), decoration: TextDecoration.underline, fontSize: 17),),
                SizedBox(width:8),
                Text("|", style: TextStyle(color: Color(0xff697488)),),
                SizedBox(width:8),
                Text("2 adults", style: TextStyle(color: Color(0xff697488), decoration: TextDecoration.underline, fontSize: 17),),
              ],)
            ],)),
            GestureDetector(child: Container(
              padding: EdgeInsets.only(left:15,right:15,top:15,bottom: 15),
              height: 55,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xff3554D1)),
              child: Row(children: [
                Text("Select Room",style: TextStyle(color:Colors.white, fontSize: 16),),
                SizedBox(width:10),
                Image.asset("assets/images/top-right-icon-white.png")
              ]),
            ),onTap: (){
              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => SelectHotelRoomDetailsScreen()));
            },)
          ],
        ), padding: EdgeInsets.only(right:20),),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
         value: SystemUiOverlayStyle.light,                
         child: SafeArea(
          bottom: true,
          child: SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: <Widget>[
                    Image.asset("assets/images/hotel-image.jpeg"),
                    Positioned(
                      top: -3, // Adjust the top position as needed
                      right: -12, // Adjust the right position as needed
                      child: Image.asset("assets/images/unselected-heart-icon.png")
                    ),
                    Positioned(
                      top: 20, 
                      left: 0,
                      child: GestureDetector(
                      
                      onTap: (){ Navigator.pop(context);}, child: Padding( padding: EdgeInsets.only(left:20,), child: Image.asset("assets/images/back-icon-page.png", width:30,))),)
                  ]
                ),
                SizedBox(height:10),
                Padding(padding: EdgeInsets.only(left:15, right: 15), child:
                Text("Warwick Allerton Hotel Chicago", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23))),
                Padding(padding: EdgeInsets.only(left:15, right: 15,top:10), child: Column(
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
                    SizedBox(height:18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/hotel-details-location-icon.png"),
                        SizedBox(width:7),
                        Expanded(child: RichText(
                          text: TextSpan(
                            text: 'Moscow Road , Kensington and Chelsea, London, W2 4EL, United Kingdom ',
                            style: TextStyle(fontSize:16, color:Color(0xff697488)),
                            children: const <TextSpan>[
                              TextSpan(text: 'Show on Map', style: TextStyle(color: Color(0xff3554D1),decoration: TextDecoration.underline) ),
                            ],
                          ),
                        )),
                    ],),
                    SizedBox(height:18),
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
                              fontSize: 12,
                            ),
                          ),padding: EdgeInsets.all(5),),
                        ),
                      ),
                      SizedBox(width:10),
                      Text("Exceptional", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                      SizedBox(width:10),
                      Text("3,014 reviews", style: TextStyle(fontSize:12,color:Color(0xff697488)),)
                    ],),

                    SizedBox(height:30),

                    Text("Property Highlights", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.start,),

                    SizedBox(height:25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Image.asset("assets/images/city-center-icon.png"),
                        SizedBox(height:20),
                        Text("In London City Centre")
                      ],),

                      SizedBox(width: 30,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Image.asset("assets/images/airport-transfer-icon.png"),
                        SizedBox(height:20),
                        Text("Airport Transfer")
                      ],),
                      
                      ],
                    ),
                    SizedBox(height:30),
                    Row(
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Image.asset("assets/images/bell-ring-icon.png"),
                        SizedBox(height:20),
                        Text("Front desk [24-hour]")
                      ],),
                       SizedBox(width: 30,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Image.asset("assets/images/tv-icon.png"),
                        SizedBox(height:20),
                        Text("Premium TV channels")
                      ],),
                      
                      ],
                    ),
                    SizedBox(height:20),
                    Divider(thickness: 1,),
                    SizedBox(height:20),

                    Text("Overview", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.start,),

                    SizedBox(height:15),
                    Text("You can directly book the best price if your travel dates are available, all discounts are already included. In the following house description you will find all information about our listing.")
                    ,
                     SizedBox(height:20),
                    Divider(thickness: 1,),
                    SizedBox(height:20),

                    Text("Most Popular Facilities", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.start,),
                    SizedBox(height:20),

                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(children: [
                              Image.asset("assets/images/non-smoking-room.png"),
                              SizedBox(width:10),
                              Text("Non-smoking rooms")
                          ],)
                        ),
                        Expanded(
                          flex: 1,
                          child:  Row(children: [
                              Image.asset("assets/images/wifi-icon.png"),
                              SizedBox(width:10),
                              Text("Free WiFi")
                          ],)
                        ),
                      ],
                    ),
                    SizedBox(height:30),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(children: [
                              Image.asset("assets/images/parking-icon.png"),
                              SizedBox(width:10),
                              Text("Parking")
                          ],)
                        ),
                        Expanded(
                          flex: 1,
                          child:  Row(children: [
                              Image.asset("assets/images/kitchen-icon.png"),
                              SizedBox(width:10),
                              Text("Kitchen")
                          ],)
                        ),
                      ],
                    ),
                    SizedBox(height:30),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(children: [
                              Image.asset("assets/images/living-area-icon.png"),
                              SizedBox(width:10),
                              Text("Living Area")
                          ],)
                        ),
                        Expanded(
                          flex: 1,
                          child:  Row(children: [
                              Image.asset("assets/images/safety-security-icon.png"),
                              SizedBox(width:10),
                              Text("Safety & Security")
                          ],)
                        ),
                      ],
                    ),
                    SizedBox(height:30),
                    Container(height:100, color: Color(0xffEBFCEA),child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Image.asset("assets/images/star-icon.png"),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("This property is in high demand!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        SizedBox(height:10),
                        Text("7 travelers have booked today.")
                      ],)
                    ]),),
                    SizedBox(height:30),
                    Text("Where Will You be", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.start,),
                    SizedBox(height:20),
                    Image.asset("assets/images/map-image.png"),
                    SizedBox(height:30),
                    Row(children: [
                      Image.asset("assets/images/medal-icon.png"),
                      SizedBox(width:12),
                      Text("Exceptional location - Inside city center")
                    ],),
                    SizedBox(height:15),
                    Row(children: [
                      Image.asset("assets/images/walking-icon.png"),
                      SizedBox(width:12),
                      Text("Exceptional for walking")
                    ],),
                    SizedBox(height:15),
                    Divider(thickness: 1,),
                    SizedBox(height:15),
                    Text("Popular Landmarks", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(height:30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Royal Pump Room Museum"),
                      SizedBox(width:12),
                      Text("0.1 km", style: TextStyle(color: Color(0xff697488)))
                    ],),
                    SizedBox(height:15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Harrogate Turkish Baths"),
                      SizedBox(width:12),
                      Text("0.1 km", style: TextStyle(color: Color(0xff697488)))
                    ],),
                    SizedBox(height:20),
                    Text("Show More", style: TextStyle(decoration: TextDecoration.underline, color: Color(0xff3554D1)),),

                    SizedBox(height:20),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(border: Border.all(color: Color(0xff3554D13554D1),), borderRadius: BorderRadius.all(Radius.circular(10))),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Text("Leave a Comment", style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff3554D13554D1)),),
                        Image.asset("assets/images/Send.png")
                      ],)
                    ),
                    SizedBox(height:30),
                    Text("Guest reviews", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.start,),
                    SizedBox(height:20),Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(border: Border.all(color: Color(0xff000000),), borderRadius: BorderRadius.all(Radius.circular(10))),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("4.8", style: TextStyle(color: Color(0xff3554D1), fontSize: 60, fontWeight: FontWeight.bold),),
                          SizedBox(height:10),
                          Text("Exceptional",style: TextStyle(color: Color(0xff000000), fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height:10),
                          Text("3,014 reviews",style: TextStyle(color: Color(0xff697488), fontSize: 16, fontWeight: FontWeight.normal))
                      ],)
                    ),
                    SizedBox(height:30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Location", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("9.4",style:TextStyle(color: Color(0xff697488)))
                    ],),
                    SizedBox(height:15),
                    LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.94,
                      progressColor: Color(0xff0D2857),
                      barRadius: Radius.circular(3),
                    ),
                    SizedBox(height:20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Value for money", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("9.4",style:TextStyle(color: Color(0xff697488)))
                    ],),
                    SizedBox(height:15),
                    LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.94,
                      progressColor: Color(0xff008009),
                      barRadius: Radius.circular(3),
                    ),
                    SizedBox(height:20),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Free WiFi", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("9.4",style:TextStyle(color: Color(0xff697488)))
                    ],),
                    SizedBox(height:15),
                    LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.94,
                      progressColor: Color(0xff0D2857),
                      barRadius: Radius.circular(3),
                    ),
                    SizedBox(height:20),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Staff", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("9.4",style:TextStyle(color: Color(0xff697488)))
                    ],),
                    SizedBox(height:15),
                    LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.94,
                      progressColor: Color(0xff0D2857),
                      barRadius: Radius.circular(3),
                    ),
                    SizedBox(height:20),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Comfort", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("9.4",style:TextStyle(color: Color(0xff697488)))
                    ],),
                    SizedBox(height:15),
                    LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.94,
                      progressColor: Color(0xff0D2857),
                      barRadius: Radius.circular(3),
                    ),
                    SizedBox(height:20),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Cleanliness", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("9.4",style:TextStyle(color: Color(0xff697488)))
                    ],),
                    SizedBox(height:15),
                    LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.94,
                      progressColor: Color(0xff0D2857),
                      barRadius: Radius.circular(3),
                    ),
                    SizedBox(height:20),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Facilities", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("9.4",style:TextStyle(color: Color(0xff697488)))
                    ],),
                    SizedBox(height:15),
                    LinearPercentIndicator(
                      lineHeight: 5.0,
                      percent: 0.94,
                      progressColor: Color(0xff008009),
                      barRadius: Radius.circular(3),
                    ),
                    SizedBox(height:20),
                    ReviewList(),
                     SizedBox(height:20),
                    
                     Container(
                      decoration: BoxDecoration(border: Border.all(color: Color(0xff3554D1))),
                      height: 50,
                      width:200,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        
                        Text("Show all 116 reviews", style: TextStyle(color: Color(0xff3554D1), fontWeight: FontWeight.bold),),
                        SizedBox(width:10),
                        Image.asset("assets/images/upward-right-icon.png")
                      ],)
                     ),
                     SizedBox(height:20),
                     Divider(thickness:1),
                     SizedBox(height:20),
                     Container(
                      height:140,
                      color: Color(0xffF5F5F5),
                      child: Padding(
                        padding: EdgeInsets.only(top:30,left:10,right:10),
                        
                        child:  Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Image.asset("assets/images/hygiene-reminder-icon.png"), 
                      SizedBox(width: 20),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Extra health & safety measures", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        SizedBox(height: 10),
                        Expanded(child: 
                          Text("This property has taken extra health and hygiene measures to ensure that your safety is their priority",
                           style: TextStyle(fontWeight: FontWeight.normal, color: Color(0xff051036)),)
                        ),
                      ],))
                ],)),),
                  SizedBox(height: 50,),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Facilities of The Crown Hotel", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      Image.asset("assets/images/send-icon.png")
                    ],),
                    SizedBox(height: 10,),
                    Divider(thickness: 1,),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Hotel surroundings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      Image.asset("assets/images/send-icon.png")
                    ],),
                    SizedBox(height: 10,),
                    Divider(thickness: 1,),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Some helpful facts", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      Image.asset("assets/images/send-icon.png")
                    ],),
                    SizedBox(height: 10,),
                    Divider(thickness: 1,),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("FAQs about The Crown Hotel", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      Image.asset("assets/images/send-icon.png")
                    ],),
                  ],),
                  SizedBox(height:80)

                     
                    
                ],))
              ],
            ), 
      ),
    )));
  }
}