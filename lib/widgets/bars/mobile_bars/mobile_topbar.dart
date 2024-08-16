import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileTopbar extends StatefulWidget {
  const MobileTopbar({super.key});

  @override
  State<MobileTopbar> createState() => _MobileTopbarState();
}

class _MobileTopbarState extends State<MobileTopbar> {

  @override
  Widget build(BuildContext context) {

    var screen_height = MediaQuery.of(context).size.height;
    var screen_width = MediaQuery.of(context).size.width;
    var topbar_height = screen_height / 4.3 > 122 ? screen_height / 4.3 : 122;
    var mainblock_height = ((MediaQuery.of(context).size.height/5) * 4) - 130;
    var projectblock_height = mainblock_height/2.4;
    var topbar_width = ((screen_width / 5) * 4) - 140;

    print(topbar_width / 2.5);
    
    return Padding(                                                                  // Top-Bar
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              // Container(
              //   height: topbar_height - 10,
              //   width: screen_width ,
              //
              //   decoration: BoxDecoration(
              //     //borderRadius: BorderRadius.circular(10),
              //     color: Colors.blueGrey.shade500,
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.black.withOpacity(0.3),
              //         spreadRadius: 4,
              //         blurRadius: 27,
              //         offset: Offset(0, 3),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                height: topbar_height - 10,
                width: screen_width ,
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
                    height: topbar_height - 10,
                    width: screen_width ,

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: topbar_height - 10,
                  width: screen_width - 50 > 500 ? screen_width - 50 : 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(

                        children: [
                          topbar_height > 180 ? CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: ClipOval(
                              child: Container(
                                height: 115,
                                width: 115,
                                child: Image.asset(
                                  'assets/myself.jpeg',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ) : Container(

                            height: topbar_height/1.6,
                            width: topbar_height/1.6,
                            child: Image.asset(
                              'assets/myself.jpeg',
                              fit: BoxFit.cover,),
                            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,top: 0,bottom: 10),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MediaQuery.of(context).size.width > 515 ? const Text(
                                  "Rudraveer Singh Sandhu",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ) : const Text(
                                  "Rudraveer Singh Sandhu",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                                MediaQuery.of(context).size.width > 515 ? const Text(
                                  "RudraveerSandhu@gmail.com",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ) : Text(
                                  "RudraveerSandhu@gmail.com",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade300,
                                      fontWeight: FontWeight.w300),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                height: topbar_height - 10,
                width: screen_width > 500 ? screen_width + 50 : 500,
                child: Column(
                  mainAxisAlignment: screen_width > 655 ? MainAxisAlignment.center : MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        _launchUrl(Uri.parse('https://github.com/rudraveersandhu'));
                      },
                      child: Container(
                        width: (topbar_width) / 2.5 > 150 ? (topbar_width) / 2.5  : 150,
                        height: 37,
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  Future<void> _launchUrl(Uri _url ) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

}
