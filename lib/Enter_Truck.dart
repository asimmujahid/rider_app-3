import 'package:flutter/material.dart';

import 'Enter_no_of_truck.dart';

class TruckPage extends StatefulWidget {
  @override
  _TruckPageState createState() => _TruckPageState();
}

class _TruckPageState extends State<TruckPage> {
  final formKey = GlobalKey<FormState>();
  String? selectedSize;
  late String labourers;

  void _submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      // Perform your desired actions with the selected size and number of laborers
      print('Size: $selectedSize, Labourers: $labourers');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Truck Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Select Size:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: DropdownButtonFormField<String>(
                  value: selectedSize,
                  items: <String>[
                    'Small',
                    'Medium',
                    'Large',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedSize = newValue;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a size';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    selectedSize = value!;
                  },
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Number of Laborers:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter the number of laborers',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the number of laborers';
                    }
                    if (!isNumeric(value)) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    labourers = value!;
                  },
                ),
              ),
              SizedBox(height: 36),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => NoTrucks()));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("//Important Note:",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text("Maximum Time Limit for Loading Of Small Truck is:          1 Hour"),
              Text("Maximum Time Limit for Loading Of Medium Truck is:         2 Hour"),
              Text("Maximum Time Limit for Loading Of Largre Truck is:         3 Hour"),

              SizedBox(height: 10,),
              Text("//Important Note:",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text("If You Required Loading time limit more then the given time limit of each category then you have to pay Extra money "),





            ],
          ),
        ),
      ),
    );
  }

  bool isNumeric(String? value) {
    if (value == null) {
      return false;
    }
    return double.tryParse(value) != null;
  }
}