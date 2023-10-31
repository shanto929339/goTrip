import 'package:card_swiper/card_swiper.dart';
import 'package:GoTrip/app_properties.dart';
import 'package:GoTrip/models/product.dart';
import 'package:GoTrip/screens/product/product_page.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  List<Product> products;

  final SwiperController swiperController = SwiperController();

  ProductList({required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:0),
      child: Row(children: [
        PopularDestinationCard(product: products[0])
      ]));
  }
}

class PopularDestinationCard extends StatelessWidget {
  final Product product;

  const PopularDestinationCard({
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => ProductPage(product: product))),
      child:    PopularDestinationsList()
            // Container(
            //   padding: EdgeInsets.only(left:20),
            //   width: 250,
            //   height: 70,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //     Image.asset("assets/images/image-hotel-template.png"),
            //     SizedBox(height:15),
            //     Text("United Kingdom",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            //     SizedBox(height:8),
            //     Text("147,681 travellers", textAlign: TextAlign.left,),
            //   ],)
            // )
      
    );
      
      
      
    //   Stack(
    //     children: <Widget>[
    //       Container(
    //         margin: const EdgeInsets.only(left: 30),
    //         height: height,
    //         width: width,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.all(Radius.circular(24)),
    //           color: mediumYellow,
    //         ),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.end,
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: <Widget>[
    //             IconButton(
    //               icon: Icon(Icons.favorite_border),
    //               onPressed: () {},
    //               color: Colors.white,
    //             ),
    //             Column(
    //               children: <Widget>[
    //                 Align(
    //                     alignment: Alignment.topLeft,
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Text(
    //                         product.name,
    //                         style:
    //                             TextStyle(color: Colors.white, fontSize: 16.0),
    //                       ),
    //                     )),
    //                 Align(
    //                   alignment: Alignment.topRight,
    //                   child: Container(
    //                     margin: const EdgeInsets.only(bottom: 12.0),
    //                     padding: const EdgeInsets.fromLTRB(8.0, 4.0, 12.0, 4.0),
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.only(
    //                           topLeft: Radius.circular(10),
    //                           bottomLeft: Radius.circular(10)),
    //                       color: Color.fromRGBO(224, 69, 10, 1),
    //                     ),
    //                     child: Text(
    //                       '\$${product.price}',
    //                       style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 18,
    //                           fontWeight: FontWeight.bold),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             )
    //           ],
    //         ),
    //       ),
    //       Positioned(
    //         child: Hero(
    //           tag: product.image,
    //           child: Image.asset(
    //             product.image,
    //             height: height / 1.7,
    //             width: width / 1.4,
    //             fit: BoxFit.contain,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}


// Positioned(
//         top: 0,
//         left: 0,
//         child: Container(
//       decoration: BoxDecoration(
//           borderRadius : BorderRadius.only(
//             topLeft: Radius.circular(0),
//             topRight: Radius.circular(4),
//             bottomLeft: Radius.circular(0),
//             bottomRight: Radius.circular(4),
//           ),
//       color : Color.fromRGBO(248, 212, 72, 1),
//   ),
//       padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
        
//         children: <Widget>[
//           Text('Top Rated', textAlign: TextAlign.left, style: TextStyle(
//         color: Color.fromRGBO(5, 16, 54, 1),
//         fontFamily: 'Jost',
//         fontSize: 12,
//         letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//         fontWeight: FontWeight.normal,
//         height: 1
//       ),),

//         ],
//       ),
//     )
//       )

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
          ), onTap: (){});
        },
      ),
    );
  }
}
