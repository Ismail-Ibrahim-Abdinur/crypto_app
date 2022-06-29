import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 12, 54, 1),
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: CircleAvatar(
              radius: 50,
              child: Image.asset(
                "assets/images/profile.jpeg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Personal Information",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Name:",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "Ismail Ibrahim Abdinur",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Occupation:",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "Student and Freelancer",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
