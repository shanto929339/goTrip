import 'package:GoTrip/screens/search/hotel_booking_screen.dart';
import 'package:GoTrip/screens/search/hotel_room_details_Screen.dart';
import 'package:GoTrip/screens/search/search_list_screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/address/add_address_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
   
    return   Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
         value: SystemUiOverlayStyle.light,                
         child: SafeArea(
          bottom: true,
          child: SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20,right:20,top:20, bottom:15),
                  child: Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                GestureDetector( 
                  onTap: (){
                      // Navigator.of(context).push(
                      //             MaterialPageRoute(
                      //                 builder: (context) => SearchListScreen()));
                  },
                  child: Padding(
                  padding: const EdgeInsets.only(left:20,right:20,top:20, bottom:15),
                  child:  Container(
                  width: double.infinity,
                  // 
                  height:50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    color: Color(0xffF5F5F5),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/search-icon-search-page.png",
                        ),
                      ),
                      Text(
                        'Destination, attraction, hotel, etc',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ))),
              
                Padding(
                  padding: const EdgeInsets.only(left:20,right:20,top:20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Text("Your Recent Searches", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height:20),
                    RecentSearchesList()
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20,right:20,top:30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Text("Nearby Attractions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height:20),
                    NearbyAttractionList()
                  ]),
                ),

              ],
            ), 
      ),
    )));
  }
}

class RecentSearchesList extends StatelessWidget {

  final List<String> items = [
    'New York',
    'London',
    'Los Angeles',
    'Tokyo',
    'Pyongyang',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 75, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(child: Padding(
            padding: EdgeInsets.only(top:5, right: 10, bottom:5),
            child: Container(
              padding: EdgeInsets.only(top:15, left:20,right:20),
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // Half of width/height for circular shape
                      color: Colors.white, border: Border.all(color: Color(0xffDDDDDD))),
              width: 150, // Adjust the width as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Text(
                      items[index],
                      style: TextStyle(fontSize: 14, color:Colors.black, fontWeight: FontWeight.bold),
                    ),
                  Expanded(
                    child: Text(
                      "4,090 properties",
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Color(0xff697488)),
                    ),
                  ),
                ],
              ),
            ),
          ), onTap: ()=>   Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => SearchListScreen())));
        },
      ),
    );
  }
}


class NearbyAttractionList extends StatelessWidget {
  final List<String> items = [
    'Leeds Castle, Cliffs of River',
    'Westminster Walking Tour',
    'High-Speed Thames River',
    'Leeds Castle, Cliffs of River',
    'Westminster Walking Tour',
    'High-Speed Thames River',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height - MediaQuery.sizeOf(context).height * 0.58, 
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
            Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => HotelRoomDetailsScreen()));
            },
           
            child: Container(
            margin: EdgeInsets.only(bottom:20),
            child: Row(children: [
                Stack(
                  children: <Widget>[
                    Image.asset("assets/images/search-image-template.png"),
                    Positioned(
                      top: -20, // Adjust the top position as needed
                      right: -30, // Adjust the right position as needed
                      child: Image.asset("assets/images/unselected-heart-icon.png")
                    ),
                  ]
                ),
                SizedBox(width:20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2.1 km",style: TextStyle(color: Color(0xff697488)),),
                    SizedBox(height:5),
                    Text(items[index],overflow: TextOverflow.ellipsis, // Add ellipsis when text overflows
                maxLines: 1,  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),),
                    SizedBox(height:20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                fontSize: 13,
                              ),
                            ),padding: EdgeInsets.all(5),),
                          ),
                        ),
                        SizedBox(width:10),
                        Text("Exceptional", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                        SizedBox(width:5),
                        ],),
                        Row(
                          children: [
                            Text("From", style: TextStyle(fontSize:12,color:Color(0xff697488)),),
                            Text(" US\$72", overflow: TextOverflow.ellipsis, // Add ellipsis when text overflows
                maxLines: 1, style: TextStyle(fontSize:13,color:Color(0xff000000),fontWeight: FontWeight.w700),)
                          ],
                        )
                      ],),
                  ],
                )
                
            ],)
          ));
        },
      ),
    );
  }
}