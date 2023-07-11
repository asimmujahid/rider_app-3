import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

import 'Enter_Truck.dart';
// import 'package:flutter_application_9/drawer.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/homepage.jpg"),fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [
             IconButton(
              onPressed: () => {
                Navigator.pushNamed(context, "home")
              },
              icon: Icon(Icons.search,color: Colors.white,),
            ),
            IconButton(
              onPressed: () => {Navigator.pushNamed(context, "profile")},
              icon: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
            ),
            // IconButton(
            //   onPressed: () => {
            //     Navigator.pushNamed(context, "home")
            //   },
            //   icon: Icon(Icons.search,color: Colors.white,),
            // ),
          ],
          backgroundColor: Colors.blue,
        ),
        // drawer: My_drawer(),   
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Card(
                    child: InkWell(
                      onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),
                      },
                      child: Container(
                        // child: Text("Laptops",style: TextStyle(
                        //   fontWeight: FontWeight.bold,fontSize: 30,
                        // ),),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/comp1.jpg"),fit: BoxFit.cover,
                          ),
                        ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                    Card(
                      child: InkWell(
                        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),},
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              // image: AssetImage("assets/images/iphones2.jfif"),fit: BoxFit.cover,
                              image: AssetImage("assets/images/comp2.webp"),fit: BoxFit.cover,
                            ),
                          ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                                        ),
                      ),
                    ),
                ],),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Card(
                    // borderOnForeground: true,
                      child: InkWell(
                        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),},
                        child: Container(
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/images/comp3.webp"),fit: BoxFit.cover,
                            ),
                          ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                        ),
                      ),
                    ),
                  SizedBox(width: 20,),
                    Card(
                      child: InkWell(
                        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),},
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/comp4.jpg"),fit: BoxFit.cover,
                            )
                          ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                                        ),
                      ),
                    ),
                ],),
                 SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Card(
                      child: InkWell(
                        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),},
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/comp5.jpg"),fit: BoxFit.cover,
                            )
                          ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                                        ),
                      ),
                    ),
                  SizedBox(width: 20,),
                    Card(
                      child: InkWell(
                        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),},
                        child: Container(
                          // child: Text("Mobile accesories"),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/comp6.jpg"),fit: BoxFit.cover,
                            )
                          ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                                        ),
                      ),
                    ),
                ],),
                                 SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Card(
                      child: InkWell(
                        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),},
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/comp77.jpg"),fit: BoxFit.cover,
                            )
                          ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                                        ),
                      ),
                    ),
                  SizedBox(width: 20,),
                    Card(
                      child: InkWell(
                        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),},
                        child: Container(
                          // child: Text("Mobile accesories"),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/comp8.jpg"),fit: BoxFit.cover,
                            )
                          ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                                        ),
                      ),
                    ),
                ],),
                                 SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Card(
                      child: InkWell(
                        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),},
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/comp9.jpg"),fit: BoxFit.cover,
                            )
                          ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                                        ),
                      ),
                    ),
                  SizedBox(width: 20,),
                    Card(
                      child: InkWell(
                        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => TruckPage())),},
                        child: Container(
                          // child: Text("Mobile accesories"),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/comp10.jpg"),fit: BoxFit.cover,
                            )
                          ),
                        height: 120,
                        width: 120,
                        // color: Colors.red,
                                        ),
                      ),
                    ),
                ],),

              ],),
            ),
          ),
        ),
      ),
    );
  }
}