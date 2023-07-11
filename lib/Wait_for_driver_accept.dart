import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rider_app/constants.dart';
import 'dart:async';

class driver_accept extends StatefulWidget {
  const driver_accept({super.key});

  @override
  State<driver_accept> createState() => _driver_acceptState();
}

class _driver_acceptState extends State<driver_accept> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String driverEmail = '';
  bool dataExist = false;
  String truckColor = '';
  String truckNumber = '';

  late Timer timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      checkData();
    });
  }

  Future<void> checkData() async {
    DocumentSnapshot snapshot =
        await firestore.collection('Requests').doc(Constants.requestId).get();
    if (snapshot.exists) {
      dataExist = true;
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      truckColor = data['truckColor'];
      truckNumber = data['truckNumber'];
      driverEmail = data['driverName'];
      setState(() {});
    } else {
      dataExist = false;
      // Document does not exist
    }
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: dataExist ? Text("Driver Info") : Text("Wait for driver"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              dataExist
                  ? SizedBox.shrink()
                  : Text("Waiting for the driver to accept request ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Logistic email : $driverEmail',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Truck Number : $truckNumber',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Truck color : $truckColor',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class AcceptRequestPage extends StatelessWidget {
//   final String requestDetails;

//   AcceptRequestPage({required this.requestDetails});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Accept Request'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Request Details:',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               requestDetails,
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Perform actions when accepting the request
//                 // For example, navigate to a confirmation page
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ConfirmationPage()),
//                 );
//               },
//               child: Text('Accept'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ConfirmationPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confirmation'),
//       ),
//       body: Center(
//         child: Text(
//           'Request accepted!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class AcceptRequestPage extends StatelessWidget {
//   final String requestDetails;
//   final Function() onAccept;

//   AcceptRequestPage({required this.requestDetails, required this.onAccept});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Accept Request'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Request Details:',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               requestDetails,
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: onAccept,
//               child: Text('Accept'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
