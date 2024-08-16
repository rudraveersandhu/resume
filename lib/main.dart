import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/homepage.dart';
import 'package:resume/models/project_model.dart';
import 'package:resume/sub_pages/interests.dart';
import 'package:resume/sub_pages/projects.dart';
import 'package:resume/sub_pages/skills.dart';
import 'package:resume/widgets/bars/pc_bars/side_bar.dart';



void main() {
  runApp(
    MultiProvider(
    providers: [
      ChangeNotifierProvider<ProjectModel>(
        create: (context) => ProjectModel(),
      ),

    ],
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        // Add other routes as needed
      },
    );
  }
}

class HomeScreen extends StatefulWidget {


  HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();

  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool get isMobile => (defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS) && kIsWeb == false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Homepage(currentIndex: _selectedIndex,),
          Positioned(
            left: 60,
            top: 50,
            child: SideBar(
              currentIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}
