import 'package:flutter/material.dart';
import 'package:rider_app/tabpages/maps.dart';
import '../constants.dart';

import '../Enter_Truck.dart';
import '../companies.dart';

//import 'Enter_Truck.dart';

class home_tab extends StatefulWidget {
  home_tab({Key? key}) : super(key: key);

  @override
  State<home_tab> createState() => _home_tabState();
}

class _home_tabState extends State<home_tab> {
  final currentController = TextEditingController();
  final dropOffController = TextEditingController();

  @override
  void initState() {
    // currentController.text = '28.952400,68.937763';
    // dropOffController.text = '28.952400,68.937763';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Locations'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/images/map.jpg")),
              ),
              height: 200,
              // color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Image.asset("assets/images/map.jpg"),
                  Text(
                    'Pick Up Location',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: currentController,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'Enter pick up location',
                      border: OutlineInputBorder(),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => MapScreen()));
                      currentController.text = '28.952400,68.937763';
                      Constants.pickup_location = '28.952400,68.937763';
                    },
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Drop Off Location',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    readOnly: true,
                    controller: dropOffController,
                    decoration: InputDecoration(
                      hintText: 'Enter drop off location',
                      border: OutlineInputBorder(),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => MapScreen()));
                      dropOffController.text = '28.952400,68.937763';
                      Constants.dropoff_location = '28.952400,68.937763';
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => Home_page()));
                    },
                    child: Text('Confirm'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
