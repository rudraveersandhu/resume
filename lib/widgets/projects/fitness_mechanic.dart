import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/project_model.dart';

class FitnessMechanic extends StatefulWidget {
  const FitnessMechanic({super.key});

  @override
  State<FitnessMechanic> createState() => _FitnessMechanicState();
}

class _FitnessMechanicState extends State<FitnessMechanic> {

  @override
  Widget build(BuildContext context) {
    final model = context.read<ProjectModel>();
    Color text_color = Colors.grey.shade700;
    var mainblock_height = MediaQuery.of(context).size.height / .8;
    var mainblock_width = ((MediaQuery.of(context).size.width / 5) * 4) - 140;

    var projectblock_height = mainblock_height ;
    var projectblock_width = mainblock_width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 70,     // change this for changing blur container length
          width: projectblock_width,
          child: Stack(
            children: [
              SizedBox(
                height: 70,
                width: projectblock_width,
                child: Image.asset(
                  'assets/fitnessmechanicweb.jpeg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                child: Container(
                  height: 70,
                  width: projectblock_width,
                ),
              ),
              Container(
                height: 70,
                width: projectblock_width,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      projectblock_height / 3 > 45
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                context.read<ProjectModel>().updateData(index: 0);
                                // selectedProject = null;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 40,
                              color: Colors.blueGrey.shade50.withOpacity(.3),
                              child: Center(
                                child: Text(
                                  'Back ',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Fitness Mechanic'.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.grey.shade50,
                                fontSize: 40,
                                letterSpacing: 10
                            ),
                          ),
                          Container(
                            width: 100,
                          )
                        ],
                      )
                          : Container(),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: mainblock_height/2.5,
          width: 2000,
          child: Image.asset(
            'assets/fitnessmechanicweb.jpeg',
            fit: BoxFit.cover,

          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30.0,top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Overview:',
                  style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text('Fitness Mechanic is a workout recommender and tracker app that helps people achieve their fitness goals in the most optimum way.'
                  'It aims to become a virtual trainer that helps you guiding through the most optimum workouts for your fitness Journey. ',
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Downloads:',
                  style: TextStyle(fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '1) For IOS(ipa):',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '2) For Android(apk):',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Features:',
                  style: TextStyle(fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '1) Dedicated workout for each muscle group.',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '2) Video tutorials for position correction ',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '3) Data sourced by fitness industry experts ',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '4) Clean and user friendly UI',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Screen Shots:',
                  style: TextStyle(fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),


      ],
    );
  }
}
