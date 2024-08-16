import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../sub_pages/project_details.dart';

class PcSkillSection extends StatefulWidget {
  const PcSkillSection({super.key});

  @override
  State<PcSkillSection> createState() => _PcSkillSectionState();
}

class _PcSkillSectionState extends State<PcSkillSection> {
  @override
  Widget build(BuildContext context) {
    var mainblock_height = ((MediaQuery.of(context).size.height/5) * 4) - 130;
    var projectblock_height = mainblock_height/2.4;
    Color text_color = Colors.grey.shade700;

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(                                                              // Title Projects
            padding: const EdgeInsets.only(top: 40.0,left: 50,bottom: 10),
            child: Text("Skills",
              style: TextStyle(
                  fontSize: 22,
                  color: text_color,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),                                                          // Title Projects
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(                                                              // 1st Row of project blocks
            padding: const EdgeInsets.only(left: 40.0),
            child: Wrap(
              children: <Widget>[
                makeEntityBlock('Flutter', "assets/fl.png", "An open source framework by Google for building apps"),
                makeEntityBlock('Firebase', "assets/firebase.jpg", 'Platforms for backend cloud services by Google'),
                makeEntityBlock('C/C++ and Iot', "assets/c.jpg", 'Gives you super-powers'),
              ],
            ),
          ),
        ),
      ],
    );
  }


  Widget makeEntityBlock(String title ,String imagePath,String description){
    var mainblock_height = ((MediaQuery.of(context).size.height/5) * 4) - 130;
    var mainblock_width = ((MediaQuery.of(context).size.width/5)*4) - 140;

    var projectblock_height = mainblock_height/2.4;
    var projectblock_width = (mainblock_width/4.6) < 212.0 ? 212.0 : mainblock_width/4.6;


    return Padding(
      padding:  const EdgeInsets.only(right: 20),
      child: GestureDetector(
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
              // Container(
              //   height: projectblock_height/3 < 45 ? 0 : projectblock_height/3 > 55 ? projectblock_height/3 : projectblock_height/5,
              //   width: 300,
              //   child: Stack(
              //     children: [
              //       SizedBox(
              //         height: projectblock_height/3 < 45 ? 0 : projectblock_height/3 > 55 ? projectblock_height/3 : projectblock_height/5,
              //         width: projectblock_width,
              //         child: Image.asset(imagePath,
              //           fit: BoxFit.fitWidth,),
              //       ),
              //       // Container(
              //       //   height: projectblock_height/3 < 45 ? 0 : projectblock_height/3 > 55 ? projectblock_height/3 : projectblock_height/5,
              //       //   width: projectblock_width,
              //       //   child: BackdropFilter(
              //       //      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              //       //     child: Container(
              //       //       width: projectblock_width,
              //       //       height: 20,
              //       //     ),
              //       //   ),
              //       // ),
              //       Container(
              //         height: projectblock_height/3 < 45 ? 0 : projectblock_height/3 > 55 ? projectblock_height/3 : projectblock_height/5,
              //         width: projectblock_width,
              //         child: Center(
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             children: [
              //               projectblock_height/3 > 45 ? Text(
              //                 title,
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                   color: Colors.grey.shade50
              //                 ),
              //               ) : Container(),
              //               projectblock_height/3 > 55 ? Text(description,
              //                 style: TextStyle(
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.w200,
              //                     color: Colors.white,
              //                     letterSpacing: .6
              //                 ),
              //                 softWrap: true,
              //                 textAlign: TextAlign.center,
              //               ) : Container()
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
