import 'package:flutter/material.dart';
import 'package:resume/widgets/sections/pc_sections/pc_skill_section.dart';

import '../../sections/pc_sections/pc_interest_section.dart';
import '../../sections/pc_sections/pc_project_section.dart';

class MasterBar extends StatefulWidget {
  final int currentIndex;
  const MasterBar({required this.currentIndex});


  @override
  State<MasterBar> createState() => _MasterBarState();
}

class _MasterBarState extends State<MasterBar> {
  @override
  Widget build(BuildContext context) {

    var mainblock_height = ((MediaQuery.of(context).size.height/5) * 4) - 130;
    var mainblock_width = ((MediaQuery.of(context).size.width/5)*4) - 140;

    var projectblock_height = mainblock_height/2.4;
    Color mainblock_color = Colors.blueGrey.shade50;

    //Colors.deepPurple.withRed(5650).withGreen(0).withBlue(5650);

    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 4,
              blurRadius: 27,
              offset: Offset(0, 3),
            ),
          ],
          color: mainblock_color
        ),
        height: mainblock_height -25,
        width: mainblock_width,
        child:  SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.currentIndex == 0 ? Column(
                children: [
                  PcProjectSection(),
                  PcSkillSection(),
                  PcInterestSection()
                ],
              )
                  : widget.currentIndex == 1 ? PcSkillSection()
                  : widget.currentIndex == 2 ? PcProjectSection()
                  : widget.currentIndex == 3 ? PcInterestSection() : Container()




            ],
          ),
        ),
      ),
    );
  }


}
