import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kartikay_s_application7/core/app_export.dart';
import 'package:kartikay_s_application7/presentation/android_large_six_screen/android_large_six_screen.dart';

class AndroidLargeTwoScreen extends StatefulWidget {
  const AndroidLargeTwoScreen({Key? key}) : super(key: key);

  @override
  _AndroidLargeTwoScreenState createState() => _AndroidLargeTwoScreenState();
}

class _AndroidLargeTwoScreenState extends State<AndroidLargeTwoScreen> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> loginUser(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      String username = _usernameController.text;
      String password = _passwordController.text;

      try {
        QuerySnapshot snapshot = await FirebaseFirestore.instance
            .collection('users')
            .where('userName', isEqualTo: username)
            .get();

        if (snapshot.docs.isNotEmpty) {
          DocumentSnapshot userDoc = snapshot.docs.first;
          String storedPassword = userDoc.get('password');

          if (password == storedPassword) {
            // Navigate to AndroidLargeSixScreen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AndroidLargeSixScreen(),
              ),
            );
          } else {
            showSnackbar(context, 'Incorrect password');
          }
        } else {
          showSnackbar(context, 'User not found');
        }
      } catch (e) {
        showSnackbar(context, 'Failed to login: $e');
      }
    }
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAndroidLarge800x360,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 80.v),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.h),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.h),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 41.v),
                  Container(
                    width: 160.h,
                    height: 60.v,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(30.h),
                    ),
                    child: ElevatedButton(
                      onPressed: () => loginUser(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.h),
                        ),
                      ),
                      child: Text(
                        "LOGIN",
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}