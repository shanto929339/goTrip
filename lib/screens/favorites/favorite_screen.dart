import 'package:GoTrip/screens/favorites/favorite_screen_detailed.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/address/add_address_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
                  padding: const EdgeInsets.only(left:20,right:20,top:20, bottom:15),
                  child: Text(
                    'Favorite',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left:5,right:20),
                  child: FavoriteListView()),
              ],
            ), 
         
      
    ))));
  }
}

class FavoriteListView extends StatelessWidget {
  final List<String> items = [
    'London, United Kingdom',
    'New York, United States',
    'Miami, United States',
    'London, United Kingdom',
    'New York, United States',
    'Miami, United States',
    'London, United Kingdom',
    'New York, United States',
    'Miami, United States',
    'London, United Kingdom',
    'New York, United States',
    'Miami, United States',
    'London, United Kingdom',
    'New York, United States',
    'Miami, United States',
    'London, United Kingdom',
    'New York, United States',
    'Miami, United States',
     'London, United Kingdom',
    'New York, United States',
    'Miami, United States',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height - MediaQuery.sizeOf(context).height  * 0.20, // Set a fixed height or adjust as needed
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: ()=>
            Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => FavoriteScreenDetailed())),
            child: Container(
            margin: EdgeInsets.only(left: 15,right:15,bottom:20),
            child: Row(children: [
                Image.asset("assets/images/list-image-template.png"),
                SizedBox(width:20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(items[index], style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                    SizedBox(height:5),
                    Text("10 - 20 April")
                  ],
                )
                
            ],)
          ));
        },
      ),
    );
  }
}