import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;
  const SideBar({required this.currentIndex, required this.onItemTapped});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {


  @override
  Widget build(BuildContext context) {
    var screen_height = MediaQuery.of(context).size.height;
    var screen_width = MediaQuery.of(context).size.width;

    var sidebar_height = screen_height/1.1;
    var sidebar_width = screen_width/5;

    Color sidebar_color = Colors.blueGrey.shade50;
    Color text_color = Colors.white;
    // Colors.deepPurple.withRed(4900).withGreen(0).withBlue(4900);
    print('Sidebar :$sidebar_height');

    return screen_width > 1074 ? Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Container(                                       // Side-Bar
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
          color: sidebar_color
        ),
        height: sidebar_height,
        width: sidebar_width,
        child: Column(
          children: [
            Container(
              height: sidebar_height > 360 ? sidebar_height/2.1 : sidebar_height/1.1,
              width: sidebar_width/1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildOption(CupertinoIcons.home,'Home',0,text_color),
                  _buildOption(CupertinoIcons.settings,'Skills',1,text_color),
                  _buildOption(CupertinoIcons.tv,'Projects',2,text_color),
                  _buildOption(CupertinoIcons.hand_thumbsup,'Interests',3,text_color),
                ],
              ),
            ),
            sidebar_height > 360 ? Padding(
              padding: const EdgeInsets.only(right: 150.0),
              child: Text(
                "Socials",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade700,
                    fontWeight:FontWeight.w300
                ),
              ),
            ) : Container(),

            sidebar_height > 360 ? SizedBox(
              height: sidebar_height/2.8,
              width: sidebar_width/2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      _launchUrl(Uri.parse('https://github.com/rudraveersandhu'));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          CupertinoIcons.tornado,
                          color: Colors.grey.shade700,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "GitHub",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight:FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      _launchUrl(Uri.parse('https://www.linkedin.com/in/rudraveersandhu/'));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          CupertinoIcons.link,
                          color: Colors.grey.shade700,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "Linked-In",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight:FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      _launchUrl(Uri.parse('https://www.linkedin.com/in/rudraveersandhu/'));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          CupertinoIcons.arrow_branch,
                          color: Colors.grey.shade700,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "UpComing",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight:FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ) : Container(),
          ],
        ),
      ),
    ) : Container();
  }

  Future<void> _launchUrl(Uri _url ) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Widget _buildOption(IconData icon, String option, int index, Color text_color) {
    bool isSelected = widget.currentIndex == index;

    return GestureDetector(
      onTap: () => widget.onItemTapped(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(5),
          color: isSelected ? Colors.blueGrey.shade500.withOpacity(.8) : Colors.transparent,
        ),
        padding: EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
          left: !isSelected ? 20.0 : 10.0,
          right: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: isSelected ? text_color: Colors.grey.shade900,
            ),
            SizedBox(width: 15),
            Text(
              option,
              style: TextStyle(
                color: isSelected ? text_color : Colors.grey.shade900,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
