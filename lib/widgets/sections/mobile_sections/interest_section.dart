import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../sub_pages/project_details.dart';

class InterestSection extends StatefulWidget {
  const InterestSection({super.key});

  @override
  State<InterestSection> createState() => _InterestSectionState();
}

class _InterestSectionState extends State<InterestSection> {
  Widget build(BuildContext context) {
    var mainblock_height = ((MediaQuery.of(context).size.height/5) * 4) - 130;
    var mainblock_width = ((MediaQuery.of(context).size.width/5)*4) - 140;

    var projectblock_height = mainblock_height/2.4;
    var projectblock_width = (mainblock_width/4.6) < 212.0 ? 212.0 : mainblock_width/4.6;

    MediaQuery.of(context).size.width > 515 ? projectblock_width : projectblock_width = MediaQuery.of(context).size.width -150;
    MediaQuery.of(context).size.width > 515 ? projectblock_height : projectblock_height = mainblock_height/1.6;

    Color sidebar_color = Colors.deepPurple.withRed(4900).withGreen(0).withBlue(4900);
    var sidebar_width = MediaQuery.of(context).size.width/1.2;

    return Container(
      color: Colors.blueGrey.shade50,
      width: sidebar_width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 10),
              child: Text(
                "Interests",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Wrap(
                spacing: 20.0,
                //runSpacing: 5.0,
                children: [
                  buildInterestBlock(context,'Flame', "assets/flame.jpg", "2D game engine built on top of Flutter"),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInterestBlock(BuildContext context, String title, String imagePath,String description){
    var mainblock_height = ((MediaQuery.of(context).size.height/5) * 4) ;
    var mainblock_width = ((MediaQuery.of(context).size.width/5)*4) ;

    var projectblock_height = mainblock_height/2;
    var projectblock_width = (mainblock_width/4.6) < 212.0 ? 212.0 +100 : mainblock_width/4.6;


    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (builder) => const ProjectDetails()));
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 35,
            ),
          ],
        ),
        height: projectblock_height,
        width: projectblock_width,
        child: Column(
          children: [
            Container(
              width: projectblock_width,
              height: (projectblock_height/3) < 45 ? (projectblock_height/3) < 35 ? (projectblock_height/3) < 25 ? projectblock_height/1.35 : projectblock_height/1.16 : projectblock_height/1.11 : (projectblock_height/3) > 55 ? projectblock_height/1.7 - 4: projectblock_height/1.4,
              margin: EdgeInsets.only(top: 10.0),
              child: Image.asset(imagePath,
                fit: BoxFit.cover,),
            ),
            Container(
              height: projectblock_height/3 < 45 ? 0 : projectblock_height/3 > 55 ? projectblock_height/3 : projectblock_height/5,
              width: projectblock_width,
              child: Stack(
                children: [
                  SizedBox(
                    height: projectblock_height/3 < 45 ? 0 : projectblock_height/3 > 55 ? projectblock_height/3 : projectblock_height/5,
                    width: projectblock_width,
                    child: Image.asset(imagePath,
                      fit: BoxFit.fitWidth,),
                  ),
                  Positioned(
                    top: 200,
                    bottom: 0,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                      child: Container(
                        height: projectblock_height/3 < 45 ? 0 : projectblock_height/3 > 55 ? projectblock_height/3 : projectblock_height/5,
                        width: projectblock_width,
                      ),
                    ),
                  ),

                  Container(
                    height: projectblock_height/3 < 45 ? 0 : projectblock_height/3 > 55 ? projectblock_height/3 : projectblock_height/5,
                    width: projectblock_width,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          projectblock_height/3 > 45 ? Text(
                            title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade50
                            ),
                          ) : Container(),
                          projectblock_height/3 > 55 ? Text(description,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                                letterSpacing: .6
                            ),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ) : Container()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
