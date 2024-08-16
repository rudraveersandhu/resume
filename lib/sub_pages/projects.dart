import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/widgets/sections/mobile_sections/project_section.dart';
import 'package:resume/widgets/sections/mobile_sections/skill_section.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/bars/mobile_bars/mobile_mainbar.dart';
import '../widgets/bars/mobile_bars/mobile_topbar.dart';
import '../widgets/bars/pc_bars/master_bar.dart';
import '../widgets/bars/pc_bars/top_bar.dart';


class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    var screen_height = MediaQuery.of(context).size.height;
    var screen_width = MediaQuery.of(context).size.width;
    var sidebar_height = screen_height - 100;
    var sidebar_width = screen_width/5;

    Color background_color = Colors.deepPurple.withRed(5400).withGreen(0).withBlue(5400);

    Future<void> _launchUrl(Uri _url ) async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    if( screen_width > 1074 ){
      return Scaffold(
        body: Container(
          height: screen_height,
          //width: screen_width,
          color: background_color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: sidebar_height,
                width: sidebar_width,
              ),
              const Column(
                children: [
                  TopBar(),

                ],
              ),
            ],
          ),
        ),
      );
    }
    else {
      return Scaffold(
        body: Center(
          child: Container(
            height: screen_height,
            width: screen_width,
            color: background_color,
            child: const Column(
              children: [
                MobileTopbar(),
                MobileMainbar(),
              ],
            ),
          ),
        ),
      );
    }
  }
}



