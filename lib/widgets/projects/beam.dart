import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/project_model.dart';

class Beam extends StatefulWidget {
  const Beam({super.key});

  @override
  State<Beam> createState() => _BeamState();
}

class _BeamState extends State<Beam> {
  @override
  Widget build(BuildContext context) {
    final model = context.read<ProjectModel>();
    Color text_color = Colors.grey.shade700;
    var mainblock_height = MediaQuery.of(context).size.height / .8;
    var mainblock_width = ((MediaQuery.of(context).size.width / 5) * 4) - 140;

    var projectblock_height = mainblock_height ;
    var projectblock_width = mainblock_width;
    return Container(
      height: double.infinity,
      child: Column(
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
                    'assets/beamweb.png',
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
                              'Beam'.toUpperCase(),
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
              'assets/beamweb.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
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
                Text('Beam is a care app for women suffering fro breast cancer. '
                    'This app was made for an NGO that aimed to provide useful information and blogs to those in need.'
                    'It also aims at providing a planner for medical appointments, daily medicine intake and gamified hydration tracker for completing daily hydration goals',
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
                  '1) Read dedicated blogs from people across the globe',
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '2) Publish helpful blogs for those in need and confusion.',
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '3) Gamified hydration tracker',
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '4) Medical appointment tracker',
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '4) Medicine tracker',
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '5) Phone and email based login',
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Github:',
                    style: TextStyle(fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Link : ',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: (){
                        _launchUrl(Uri.parse('https://github.com/rudraveersandhu/beam'));
                      },
                      child: Text(
                        'https://github.com/rudraveersandhu/beam',
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.indigoAccent
                        ),
                      ),
                    ),
                  ],
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
          Container(
            height: mainblock_height/1.9,
            width: mainblock_width,
            child: Image.network(
              'https://i.postimg.cc/PxWKSkS2/Screenshot-2024-08-16-at-9-03-23-AM.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: mainblock_height/1.9,
            width: mainblock_width,
            child: Image.network(
              'https://i.postimg.cc/NGyRGt6V/Screenshot-2024-08-16-at-9-03-40-AM.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: mainblock_height/1.9,
            width: mainblock_width,
            child: Image.network(
              'https://i.postimg.cc/C5DZGFJx/Screenshot-2024-08-16-at-9-03-54-AM.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: mainblock_height/1.9,
            width: mainblock_width,
            child: Image.network(
              'https://i.postimg.cc/qRWh6tsF/Screenshot-2024-08-16-at-9-04-02-AM.png',
              fit: BoxFit.fitWidth,
            ),
          ),


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
