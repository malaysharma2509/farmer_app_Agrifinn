import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class LenderConditionsScreen extends StatefulWidget {
  const LenderConditionsScreen({Key? key}) : super(key: key);

  @override
  _LendingConditionsScreenState createState() => _LendingConditionsScreenState();
}

class _LendingConditionsScreenState extends State<LenderConditionsScreen> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lending Conditions'),
      ),
      body: Stack(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection('lenders_condition').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, dynamic> data = snapshot.data!.docs[index].data() as Map<String, dynamic>;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title: Text(data['lender_name'] ?? 'Unknown'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Amount: ${data['total_amount'] ?? '0'}'),
                            Text('Tenure: ${data['tenure'] ?? 'Unknown'}'),
                            Text('Start Date: ${data['start_date'] ?? 'Unknown'}'),
                            Text('End Date: ${data['end_date'] ?? 'Unknown'}'),
                            Text('Interest Rate: ${data['interest_rate'] ?? '0'}%'),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: CustomElevatedButton(
              width: 150.h,
              text: "Add Condition",
              buttonTextStyle: theme.textTheme.titleLarge!,
              onPressed: () {
                // Navigate to the add condition screen
                Navigator.pushNamed(context, '/add_condition');
              },
            ),
          ),
        ],
      ),
    );
  }
}