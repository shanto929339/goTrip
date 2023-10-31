import 'package:GoTrip/screens/search/hotel_room_details_Screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/address/add_address_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class SearchListScreen extends StatefulWidget {
  @override
  _SearchListScreenState createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
   
    return  AnnotatedRegion<SystemUiOverlayStyle>(
    value:  SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Color of you choice
      statusBarIconBrightness: Brightness.light,
    ),
    child: Scaffold(
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
                
                GestureDetector( 
                  onTap: (){
                      
                  },
                  child: Padding(
                  padding: const EdgeInsets.only(left:20,right:20,top:20, bottom:1),
                  child:  Container(
                  width: double.infinity,
                  // 
                  height:50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    color: Color(0xffF5F5F5),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Image.asset(
                          "assets/images/search-icon-search-page.png",
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'London, United Kingdom',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )))
                ,
                 FiltersList(),
                
                Divider(thickness: 1.5,),
                Row(children:[  Padding(
                  padding: const EdgeInsets.only(left:20,right:20,top:10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Text("3,269 properties ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("in Europe", style: TextStyle(fontSize: 16,color: Color(0xff697488), fontWeight: FontWeight.normal)),
                  ]),
                ),]
                ),
               
                Padding(
                  padding: const EdgeInsets.only(left:6,right:6,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    SearchList()
                  ]),
                ),

              ],
            ), 
      ),
    ))));
  }
}

class FiltersList extends StatelessWidget {

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
      height: 70, 
      child: Row(children: [
        Padding(
            padding: EdgeInsets.only(left:20,top:5, right: 10, bottom:10),
            child: Container(
              padding: EdgeInsets.only(top:12, left:10,bottom:5),
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // Half of width/height for circular shape
                      color: Colors.white, border: Border.all(color: Color(0xffDDDDDD))),
              width: 70, // Adjust the width as needed
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Image.asset("assets/images/search-map-icon.png"),
                   SizedBox(width:5),
                  Expanded(
                    child: Text(
                      "Maps",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          )
        ,
        Padding(
            padding: EdgeInsets.only(left:5,top:5, right: 5, bottom:10),
            child: Container(
              padding: EdgeInsets.only(top:12, left:10,bottom:5),
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // Half of width/height for circular shape
                      color: Colors.white, border: Border.all(color: Color(0xffDDDDDD))),
              width: 110, // Adjust the width as needed
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Image.asset("assets/images/search-calendar-icon.png"),
                   SizedBox(width:5),
                  Expanded(
                    child: Text(
                      "10 - 20 April",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          )
          ,
          Padding(
            padding: EdgeInsets.only(left:5,top:5, right: 5, bottom:10),
            child: Container(
              padding: EdgeInsets.only(top:12, left:15,bottom:5),
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // Half of width/height for circular shape
                      color: Colors.white, border: Border.all(color: Color(0xffDDDDDD))),
              width: 60, // Adjust the width as needed
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Image.asset("assets/images/search-user-icon.png"),
                   SizedBox(width:5),
                  Expanded(
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          )
        ,
          Padding(
            padding: EdgeInsets.only(left:5,top:5, right: 5, bottom:10),
            child: Container(
              padding: EdgeInsets.only(top:12, left:15,bottom:5),
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // Half of width/height for circular shape
                      color: Colors.white, border: Border.all(color: Color(0xffDDDDDD))),
              width: 75, // Adjust the width as needed
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   
                   
                  Expanded(
                    child: Text(
                      "Filters",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                  SizedBox(width:5),
                  Padding(padding:EdgeInsets.only(right: 10,top:1),child:Image.asset("assets/images/search-filter-icon.png")),
                ],
              ),
            ),
          )
      
      ],)
    );
  }
}

class SearchList extends StatelessWidget {
  final List<String> items = [
    'The Montcalm At Brewery London City',
    'DoubleTree by Hilton Hotel New York Times Square West',
    'The Westin New York at Times Square',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox(height:10),
          Container(
            height: MediaQuery.sizeOf(context).height - MediaQuery.sizeOf(context).height  * 0.30, // Set a fixed height or adjust as needed
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(child: Container(
                  margin: EdgeInsets.only(left: 15,right:15,bottom:25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Stack(
                        children: <Widget>[
                          Image.asset("assets/images/product-large-image.png",),
                          Positioned(
                            top: 20, // Adjust the top position as needed
                            left: 0, // Adjust the left position as needed
                            child: Container(
                              padding: EdgeInsets.only(left: 14, right: 14, top:8, bottom:8), // Adjust the padding as needed
                              color: Color(0xff3554D1),
                              child:Text(
                                'Best Seller',
                                style: TextStyle(
                                  color: Colors.white, // Change the text color
                                  fontSize: 14, // Adjust the text size
                                  fontWeight: FontWeight.bold, // Adjust the text style
                                ),
                              ),
                            )
                          ),
                          Positioned(
                            top: -3, // Adjust the top position as needed
                            right: -12, // Adjust the right position as needed
                            child: Image.asset("assets/images/unselected-heart-icon.png")
                          ),
                        ]
                      ),
                      SizedBox(height:20),
                      Text(items[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(height:5),
                      Text("Vaticano Prati, Rome", style: TextStyle(fontSize: 14,)),
                      SizedBox(height:20),
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
                        Text("Exceptional", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                        SizedBox(width:10),
                        Text("3,014 reviews", style: TextStyle(fontSize:13,color:Color(0xff697488)),)
                      ],),
                      SizedBox(height:10),
                      Row(children: [
                        Text("Starting from", style: TextStyle(fontSize:14,fontWeight: FontWeight.bold),),
                        SizedBox(width:3),
                        Text("US\$72", style: TextStyle(color:Color(0xff3554D1),fontSize:14, fontWeight: FontWeight.bold),)
                      ],)
                      
                      
                  ],)
                ),onTap: (){
                   Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => HotelRoomDetailsScreen()));
                },);
              },
            ),
          )
      ],
    );
   
  }
}
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
      height: MediaQuery.sizeOf(context).height - MediaQuery.sizeOf(context).height * 0.47, 
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){},
           
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



