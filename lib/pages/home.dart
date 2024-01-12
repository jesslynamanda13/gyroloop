import 'package:flutter/material.dart';
import 'package:gyroloop/user_auth/user_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? userEmail =
        Provider.of<UserProvider>(context, listen: false).userEmail;

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Text("Hello $userEmail"),
          ),
        ],
      ),
    );
  }
}
