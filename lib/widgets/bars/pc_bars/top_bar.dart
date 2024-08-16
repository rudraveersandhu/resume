import 'dart:ui';

import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    var screen_height = MediaQuery.of(context).size.height;
    var screen_width = MediaQuery.of(context).size.width;

    var topbar_height = screen_height / 4.3 > 122 ? screen_height / 4.3 : 122;
    var topbar_width = ((screen_width / 5) * 4) - 140;

    print(topbar_height);

    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 27,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            height: topbar_height - 10, // Slightly smaller height
            width: topbar_width - 10, // Slightly smaller width
            child: Stack(
              children: [
                Container(
                  height: topbar_height - 10, // Slightly smaller height
                  width: topbar_width - 10,
                  //color: Colors.blueGrey.shade500,
                  child: Image.asset(
                    'assets/myself.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  // Clip the blur effect to the shape of the container
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                    child: Container(
                      height: topbar_height - 10, // Slightly smaller height
                      width: topbar_width - 10,

                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 50, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: topbar_height / 1.5,
                            width: topbar_height / 1.5,
                            child: Image.asset(
                              'assets/myself.jpeg',
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              //borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rudraveer Singh Sandhu",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  "RudraveerSandhu@gmail.com",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w100),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: (topbar_width) / 3.8, // Adjusted width as necessary
                        height: 40, // Adjusted height
                        color: Colors.blueGrey.shade900,
                        child:  Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset("po.png")),
                              SizedBox(width: 10,),
                              Text(
                                "Visit my GitHub",
                                style: TextStyle(
                                    fontSize: screen_width > 655 ? 14 :12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), //visit my github container
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
