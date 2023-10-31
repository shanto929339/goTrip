import 'package:GoTrip/screens/search/hotel_room_details_Screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/address/add_address_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class FavoriteScreenDetailed extends StatefulWidget {
  @override
  _FavoriteScreenDetailedState createState() => _FavoriteScreenDetailedState();
}

class _FavoriteScreenDetailedState extends State<FavoriteScreenDetailed> {
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
    return  AnnotatedRegion<SystemUiOverlayStyle>(
    value:  SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Color of you choice
      statusBarIconBrightness: Brightness.light,
    ),
    child: Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: darkGrey),
        leading: GestureDetector(
                    
                    onTap: (){ Navigator.pop(context);}, child: Padding( padding: EdgeInsets.only(left:20,), child: Image.asset("assets/images/back-icon-page.png"))),
   
        title: Text(
          'Favorite',
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
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
         value: SystemUiOverlayStyle.light,                
         child: SafeArea(
          bottom: true,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: const EdgeInsets.only(top:20,left:5,right:20),
                  child: FavorteDetaildListView()),
              ],
            ), 
         
      
    ))));
  }
}

class FavorteDetaildListView extends StatelessWidget {
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
          Container(
            padding: EdgeInsets.only(left:15),
            child: 
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text("London, United Kingdom",textAlign: TextAlign.left, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(height:15),
                Row(children: [
                  Text("10 - 20 April",textAlign: TextAlign.left, style:TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Color(0xff697488))),
                  SizedBox(width:10),
                  Image.asset("assets/images/vertical-border.png"),
                  SizedBox(width:10),
                  Text("2 adults - 1 children - 1 room",textAlign: TextAlign.left, style:TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Color(0xff697488))),
               ],)
              ],
            )
          ),
          SizedBox(height:25),
          Container(
            height: MediaQuery.sizeOf(context).height - MediaQuery.sizeOf(context).height  * 0.25, // Set a fixed height or adjust as needed
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
                              color: Colors.black,
                              child:Text(
                                'Breakfast Included',
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
                            child: Image.asset("assets/images/favorited-image.png")
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
                        Text("Starting from", style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                        SizedBox(width:3),
                        Text("US\$72", style: TextStyle(color:Color(0xff3554D1)),)
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
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Set a fixed height or adjust as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150, // Adjust the width as needed
              child: Row(
                children: [
                  Container(
                    width: 50, // Width of the image container
                    height: 50, // Height of the image container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25), // Half of width/height for circular shape
                      color: Colors.blue, // Replace with your image or color
                    ),
                    // Replace with your image widget here
                    child: Icon(Icons.image, color: Colors.white),
                  ),
                  SizedBox(width: 10), // Spacing between image and text
                  Expanded(
                    child: Text(
                      items[index],
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
}
