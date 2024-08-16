import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileSocialBar extends StatefulWidget {
  const MobileSocialBar({super.key});

  @override
  State<MobileSocialBar> createState() => _MobileSocialBarState();
}

class _MobileSocialBarState extends State<MobileSocialBar> {
  @override
  Widget build(BuildContext context) {

    var sidebar_height = MediaQuery.of(context).size.height - 100;
    var sidebar_width = MediaQuery.of(context).size.width/1.2;

    var screen_width = MediaQuery.of(context).size.width;

    var mainblock_height = ((MediaQuery.of(context).size.height/5) * 4) - 130;


    Color mainblock_color = Colors.deepPurple.withRed(5650).withGreen(0).withBlue(5650);
    Color sidebar_color = Colors.deepPurple.withRed(4900).withGreen(0).withBlue(4900);

    return Container(
      width: sidebar_width,
      color: Colors.blueGrey.shade50,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Socials",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey.shade700,
                  fontWeight:FontWeight.w200
              ),
            ),
          ),
          Center(
            child: Container(
              height: sidebar_height/2.8,
              width: 115,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
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
            ),
          ),
        ],
      ),
    ) ;
  }

  Future<void> _launchUrl(Uri _url ) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

}
