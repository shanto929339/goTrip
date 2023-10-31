import 'package:GoTrip/screens/search/reserve_hotel_room_selection_screen.dart';
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


class SelectHotelRoomDetailsScreen extends StatefulWidget {
  @override
  _SelectHotelRoomDetailsScreenState createState() => _SelectHotelRoomDetailsScreenState();
}

class _SelectHotelRoomDetailsScreenState extends State<SelectHotelRoomDetailsScreen> {
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

  Widget HotelRoomList(List<Map<String,dynamic>> priceRoomItems) =>  Padding(
      padding: EdgeInsets.only(left:20, right:20, top:20),
      child: ListView.builder(
        itemCount: priceRoomItems.length,
        itemBuilder: (BuildContext context, int index) {
          return 
      Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:20),
        Text(priceRoomItems[index]["roomName"].toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        SizedBox(height:20),
        Container(
        margin: EdgeInsets.only(bottom:20),
        child: Row(children: [
            Image.asset("assets/images/search-image-template.png",fit: BoxFit.cover, height: 150),
            SizedBox(width:20),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Image.asset("assets/images/no-smoke-icon.png",height: 27,),
                    SizedBox(width:10),
                    Text("Non-smoking rooms",style: TextStyle(color: Color(0xff697488), fontSize: 12, fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height:15),
                  Row(children: [
                    Image.asset("assets/images/wifi-icon-2.png",height: 27,),
                    SizedBox(width:10),
                    Text("Free Wifi",style: TextStyle(color: Color(0xff697488), fontSize: 12, fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height:15),
                  Row(children: [
                    Image.asset("assets/images/parking-icon-2.png",height: 27,),
                    SizedBox(width:10),
                    Text("Parking",style: TextStyle(color: Color(0xff697488), fontSize: 12, fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height:15),
                  Row(children: [
                    Image.asset("assets/images/kitchen-icon-2.png",height: 27,),
                    SizedBox(width:10),
                    Text("Kitchen",style: TextStyle(color: Color(0xff697488), fontSize: 12, fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height:15),
                  Text("Show Room Information", style: TextStyle(color:Color(0xff3554D1), decoration: TextDecoration.underline,fontWeight: FontWeight.bold),)
                
                ],
              )
              
          ],)
        ),
        SizedBox(height:10),
        Text("Your price includes:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        SizedBox(height:25),
        Row(children: [
          Image.asset("assets/images/green-check-color.png"),
          SizedBox(width:10),
          Text("Pay at the hotel", style:TextStyle(color: Color(0xff008009)))
        ],),
        SizedBox(height: 17,),
        Row(children: [
          Image.asset("assets/images/green-check-color.png"),
          SizedBox(width:10),
          Text("Pay nothing until March 30, 2022", style:TextStyle(color: Color(0xff008009)))
        ],),
        SizedBox(height: 17,),
        Row(children: [
          Image.asset("assets/images/green-check-color.png"),
          SizedBox(width:10),
          Text("Free cancellation before April 1, 2022", style:TextStyle(color: Color(0xff008009)))
        ],),
        SizedBox(height: 25,),
        Row(children: [
          Image.asset("assets/images/standing-main-icon.png"),
          SizedBox(width:5),
          Image.asset("assets/images/standing-main-icon.png"),
        ],),
        SizedBox(height: 25,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("US\$72", style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.bold, fontSize: 17),),
              SizedBox(height:10),
              Text("Includes taxes and charges", style: TextStyle(color: Color(0xff000000), fontSize: 13),)
            ],
          ),
          Container(child: DropdownButtonFormField2<String>(
            isExpanded: true,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              // Add more decoration..
            ),
            hint: const Text(
              '1 (US\$ 3,120)',
              style: TextStyle(fontSize: 12),
            ),
            items: ( priceRoomItems[index]["roomPrices"] as List ).map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ))
                .toList(),
            validator: (value) {
              if (value == null) {
                return 'Please select a value';
              }
              return null;
            },
            onChanged: (value) {
              //Do something when selected item is changed.
            },
            onSaved: (value) {
              // selectedValue = value.toString();
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.only(right: 8),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              iconSize: 24,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
          height: 60,
          width:150)

          
        ],),
        SizedBox(height:20),
        Container(
              height: 60,
              decoration: BoxDecoration(border: Border.all(color: Color(0xff3554D13554D1),), borderRadius: BorderRadius.all(Radius.circular(10))),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text("Choose Room", style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff3554D13554D1)),),
                Image.asset("assets/images/Send.png")
              ],)
            ),
            SizedBox(height:30),

        
      ],
    );}));
  
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
          'Warwick Allerton Hotel Chicago',
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
            GestureDetector(child: Container(
              padding: EdgeInsets.only(left:15,right:15,top:15,bottom: 15),
              height: 55,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xff3554D1)),
              child: Row(children: [
                Text("Reserve",style: TextStyle(color:Colors.white, fontSize: 16),),
                SizedBox(width:10),
                Image.asset("assets/images/top-right-icon-white.png")
              ]),
            ),onTap: (){
               Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => ReserveHotelRoomSelectionScreen()));
            },)
          ],
        ), padding: EdgeInsets.only(right:20),),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
         value: SystemUiOverlayStyle.light,                
         child: SafeArea(
          bottom: true,
          child: SingleChildScrollView(
            child: Container( height: MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height * 0.25), child: HotelRoomList(priceRoomItems))
      ),
    )));
  }
}