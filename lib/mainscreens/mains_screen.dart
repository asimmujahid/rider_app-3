import 'package:flutter/material.dart';
import 'package:rider_app/Authentication/login.dart';
import 'package:rider_app/global.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("logout"),
        onPressed: () {
          fAuth.signOut();
                  Navigator.push(
            context, MaterialPageRoute(builder: (c) => login_page()));
        },
      ),
    );
  }
}
