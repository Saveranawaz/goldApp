import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Gold extends StatefulWidget {
  const Gold({super.key});

  @override
  State<Gold> createState() => _GoldState();
}

class _GoldState extends State<Gold> {
  double totalPrice = 0.0;
  TextEditingController tolaPriceController = TextEditingController();
  TextEditingController tolaQunatityController = TextEditingController();
  TextEditingController mashaquntityController = TextEditingController();
  TextEditingController rattiQuantityController = TextEditingController();
  TextEditingController pOintQuantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent.shade100,
        title: Text('Gold app'),
        centerTitle: true,
      ),
      // Floating action button
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter Tola Price',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),




                Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(left: 40, right: 40, bottom: 10, top: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purpleAccent.shade100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    controller: tolaPriceController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Tola Quantity',
                      hintStyle: TextStyle(color: Colors.purpleAccent.shade100),
                    ),
                  ),
                ),

























          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 10, top: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purpleAccent.shade100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              controller: tolaQunatityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Tola Quantity',
                hintStyle: TextStyle(color: Colors.purpleAccent.shade100),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purpleAccent.shade100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.purpleAccent.shade100),
              controller: mashaquntityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Masha Quantity',
                hintStyle: TextStyle(color: Colors.purpleAccent.shade100),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purpleAccent.shade100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.purpleAccent.shade100),
              controller: rattiQuantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Ratti Quantity",
                hintStyle: TextStyle(color: Colors.purpleAccent.shade100),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purpleAccent.shade100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.purpleAccent.shade100),
              controller: pOintQuantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Point Quantity",
                hintStyle: TextStyle(color: Colors.purpleAccent.shade100),
              ),
            ),
          ),
          Center(
            child: Text(
              'Total Price = $totalPrice',
              style: TextStyle(color: Colors.purpleAccent),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (tolaPriceController.text == '')
              {
                tolaPriceController.text = '0';
              }

              if (mashaquntityController.text == '')
              {
                mashaquntityController.text = '0';
              }

              if (rattiQuantityController.text.isEmpty) {
                rattiQuantityController.text = '0';
              }

              if (pOintQuantityController.text.isEmpty) {
                pOintQuantityController.text = '0';
              }

              double tolaPrice = double.parse(tolaPriceController.text);
              double tolaQuantity = double.parse(tolaQunatityController.text);

              totalPrice = tolaPrice * tolaQuantity;

              setState(() {});
            },


            child: Container(
              margin: EdgeInsets.only(top: 10),
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  'Calculate',
                  style: TextStyle(color: Colors.purpleAccent.shade100),
                ),
              ),
            ),
          ),
        ],
      ),
          ),  ],),
    );
  }
}
