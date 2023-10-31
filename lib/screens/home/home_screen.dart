import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/custom_background.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/category/category_list_page.dart';
import 'package:GoTrip/screens/favorites/favorite_screen.dart';
import 'package:GoTrip/screens/main/components/custom_bottom_bar.dart';
import 'package:GoTrip/screens/main/components/product_list.dart';
import 'package:GoTrip/screens/main/components/tab_view.dart';
import 'package:GoTrip/screens/notifications_page.dart';
import 'package:GoTrip/screens/profile_page.dart';
import 'package:GoTrip/screens/search/hotel_booking_screen.dart';
import 'package:GoTrip/screens/search/hotel_room_details_Screen.dart';
import 'package:GoTrip/screens/search/search_list_screen.dart';
import 'package:GoTrip/screens/search/search_screen.dart';
import 'package:GoTrip/screens/search_page.dart';
import 'package:GoTrip/screens/settings/settings_screen.dart';
import 'package:GoTrip/screens/shop/check_out_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<String> timelines = ['Weekly featured', 'Best of June', 'Best of 2018'];
String selectedTimeline = 'Weekly featured';

List<Product> products = [
  Product(
      'assets/headphones_2.png',
      'Skullcandy headset L325',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Nec nam aliquam sem et tortor consequat id porta nibh. Orci porta non pulvinar neque laoreet suspendisse. Id nibh tortor id aliquet. Dui sapien eget mi proin. Viverra vitae congue eu consequat ac felis donec. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. Vulputate mi sit amet mauris commodo quis imperdiet. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Sit amet cursus sit amet dictum sit amet justo. Mattis pellentesque id nibh tortor. Sed blandit libero volutpat sed cras ornare arcu dui. Fermentum et sollicitudin ac orci phasellus. Ipsum nunc aliquet bibendum enim facilisis gravida. Viverra suspendisse potenti nullam ac tortor. Dapibus ultrices in iaculis nunc sed. Nisi porta lorem mollis aliquam ut porttitor leo a. Phasellus egestas tellus rutrum tellus pellentesque. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Commodo ullamcorper a lacus vestibulum sed arcu non odio. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Eros in cursus turpis massa. Eget mauris pharetra et ultrices neque.',
      102.99),
  Product(
      'assets/headphones_3.png',
      'Skullcandy headset X25',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Nec nam aliquam sem et tortor consequat id porta nibh. Orci porta non pulvinar neque laoreet suspendisse. Id nibh tortor id aliquet. Dui sapien eget mi proin. Viverra vitae congue eu consequat ac felis donec. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. Vulputate mi sit amet mauris commodo quis imperdiet. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Sit amet cursus sit amet dictum sit amet justo. Mattis pellentesque id nibh tortor. Sed blandit libero volutpat sed cras ornare arcu dui. Fermentum et sollicitudin ac orci phasellus. Ipsum nunc aliquet bibendum enim facilisis gravida. Viverra suspendisse potenti nullam ac tortor. Dapibus ultrices in iaculis nunc sed. Nisi porta lorem mollis aliquam ut porttitor leo a. Phasellus egestas tellus rutrum tellus pellentesque. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Commodo ullamcorper a lacus vestibulum sed arcu non odio. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Eros in cursus turpis massa. Eget mauris pharetra et ultrices neque.',
      55.99),
  Product(
      'assets/headphones.png',
      'Blackzy PRO hedphones M003',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Nec nam aliquam sem et tortor consequat id porta nibh. Orci porta non pulvinar neque laoreet suspendisse. Id nibh tortor id aliquet. Dui sapien eget mi proin. Viverra vitae congue eu consequat ac felis donec. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. Vulputate mi sit amet mauris commodo quis imperdiet. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Sit amet cursus sit amet dictum sit amet justo. Mattis pellentesque id nibh tortor. Sed blandit libero volutpat sed cras ornare arcu dui. Fermentum et sollicitudin ac orci phasellus. Ipsum nunc aliquet bibendum enim facilisis gravida. Viverra suspendisse potenti nullam ac tortor. Dapibus ultrices in iaculis nunc sed. Nisi porta lorem mollis aliquam ut porttitor leo a. Phasellus egestas tellus rutrum tellus pellentesque. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Commodo ullamcorper a lacus vestibulum sed arcu non odio. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Eros in cursus turpis massa. Eget mauris pharetra et ultrices neque.',
      152.99),
];

class _HomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin<HomeScreen> {
  late TabController tabController;
  late TabController bottomTabController;

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    tabController = TabController(length: 5, vsync: this);
    bottomTabController = TabController(length: 4, vsync: this);
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<String> items = [
    'The Montcalm At Brewery London City',
    'DoubleTree by Hilton Hotel New York Times Square West',
    'The Montcalm At Brewery London City',
    'DoubleTree by Hilton Hotel New York Times Square West',
    'The Montcalm At Brewery London City',
  ];

  @override
  Widget build(BuildContext context) {
    Widget appBar = Column(
      children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/slide-bg.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: 
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(child: Text("Discover", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)), padding: EdgeInsets.only(left:20, top:20), ),
                      Padding(child: GestureDetector(child: Image.asset("assets/images/notification-icon.png"), onTap:() => Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => NotificationsPage()))),
                      padding: EdgeInsets.only( right:20, top:20), ),
                    ],
                ),
                SizedBox(height:20),
                Padding(
                  padding: EdgeInsets.only(left:20),
                  child: 
                  GestureDetector(
                    onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (_) => HotelBookingScreen()));
                    },
                    child: HomeFilterList() 
                  //   
                  )
                )
              ],
            )
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 1, top:40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child:  Text("Popular Destinations",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize:  20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                  ),
                
                ],
              )
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 30, top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(child: Text("These popular destinations have a lot to offer")),
                
                ],
              )
          ),
    ], );


    Widget descriptiveSection = Column(
      children: [
          Container(
            padding: EdgeInsets.only(top:50, left:50,right:50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/best-price-guarantee-icon.png',
                ),
                 SizedBox(height:30),
                Text("Best Price Guarantee", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,), textAlign: TextAlign.center,),
                SizedBox(height:10),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextStyle(fontWeight: FontWeight.normal),textAlign: TextAlign.center,)
              ]
            )
          ),

          Container(
            padding: EdgeInsets.only(top:30, left:50,right:50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/easy-quick-booking-icon.png',
                ),
                 SizedBox(height:30),
                Text("Easy & Quick Booking", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,), textAlign: TextAlign.center,),
                SizedBox(height:10),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextStyle(fontWeight: FontWeight.normal),textAlign: TextAlign.center,)
              ]
            )
          ),

          Container(
            padding: EdgeInsets.only(top:30, left:50,right:50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/customer-service-icon.png',
                ),
                 SizedBox(height:30),
                Text("Customer Care 24/7", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,), textAlign: TextAlign.center,),
                SizedBox(height:10),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextStyle(fontWeight: FontWeight.normal),textAlign: TextAlign.center,)
              ]
            )
          )
         
      ]
    );


    Widget buildPageIndicator(int itemsLength) {
    return Row(children: [
        Image.asset("assets/images/arrow-right-home.png"),
        SizedBox(width: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List<Widget>.generate(itemsLength, (int index) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? Color(0xff3554D1) : Color(0xffDDDDDD),
              ),
            );
          }),
        ),
        SizedBox(width: 5,),
        Image.asset("assets/images/arrow-left-home.png"),

    ]);
  }

    return   Scaffold(
      bottomNavigationBar: CustomBottomBar(controller: bottomTabController),
      body: CustomPaint(
        painter: MainBackground(),
        child: TabBarView(
          controller: bottomTabController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            SafeArea(
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverToBoxAdapter(
                      child: appBar,
                    ),
                    SliverToBoxAdapter(
                      child: PopularDestinationsList()
                    ),
                    SliverToBoxAdapter(
                      child: Column(children: [
                         Padding(
                            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10, top:20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Flexible(
                                  child:  Text("Most Popular",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize:  20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                ),
                              
                              ],
                            )
                        ),
                        Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 30, top:0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Flexible(child: Text("These popular destinations have a lot to offer")),
                                    
                                    ],
                                  )
                        ),
                        PopularFiltersList(),
                        SizedBox(height:20)
                        
                      ],)
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                          padding: EdgeInsets.only(left: 15, right:0),
                          height: 450, 
                          child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                controller: _pageController,
                                itemCount: items.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(child: 
                              Container(
                                width: 300,
                                child: 
                                Padding(
                                  padding: EdgeInsets.only(right:20),
                                  child:
                                    Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                          children: <Widget>[
                                              Image.asset("assets/images/most-popular-placeholder-image.png",),
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
                                                      fontSize: 12, // Adjust the text size
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
                                        SizedBox(height:10),
                                        Padding(padding: EdgeInsets.only(right:20), child: Text(
                                            items[index],
                                            maxLines: 1,
                                            style: TextStyle(fontSize: 14, color:Colors.black, fontWeight: FontWeight.bold),
                                        )),
                                        SizedBox(height:8),
                                        Text(
                                          "Westminster Borough, London",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Color(0xff697488)),
                                        ),
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
                                          SizedBox(height:10),
                                          Row(children: [
                                            Text("Starting from", style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),),
                                            SizedBox(width:3),
                                            Text("US\$72", style: TextStyle(color:Color(0xff3554D1),fontSize:12, fontWeight: FontWeight.bold),)
                                          ],)
                                    ],
                                  
                                
                              ))), onTap: (){

                                 Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => HotelRoomDetailsScreen()));
                              });
                            },
                          ),
                        )
                    ),
                    SliverToBoxAdapter(child: 
                      Column(children: [
                          SizedBox(height: 1), // Spacing
                          Padding(child: buildPageIndicator(items.length), padding: EdgeInsets.only(left:17,right:17),), 
                      ],)
                      
                    ),
                    SliverToBoxAdapter(child: descriptiveSection,)
                  ];
                },
                body: Container()
              ),
            ),
            SearchScreen(),
            FavoriteScreen(),
            SettingsScreen()
          ],
        ),
      ),
    );
  }


  

}



class PopularDestinationsList extends StatelessWidget {

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
      margin: EdgeInsets.only(left: 15),
      height: 300, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(child: Padding(
            padding: EdgeInsets.only(top:0, right: 0, bottom:5),
            child: Container(
              padding: EdgeInsets.only(top:0, left:3,right:20),
              
              width: 200, // Adjust the width as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Image.asset("assets/images/popular-destinations-placeholder.png"),
                    SizedBox(height:10),

                    Text(
                        "United Kingdom",
                        style: TextStyle(fontSize: 14, color:Colors.black, fontWeight: FontWeight.bold),
                      ),
                    SizedBox(height:8),
                  Expanded(
                    child: Text(
                      "147,681 travellers",
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Color(0xff697488)),
                    ),
                  ),
                ],
              ),
            ),
          ), onTap: (){

             Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => SearchListScreen()));
          });
        },
      ),
    );
  }
}

class HomeFilterList extends StatelessWidget {
  final List<String> items = [
    'Hotel',
    'Tour',
    'Activity',
    'Holiday Rentals',
    'Car',
    'Cruise'
  ];

  final List<String> itemsImages = [
    'assets/images/bed-icon.png',
    'assets/images/tour-icon.png',
    'assets/images/holiday-rentals-icon.png',
    'assets/images/bed-icon.png',
    'assets/images/tour-icon.png',
    'assets/images/holiday-rentals-icon.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, 
      padding: EdgeInsets.only(left:5,right:5),
      margin: EdgeInsets.only(top:10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return  Container(
                    decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                      color : Color.fromRGBO(255, 255, 255, 1),
                    ),
                    padding: EdgeInsets.only(left: 30, right: 22, top: 12, bottom: 12),
                     margin: EdgeInsets.only(right:12),
                    child:  Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                          Container(
                            width: index == 2  || index == 5 ? 100 : index == 3 ? 140: 70,
                            height: 25,
                            child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 7,
                                      left: 35,
                                      child: Text(items[index], textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(5, 16, 54, 1),
                                      fontFamily: 'Jost',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.bold,
                                      height: 1
                                    ),)
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color : Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      child: Stack(
                                        children: <Widget>[
                                            Positioned(
                                              top: 1,
                                              left: -1.3877787807814457e-15,
                                              child: Image.asset(
                                                itemsImages[index],
                                              )
                                            ),
                                          ]
                                      )
                                    )
                                  ),
                                ]
                              )
                            ),
                      ],
                    ),
                  );
        },
      ),
    );
  }
}

class PopularFiltersList extends StatelessWidget {
  final List<String> items = [
    'Hotel',
    'Tour',
    'Activity',
    'Holiday Rentals',
    'Car',
     'Cruise',
      'Flights',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, 
      padding: EdgeInsets.only(left:15,right:15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(child: Container(
            margin: EdgeInsets.only(left:1.0,right:10.0),
            padding: EdgeInsets.only(top:16.0,bottom:12.0,left:24.0,right:24.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color(0xffF5F5F5), // Background color
            ),
            child: Text(
                    items[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff051036),
                      fontWeight: FontWeight.bold // Text color
                    ),
                  ),
          ), onTap: (){
            
          },);
        },
      ),
    );
  }
}