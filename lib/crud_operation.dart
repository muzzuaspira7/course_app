import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddaPlan extends StatefulWidget {
  const AddaPlan({super.key});

  @override
  State<AddaPlan> createState() => _AddaPlanState();
}

class _AddaPlanState extends State<AddaPlan> {
  final CollectionReference planning =
      FirebaseFirestore.instance.collection('planning');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a plan'),
      ),
      body: StreamBuilder(
          stream: planning.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                  // shrinkWrap: true,
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        streamSnapshot.data!.docs[index];
                    return Card(
                      color: Colors.green,
                      child: ListTile(
                        title: Text(documentSnapshot['title']),
                      ),
                    );
                  });
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
