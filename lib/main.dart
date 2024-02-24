import 'package:course_app/pages/mainContent.dart';
import 'package:course_app/pages/statistics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'crud_operation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "YOUR_API_KEY",
          projectId: "YOUR_PROJECT_ID",
          messagingSenderId: "YOUR_SENDER_ID",
          appId: "YOUR_APP_ID"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.inter().fontFamily),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CollectionReference planning =
      FirebaseFirestore.instance.collection('planning');

  final List<Map<String, dynamic>> menuItems = [
    {"icon": Icons.home_outlined, "title": "Home", "color": Colors.blue},
    {"icon": Icons.category_outlined, "title": "Course", "color": Colors.grey},
    {
      "icon": Icons.folder_delete_outlined,
      "title": "Resources",
      "color": Colors.grey
    },
    {"icon": Icons.messenger_outline, "title": "Message", "color": Colors.grey},
    {"icon": Icons.settings, "title": "Settings", "color": Colors.grey},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.signal_wifi_statusbar_connected_no_internet_4_sharp,
              color: Colors.blue,
            ),
            Text(
              '  So Corp',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            )
          ],
        ),
      ),
      body: Row(
        children: [
          // Sidebar
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    // Menu Items
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: menuItems.length,
                      itemBuilder: (context, index) {
                        final item = menuItems[index];
                        return ListTile(
                          title: Row(
                            children: [
                              Icon(
                                item["icon"],
                                color: item["color"],
                              ),
                              const SizedBox(width: 12),
                              Text(
                                item["title"],
                                style: TextStyle(
                                  color: item["color"],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddaPlan(),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Image.network(
                      'https://static.vecteezy.com/system/resources/thumbnails/024/387/915/small/3d-male-character-sitting-on-a-sofa-and-working-on-a-laptop-with-thinking-pose-free-png.png',
                      height: 200,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: double.infinity,
            width: 1,
            color: const Color.fromARGB(255, 236, 236, 236),
          ),
          // Main Content
          const MainContent(),
          Container(
            height: double.infinity,
            width: 1,
            color: const Color.fromARGB(255, 236, 236, 236),
          ),
          // Statistics
          const Statistics(),
        ],
      ),
    );
  }
}
