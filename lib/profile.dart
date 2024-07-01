import 'package:flutter/material.dart';
import 'package:silentspeak/main.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffa898e7),
      appBar: AppBar(
        title: const Text('Silent Speak', style: TextStyle(color: Color(0xffbeb2ef))),
        backgroundColor: const Color(0xff3e2b88),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ); // Navigate back to previous screen
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/31.jpeg'), // Replace with actual image path
              ),
              SizedBox(height: 20),
              Text(
                'User Name :- Ankit Kumar',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Email: kumarankit@gmail.com',
                style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Phone: +9031358194',
                style:  TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Gender: Male',
                style:  TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/32.jpeg',
                  fit: BoxFit.cover,
                  width: 300,
                  height: 280,

                ),
              ),



              SizedBox(height: 30),
              Text(
                'Designed by Ankit © Silent Speak',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: ProfilePage()));
