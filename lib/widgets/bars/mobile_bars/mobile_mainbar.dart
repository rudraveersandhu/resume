import 'package:flutter/material.dart';
import 'package:resume/widgets/sections/mobile_sections/interest_section.dart';

import '../../sections/mobile_sections/project_section.dart';
import '../../sections/mobile_sections/skill_section.dart';
import 'mobile_social_bar.dart';

class MobileMainbar extends StatefulWidget {
  const MobileMainbar({super.key});

  @override
  State<MobileMainbar> createState() => _MobileMainbarState();
}

class _MobileMainbarState extends State<MobileMainbar> {

  @override
  Widget build(BuildContext context) {

    var screen_width = MediaQuery.of(context).size.width;

    var mainblock_height = ((MediaQuery.of(context).size.height/5) * 4) - 90;

    Color mainblock_color = Colors.deepPurple.withRed(5650).withGreen(0).withBlue(5650);


    return Padding(                                                                              // Main-Block
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),

        ),
        height: mainblock_height -25,
        width: screen_width - 50,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MobileSocialBar(),
              SizedBox(height: 50,),
              ProjectSection(),
              SizedBox(height: 50,),
              SkillsSection(),
              SizedBox(height: 50,),
              const InterestSection(),
              SizedBox(height: 50,),

            ],
          ),
        ),
      ),
    );
  }
}
