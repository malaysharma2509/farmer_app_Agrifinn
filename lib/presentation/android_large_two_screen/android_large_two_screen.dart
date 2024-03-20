import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/core/app_export.dart';
import 'package:kartikay_s_application7/presentation/android_large_six_screen/android_large_six_screen.dart'; // Import the screen you want to navigate to

class AndroidLargeTwoScreen extends StatefulWidget {
  const AndroidLargeTwoScreen({Key? key}) : super(key: key);

  @override
  _AndroidLargeTwoScreenState createState() => _AndroidLargeTwoScreenState();
}

class _AndroidLargeTwoScreenState extends State<AndroidLargeTwoScreen> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

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

  void loginUser(BuildContext context) {
    // You can add authentication logic here
    String username = _usernameController.text;
    String password = _passwordController.text;

    // For simplicity, let's just navigate to AndroidLargeSixScreen for now
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AndroidLargeSixScreen(),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                SizedBox(height: 20.v),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
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
                  child: TextButton(
                    onPressed: () => loginUser(context),
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
    );
  }
}
