

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/core/app_export.dart';

import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';

class TransactionLenderScreen extends StatefulWidget {
  const TransactionLenderScreen({Key? key}) : super(key: key);

  @override
  _TransactionLenderScreenState createState() => _TransactionLenderScreenState();
}

class _TransactionLenderScreenState extends State<TransactionLenderScreen> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Lender'),
      ),
      body: Stack(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection('Transaction_Lender').snapshots(),
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
                        title: Text(data['yourName'] ?? 'Unknown'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Amount: ${data['amount'] ?? '0'}'),
                            Text('Interest: ${data['interest'] ?? '0'}%'),
                            Text('Start Date: ${data['startDate'] ?? 'Unknown'}'),
                            Text('End Date: ${data['endDate'] ?? 'Unknown'}'),
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
              text: "Add Transaction",
              buttonTextStyle: theme.textTheme.titleLarge!,
              onPressed: () {
                // Navigate to the add transaction screen
                Navigator.pushNamed(context, '/add_transaction');
              },
            ),
          ),
        ],
      ),
    );
  }
}
