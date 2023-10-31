import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomBar extends StatelessWidget {
  final TabController controller;

  const CustomBottomBar({
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(child: Padding(padding: EdgeInsets.only(top:13), child:
            Column(
              children: [
              Image.asset(
                'assets/images/discover-icon.png',
              ), 
              SizedBox(height:5),
              Text("Discover",style: TextStyle(fontWeight: FontWeight.w500),)
              ])
          ), onTap: () { controller.animateTo(0);} ,),
          GestureDetector(child: Padding(padding: EdgeInsets.only(top:13), child:
            Column(
              children: [
              Image.asset(
                'assets/images/search-icon.png',
              ), 
              SizedBox(height:5),
              Text("Search",style: TextStyle(fontWeight: FontWeight.w500),)
              ])
          ), onTap: () { controller.animateTo(1);} ,),
          GestureDetector(child: Padding(padding: EdgeInsets.only(top:13), child:
            Column(
              children: [
              Image.asset(
                'assets/images/heart-icon.png',
              ), 
              SizedBox(height:5),
              Text("Favorite",style: TextStyle(fontWeight: FontWeight.w500),)
              ])
          ), onTap: () { controller.animateTo(2);} ,),
          GestureDetector(child: Padding(padding: EdgeInsets.only(top:13), child:
            Column(
              children: [
              Image.asset(
                'assets/images/account-icon.png',
              ), 
              SizedBox(height:5),
              Text("Account",style: TextStyle(fontWeight: FontWeight.w500),)
              ])
          ), onTap: () { controller.animateTo(3);} ,),
        ],
      ),
    );
  }
}
