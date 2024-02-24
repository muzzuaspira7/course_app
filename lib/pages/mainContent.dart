import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  var title = [
    'Have to learn APIS',
    'Have a meeting today',
    'Friends Home',
    'Have to practice Flutter'
  ];
  var fromtime = ['6:00 am', '6:00 am', '6:00 am', '6:00 am'];

  var totime = ['5:00 pm', '6:00 am', '6:30 am', '6:50 am'];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: SizedBox(
                        // color: Colors.blue,
                        child: Image.asset('assets/images/blue.jpg'),
                        height: 150,
                        width: 300,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        // color: Colors.blue,
                        child: Image.asset('assets/images/green.jpg'),

                        height: 150,
                        width: 300,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
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
                const Row(
                  children: [
                    Text(
                      'Planning',
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(0),
                            child: Card(
                              // color: const Color(0xfff7f7f7),
                              color: const Color.fromARGB(255, 255, 255, 255),

                              child: ListTile(
                                trailing: const Icon(Icons.more_vert),
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    color: const Color.fromARGB(
                                        255, 223, 241, 255),
                                    child: const Center(
                                      child: FaIcon(Icons.menu_book_sharp),
                                    ),
                                  ),
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
                            padding: const EdgeInsets.all(0),
                            child: Card(
                              // color: const Color(0xfff7f7f7),
                              color: const Color.fromARGB(255, 255, 255, 255),

                              child: ListTile(
                                trailing: const Icon(Icons.more_vert),
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    color: const Color.fromARGB(
                                        255, 223, 241, 255),
                                    child: const Center(
                                      child: FaIcon(Icons.headphones),
                                    ),
                                  ),
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
                const SizedBox(
                  height: 20,
                ),
                const Text('Crud Operation'),
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
    );
  }
}
