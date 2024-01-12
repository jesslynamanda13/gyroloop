import 'package:flutter/material.dart';
import 'package:gyroloop/widgets/gyroloopbackground.dart';
import 'package:gyroloop/widgets/loginform.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GyroloopBackground(),
        Positioned(
          top: 120.0,
          left: 0.0,
          right: 0.0,
          bottom: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            
            child: LoginForm(),
          ),
        )
      ],
    );
  }
}
