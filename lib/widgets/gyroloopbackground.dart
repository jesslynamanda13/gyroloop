import 'package:flutter/material.dart';

class GyroloopBackground extends StatelessWidget {
  GyroloopBackground({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, 
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF72E33C),
              Color(0xFF9EF276),
            ],
          ),
        ),
        child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Center(
                  child: Text(
                    'gyroloop',
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 42.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Add other content/widgets as needed
            ],
          ),
        
      ),
    );
  }
}
