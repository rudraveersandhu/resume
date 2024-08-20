import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/models/project_model.dart';
import 'package:resume/widgets/projects/aurora.dart';
import 'package:resume/widgets/projects/beam.dart';
import 'package:resume/widgets/projects/fitness_mechanic.dart';
import 'package:resume/widgets/projects/my_store.dart';
import 'package:resume/widgets/projects/sparrow.dart';
import 'package:resume/widgets/projects/strings.dart';
import 'package:resume/widgets/projects/verve.dart';

class PcProjectSection extends StatefulWidget {
  const PcProjectSection({super.key});

  @override
  State<PcProjectSection> createState() => _PcProjectSectionState();
}

class _PcProjectSectionState extends State<PcProjectSection> {
  int? selectedProject;

  @override
  Widget build(BuildContext context) {
    Color text_color = Colors.grey.shade700;
    var mainblock_height = MediaQuery.of(context).size.height / .8;
    var mainblock_width = ((MediaQuery.of(context).size.width / 5) * 4) - 140;

    var projectblock_height = mainblock_height ;
    var projectblock_width = mainblock_width;
    final model = context.read<ProjectModel>();

    return Column(
      children: [
        Consumer<ProjectModel>(
          builder: (context, model, child) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child:
            model.index == 0 ? Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                    const EdgeInsets.only(top: 40.0, left: 50, bottom: 10),
                    child: Text(
                      "Projects",
                      style: TextStyle(
                          fontSize: 22,
                          color: text_color,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Wrap(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              model.index = 7;
                            });
                          },
                          child: projectBlock('Competus', "assets/ddweb.jpeg",
                              'The perfect AI powered Competitive exam prep app.'),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              model.index = 1;
                            });
                          },
                          child: projectBlock('Strings', "assets/stringsweb.jpeg",
                              "A rich music spotify type music player, with Youtube database!"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              model.index = 2;
                            });
                          },
                          child: projectBlock('Cryptup', "assets/cryptupweb.png",
                              "The Crypto Trading App!"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              model.index = 3;
                            });
                          },
                          child: projectBlock('Beam', "assets/beamweb.png",
                              'Your personal breast cancer helper, connect to the community!'),
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     setState(() {
                        //       model.index = 4;
                        //     });
                        //   },
                        //   child: projectBlock('Fitness Mechanic', "assets/fitnessmechanicweb.jpeg",
                        //       'The personal trainer for your fitness journey'),
                        // ),
                        // GestureDetector(
                        //   onTap: () {
                        //     setState(() {
                        //       model.index = 5;
                        //     });
                        //   },
                        //   child: projectBlock('Sparrow', "assets/sparrowweb.jpeg",
                        //       "Connect to anyone and everyone, securely"),
                        // ),
                        // GestureDetector(
                        //   onTap: () {
                        //     setState(() {
                        //       model.index = 6;
                        //     });
                        //   },
                        //   child: projectBlock('MyStore', "assets/mystoreweb.png",
                        //       'Market in your pocket, buy ANYTHING!'),
                        // ),

                      ],
                    ),
                  ),
                ),
              ],) :
            model.index == 1 ? Container(
                  width: projectblock_width,
                  height: 3500,
                      child: Center(
                        child: Strings(),
                  ),
                ) :
            model.index == 2 ? Container(
              width: projectblock_width,
              height: 3500,
              child: Center(
                child: Verve(),
              ),
            ):
            model.index == 3 ? Container(
              width: projectblock_width,
              height: 3500,
              child: Center(
                child: Beam(),
              ),
            ):
            model.index == 4 ? Container(
              width: projectblock_width,
              height: 3500,
              child: Center(
                child: FitnessMechanic(),
              ),
            ):
            model.index == 5 ? Container(
              width: projectblock_width,
              height: 3500,
              child: Center(
                child: Sparrow(),
              ),
            ):
            model.index == 6 ? Container(
              width: projectblock_width,
              height: 3500,
              child: Center(
                child: MyStore(),
              ),
            ):
            model.index == 7 ? Container(
              width: projectblock_width,
              height: 3500,
              child: Center(
                child: Aurora(),
              ),
            ):
            Container()
          );
          }
        ),
      ],
    );
  }

  Widget projectBlock(String title, String imagePath, String description) {
    var mainblock_height =
        ((MediaQuery.of(context).size.height / 5) * 4) - 130;
    var mainblock_width = ((MediaQuery.of(context).size.width / 5) * 4) - 140;

    var projectblock_height = mainblock_height / 2.4;
    var projectblock_width =
    (mainblock_width / 4.6) < 212.0 ? 212.0 : mainblock_width / 4.6;

    return Padding(
      padding: const EdgeInsets.only(right: 20),
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
              height: (projectblock_height / 3) < 45
                  ? (projectblock_height / 3) < 35
                  ? (projectblock_height / 3) < 25
                  ? projectblock_height / 1.35
                  : projectblock_height / 1.16
                  : projectblock_height / 1.11
                  : (projectblock_height / 3) > 55
                  ? projectblock_height / 1.7 - 4
                  : projectblock_height / 1.4,
              margin: EdgeInsets.only(top: 10.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: projectblock_height / 3 < 45
                  ? 0
                  : projectblock_height / 3 > 55
                  ? projectblock_height / 3
                  : projectblock_height / 5,
              width: projectblock_width,
              child: Stack(
                children: [
                  SizedBox(
                    height: projectblock_height / 3 < 45
                        ? 0
                        : projectblock_height / 3 > 55
                        ? projectblock_height / 3
                        : projectblock_height / 5,
                    width: projectblock_width,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                      child: Container(
                        height: projectblock_height / 3 < 45
                            ? 0
                            : projectblock_height / 3 > 55
                            ? projectblock_height / 3
                            : projectblock_height / 5,
                        width: projectblock_width,
                      ),
                    ),
                  ),
                  Container(
                    height: projectblock_height / 3 < 45
                        ? 0
                        : projectblock_height / 3 > 55
                        ? projectblock_height / 3
                        : projectblock_height / 5,
                    width: projectblock_width,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          projectblock_height / 3 > 45
                              ? Text(
                            title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade50),
                          )
                              : Container(),
                          projectblock_height / 3 > 55
                              ? Text(
                            description,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                                letterSpacing: .6),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          )
                              : Container()
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
