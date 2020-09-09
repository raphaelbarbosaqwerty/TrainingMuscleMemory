import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));  
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  String _infoText = "Inform your data!";

  void _resetFields() {
    weightController.text = "";
    heightController.text = "";
    setState(() {
      _infoText = "Inform your data!";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calculate() {
    setState(() {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text) / 100;
      double bmi = weight / (height * height);

      if (bmi < 18.6) {
        _infoText = "Under weight (${bmi.toStringAsPrecision(4)})";
      } else if(bmi >= 18.6 && bmi <= 24.9) {
        _infoText = "Good weight (${bmi.toStringAsPrecision(4)})";
      } else if(bmi >= 24.9 && bmi <= 29.9) {
        _infoText = "Slightly above (${bmi.toStringAsPrecision(4)})";
      } else if(bmi >= 29.9 && bmi <= 34.9) {
        _infoText = "Large Obesity I (${bmi.toStringAsPrecision(4)})";
      } else if(bmi >= 34.9 && bmi <= 39.9) {
        _infoText = "Large Obesity II (${bmi.toStringAsPrecision(4)})";
      } else if(bmi >= 40) {
        _infoText = "Large Obesity III (${bmi.toStringAsPrecision(4)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Form(
          key:_formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.person_outline, size: 120.0, color: Colors.green),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Weight in kg",
                  labelStyle: TextStyle(color: Colors.green)
                ),
                textAlign: TextAlign.center,
                style:TextStyle(color: Colors.green, fontSize: 25.0),
                controller: weightController,
                validator: (value) {
                  if(value.isEmpty){
                    return "Set your Weight!";
                  }
                },
              ),
              TextFormField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Height in cm",
                  labelStyle: TextStyle(color: Colors.green)
                ),
                textAlign: TextAlign.center,
                style:TextStyle(color: Colors.green, fontSize: 25.0),
                controller: heightController,
                validator: (value) {
                  if(value.isEmpty){
                    return "Set your Height!";
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      if(_formKey.currentState.validate()) {
                        _calculate();
                      }
                    },
                    child: Text("Calculate",
                      style:TextStyle(color: Colors.white, fontSize:  25.0),),
                    color: Colors.green,
                  ),
                ),
              ),
              Text(_infoText,
                textAlign: TextAlign.center,
                style:TextStyle(color: Colors.green, fontSize: 25.0),
              )
            ],
          ),
        ),
      )
    );
  }
}