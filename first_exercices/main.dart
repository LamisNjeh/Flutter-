import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: weightController,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
            ),
            TextFormField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'Height (cm)'),
            ),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(labelText: 'Age'),
            ),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String weight = weightController.text;
                String height = heightController.text;
                String age = ageController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      name: name,
                      weight: weight,
                      height: height,
                      age: age,
                    ),
                  ),
                );
              },
              child: Text('Calculate IMC'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final String name;
  final String weight;
  final String height;
  final String age;

  ResultScreen(
      {required this.name,
      required this.weight,
      required this.height,
      required this.age});

  @override
  Widget build(BuildContext context) {
    double weightValue = double.tryParse(weight) ?? 0;
    double heightValue = double.tryParse(height) ?? 0;
    double imcValue = calculerIMC(weightValue, heightValue);
    String imcInterpretation = interpreterIMC(imcValue);

    return Scaffold(
      appBar: AppBar(
        title: Text('IMC Result'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Weight: $weight kg'),
            Text('Height: $height cm'),
            Text('Age: $age'),
            Text('IMC: ${imcValue.toStringAsFixed(2)}'),
            Text('Category: $imcInterpretation'),
          ],
        ),
      ),
    );
  }

  double calculerIMC(double weight, double height) {
    return weight / ((height / 100) * (height / 100));
  }

  String interpreterIMC(double imcValue) {
    if (imcValue < 18.5) {
      return "Underweight";
    } else if (imcValue >= 18.5 && imcValue < 24.9) {
      return "Normal";
    } else if (imcValue >= 25 && imcValue < 29.9) {
      return "Overweight";
    } else if (imcValue >= 30 && imcValue < 40) {
      return "Obesity";
    } else {
      return "Severe Obesity";
    }
  }
}
