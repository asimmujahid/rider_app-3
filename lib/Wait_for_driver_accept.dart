import 'package:flutter/material.dart';

class driver_accept extends StatefulWidget {
  const driver_accept({super.key});

  @override
  State<driver_accept> createState() => _driver_acceptState();
}

class _driver_acceptState extends State<driver_accept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wait for driver"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text("Waiting for the driver to accept request ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
              Row(
                children: [
                  Text('Logistic name: '),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Truck Number '),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Truck color '),
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
