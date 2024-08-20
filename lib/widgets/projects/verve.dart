import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/project_model.dart';

class Verve extends StatefulWidget {
  const Verve({super.key});

  @override
  State<Verve> createState() => _VerveState();
}

class _VerveState extends State<Verve> {
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
                  'assets/cryptupweb.png',
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
                            'cryptup'.toUpperCase(),
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
            'assets/cryptupweb.png',
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
              Text("Cryptus, designed to empower you with real-time insights and seamless trading experiences. Whether you're tracking the latest market trends, analyzing cryptocurrency data, or executing trades, our app provides an intuitive and secure platform to manage your digital assets with ease. Get started today and take control of your crypto investments, all within a user-friendly interface",
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
                '1) Real-Time Market Data: Access live price updates, charts, and trends for various cryptocurrencies.',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '2) Secure Trading: Execute buy and sell orders securely with robust encryption and authentication protocols.',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "3) Portfolio Management: Track your crypto holdings, view asset allocation, and monitor your portfolio's performance over time.",
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '4) Dark Mode: Switch between light and dark themes to suit your trading environment and preferences.',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '4) WebSocket Integration: Real-time updates via WebSocket API for live data streaming and instant information.',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '5) Multiple Cryptocurrencies: Support for a wide range of cryptocurrencies, including Bitcoin (BTC), Ethereum (ETH), and many more.',
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
                      _launchUrl(Uri.parse('https://github.com/rudraveersandhu/cryptup'));
                    },
                    child: Text(
                      'https://github.com/rudraveersandhu/cryptup',
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
              Container(
                height: mainblock_height/1.9,
                width: mainblock_width,
                child: Image.network(
                  'https://i.postimg.cc/0yMGsc2B/cryptup-folio.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),


      ],
    );
  }
  Future<void> _launchUrl(Uri _url ) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
