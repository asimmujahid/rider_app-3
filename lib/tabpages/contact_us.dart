
import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'For any inquiries or feedback, please feel free to reach out to us:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('support@example.com'),
              onTap: () {
                // Handle email tap
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text('+1 (123) 456-7890'),
              onTap: () {
                // Handle phone tap
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Address'),
              subtitle: Text('123 Main St, City, Country'),
              onTap: () {
                // Handle address tap
              },
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// //import 'package:url_launcher/url_launcher.dart';

// //import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ContactUs extends StatelessWidget {
//   const ContactUs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const String address =
//         '1 - KM, Defence Rd, near Bhubattian, howk, Lahore, Punjab, Pakistan';
//     const String phoneNumber = '+92 3154026203';
//     const String email = 'asimmujahid2018@gmail.com';
//     return Container(
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           title: const Text("Contact Us"),
//         ),
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 1,
//               ),
//               const Text(
//                 'Address:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               const Text(address),
//               const SizedBox(height: 20),
//               const Text(
//                 'Phone Number:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               GestureDetector(
//                 onTap: () => _launchURL('tel:$phoneNumber'),
//                 child: const Text(
//                   phoneNumber,
//                   style: TextStyle(
//                     decoration: TextDecoration.underline,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 'Email:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               GestureDetector(
//                 onTap: () => _launchURL('mailto:$email'),
//                 child: const Text(
//                   email,
//                   style: TextStyle(
//                     decoration: TextDecoration.underline,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 'Social Media:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () => _launchURL('https://www.facebook.com/'),
//                     child: const Icon(Icons.facebook, color: Colors.blue),
//                   ),
//                   const SizedBox(width: 8),
//                   GestureDetector(
//                     onTap: () => _launchURL('https://www.twitter.com/'),
//                     child: const Icon(
//                       FontAwesomeIcons.twitter,
//                       color: Colors.blue,
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   GestureDetector(
//                     onTap: () => _launchURL('https://www.instagram.com/'),
//                     child: const Icon(FontAwesomeIcons.instagram, color: Colors.blue),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 'Location:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               const SizedBox(
//                 height: 300, // Set the desired height
//                 width: double.infinity, // Set the desired width
//                 child: GoogleMap(
//                   initialCameraPosition: CameraPosition(
//                     target: LatLng(31.3909, 74.2417), // Updated coordinates
//                     zoom: 12.0, // Adjust the zoom level as desired
//                   ),
//                   // GoogleMap widget parameters
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
