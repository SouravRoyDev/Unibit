// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unibit/screen/utils.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _tabIndex = 2;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 3,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.string(APP_ICON!)),
            SvgPicture.string(NOTICICATION!)
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: [
          Text(
            "Hello, Dipak 👋",
            style: TextStyle(
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black),
          ),
          SizedBox(height: 15),
          Container(
              height: 66,
              width: double.infinity,
              decoration: BoxDecoration(
                  // image: DecorationImage(image: AssetImage("Group.png")),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image(
                image: AssetImage("assets/imges/Group.png"),
                fit: BoxFit.fill,
              )),
          SizedBox(height: 15),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18))),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(3),
                  child: Image(
                    image: AssetImage("assets/imges/Mask group.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Play Ludo and Earn Money",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                 SizedBox(
                  width: double.infinity,
                   child: ListTile(
                    title:  Text(
                            "5,00,000+",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          subtitle:  Text(
                            "players",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          trailing:    Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.all(Radius.circular(18))),
                        height: 40,
                        width: 134,
                        child: Center(
                          child: Text(
                            "Play Now",
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      leading: CircleAvatar(),
                   
                                 ),
                 ),

             ],
            ),
          ),
          SizedBox(height: 15),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("assets/imges/Rectangle 12633.png"),fit: BoxFit.fill),
                      
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  width: double.infinity,
                  margin: EdgeInsets.all(3),
                  // child: Image(
                  //   image: AssetImage("assets/imges/Rectangle 12633.png"),
                  //   fit: BoxFit.fill,
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Play Cricket and Fantasy League",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                ListTile(
                  title:  Text(
                          "5,00,000+",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        subtitle:  Text(
                          "players",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        trailing:    Container(
                      margin: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      height: 40,
                      width: 134,
                      child: Center(
                        child: Text(
                          "Play Now",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                     leading: CircleAvatar(),
                 
                ),

              
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          SvgPicture.string(CONTACT),
          SvgPicture.string(WALLET),
          Icon(Icons.add, color: white),
          Icon(Icons.share, color: white),
          Icon(Icons.person, color: white),
        ],
        inactiveIcons: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.string(CONTACT),
              Text(
                "Contact",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.string(WALLET),
              Text(
                "Wallet",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.wallet,
                color: Colors.grey.shade300,
              ),
              Text(
                "Contact",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.share,
                color: Colors.grey.shade300,
              ),
              Text(
                "Share",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.person,
                color: Colors.grey.shade300,
              ),
              Text(
                "Profile",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],

        color: Colors.white,
        height: 60,
        circleWidth: 50,
        circleColor: (Colors.deepPurple),
        activeIndex: tabIndex,
        padding: EdgeInsets.only(top: 5),
        
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        // padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          // bottomRight: Radius.circular(24),
          // bottomLeft: Radius.circular(24),
        ),
        shadowColor: Colors.deepPurple,
        elevation: 0,
      ),
    );
  }
}
