import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MP_lab_5',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab 5 Widgets')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(child: Section1_Container()),
            SizedBox(height: 24),
            Section2_ColumnRow(),
            SizedBox(height: 24),
            Section3_TextField(),
            SizedBox(height: 24),
            Section4_ExpandedFlex(),
            SizedBox(height: 24),
            Challenge1_UserProfileCard(),
            SizedBox(height: 24),
            Challenge2_ProductListItem(),
          ],
        ),
      ),
    );
  }
}

/// Chapter 1
class Section1_Container extends StatelessWidget {
  const Section1_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0), // Task 1_4
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.redAccent, // Task 1_1
        borderRadius: BorderRadius.circular(20), // Task 1_3
      ),
      height: 150, // Task 1_1
      width: 100,
      child: const Icon(Icons.home, color: Colors.white, size: 40), // Task 1_2
    );
  }
}

/// Chapter 2
class Section2_ColumnRow extends StatelessWidget {
  const Section2_ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Task 2_4
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Task 2_3
          children: const [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
          ],
        ),
      ],
    );
  }
}

/// Chapter 3
class Section3_TextField extends StatefulWidget {
  const Section3_TextField({super.key});

  @override
  State<Section3_TextField> createState() => _Section3_TextFieldState();
}

class _Section3_TextFieldState extends State<Section3_TextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: _controller,
        obscureText: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter your password',
          icon: Icon(Icons.person),
        ),
      ),
    );
  }
}

/// Chapter 4
class Section4_ExpandedFlex extends StatelessWidget {
  const Section4_ExpandedFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(height: 100, color: Colors.red),
        ),
        Expanded(
          flex: 2,
          child: Container(height: 100, color: Colors.green),
        ),
      ],
    );
  }
}

/// Challenge 1
class Challenge1_UserProfileCard extends StatelessWidget {
  const Challenge1_UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                child: Text("A", style: TextStyle(fontSize: 24)),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("User Name",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("@username",
                        style: TextStyle(color: Colors.grey, fontSize: 14)),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            "A short bio about the user goes here...",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Follow")),
              ElevatedButton(onPressed: () {}, child: const Text("Message")),
            ],
          )
        ],
      ),
    );
  }
}

/// Challenge 2
class Challenge2_ProductListItem extends StatelessWidget {
  const Challenge2_ProductListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              "https://via.placeholder.com/100",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Product Title",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text("A brief description of the item...",
                    style: TextStyle(fontSize: 14, color: Colors.black54)),
                SizedBox(height: 8),
                Text("\$99.99",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
