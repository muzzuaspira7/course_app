import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CollectionReference planning =
      FirebaseFirestore.instance.collection('planning');

  @override
  Widget build(BuildContext context) {
    var title = ['Work', 'wanna go outside', 'just have a fun', 'i know it'];
    var fromtime = ['6:00 am', '6:00 am', '6:00 am', '6:00 am'];

    var totime = ['5:00 pm', '6:00 am', '6:00 am', '6:00 am'];

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
      )),
      body: Row(
        children: [
          // Sidebar
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        'Menu',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    // Menu Items
                    ListTile(
                      title: const Text('Home',
                          style: TextStyle(color: Colors.black)),
                      onTap: () {
                        // Add navigation functionality here
                      },
                    ),
                    ListTile(
                      title: const Text('Settings',
                          style: TextStyle(color: Colors.black)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddaPlan(),
                            ));
                      },
                    ),
                    ListTile(
                      title: const Text('Music',
                          style: TextStyle(color: Colors.black)),
                      onTap: () {
                        // Add navigation functionality here
                      },
                    ),
                    ListTile(
                      title: const Text('About',
                          style: TextStyle(color: Colors.black)),
                      onTap: () {
                        // Add navigation functionality here
                      },
                    ),
                  ],
                ),
              ),
              const Image(
                  image: NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/024/387/915/small/3d-male-character-sitting-on-a-sofa-and-working-on-a-laptop-with-thinking-pose-free-png.png')),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          // Main Content
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  // color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hello, BRUNO, Welcome Back!',
                        style: TextStyle(color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            'My Courses',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'view all',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              // color: Colors.blue,
                              child: Image.asset('assets/images/blue.jpg'),
                              height: 150,
                              width: 300,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              // color: Colors.blue,
                              child: Image.asset('assets/images/orange.jpg'),

                              height: 150,
                              width: 300,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              // color: Colors.blue,
                              child: Image.asset('assets/images/green.jpg'),

                              height: 150,
                              width: 300,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              // color: Colors.blue,
                              child: Image.asset('assets/images/yellow.jpg'),

                              height: 150,
                              width: 300,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Planning',
                        style: TextStyle(fontSize: 23, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: const Color(0xfff7f7f7),
                                    child: ListTile(
                                      trailing: const Icon(Icons.more_vert),
                                      leading: const Icon(
                                        Icons.ramen_dining_sharp,
                                        color: Colors.blue,
                                      ),
                                      title: Text(title[index]),
                                      subtitle: Text(fromtime[index]),
                                    ),
                                  ),
                                );
                              },
                              itemCount: title.length,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: const Color(0xfff7f7f7),
                                    child: ListTile(
                                      trailing: const Icon(Icons.more_vert),
                                      leading: const Icon(
                                        Icons.headphones,
                                        color: Colors.blue,
                                      ),
                                      title: Text(title[index]),
                                      subtitle: Text(fromtime[index]),
                                    ),
                                  ),
                                );
                              },
                              itemCount: title.length,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Crud Operation'),
                      //   StreamBuilder(
                      //       stream: planning.snapshots(),
                      //       builder: (context,
                      //           AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                      //         if (streamSnapshot.hasData) {
                      //           return ListView.builder(
                      //               itemCount: streamSnapshot.data!.docs.length,
                      //               itemBuilder: (context, index) {
                      //                 final DocumentSnapshot documentSnapshot =
                      //                     streamSnapshot.data!.docs[index];
                      //                 return Card(
                      //                   child: ListTile(
                      //                     title: Text(documentSnapshot['title']),
                      //                   ),
                      //                 );
                      //               });
                      //         } else {
                      //           return CircularProgressIndicator();
                      //         }
                      //       })
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: double.infinity,
          ),
          // statistics
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Statistics',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: const Color(0xffebf5ff),
                          height: 140,
                          width: 140,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  width: 100,
                                  child: Text(
                                    'Courses Completed',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.ac_unit_rounded,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      '02',
                                      style: TextStyle(
                                          fontSize: 33,
                                          color: Color(0xff006ed3)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: const Color(0xffebf5ff),
                          height: 140,
                          width: 140,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  width: 100,
                                  child: Text(
                                    'Courses Completed',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.ac_unit_rounded,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      '02',
                                      style: TextStyle(
                                          fontSize: 33,
                                          color: Color(0xff006ed3)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: const Color(0xffebf5ff),
                          height: 140,
                          width: 140,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  width: 100,
                                  child: Text(
                                    'Courses Completed',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.ac_unit_rounded,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      '02',
                                      style: TextStyle(
                                          fontSize: 33,
                                          color: Color(0xff006ed3)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: const Color(0xffebf5ff),
                          height: 140,
                          width: 140,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  width: 100,
                                  child: Text(
                                    'Courses Completed',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.ac_unit_rounded,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      '02',
                                      style: TextStyle(
                                          fontSize: 33,
                                          color: Color(0xff006ed3)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
