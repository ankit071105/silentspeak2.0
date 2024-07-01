import 'package:flutter/material.dart';
import 'contact_us.dart';
class Post4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffbfb3f1),
      appBar: AppBar(
        title: Text('About Us' , style: TextStyle(    color: Color(0xffcdc1fd), ),),
        backgroundColor: Color(0xff330f57),

        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 20.0), // Add padding top and some bottom padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    "assets/images/12.jpeg",
                    width: 500,
                    height: 500,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
               'Transforming Silence into Speech . '
                   'SilentSpeak is a groundbreaking project aimed at transforming communication for individuals facing speech impairments or disabilities that limit their ability to speak. By harnessing the power of Morse code and touch sensing technology.',
                style: TextStyle(fontSize: 16, color: Color(0xff132c8e),),
              ),
              SizedBox(height: 30),
              Text(
                'History',
                style: TextStyle(fontSize: 36, color: Color(0xff142e93),),
              ),
              SizedBox(height: 5),
              Text(
                'Morse code was invented in the early 1830s by Samuel Morse and Alfred Vail. It was initially developed for use in the telegraph, which was one of the earliest forms of long-distance communication. Morse code revolutionized communication by enabling messages to be transmitted quickly and efficiently over long distances.',
                style: TextStyle(fontSize: 16, color: Color(0xff171978),),
              ),
              SizedBox(height: 30),
              Text(
                'Usage and Significance',
                style: TextStyle(fontSize: 20, color: Color(0xff6c16a5),fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
               'Silent Speak allows users to communicate through Morse code using touch sensors and an Arduino microcontroller. A Flutter app and ReactJS website ensure compatibility and accessibility. The system includes an emergency alert feature activated by tapping two dots followed by two dashes.',
                style: TextStyle(fontSize: 16, color: Color(0xff2c0a53),),
              ),
              SizedBox(height: 30),
              Text(
                'Team Members ',
                style: TextStyle(fontSize: 36, color: Color(0xff0a112c),),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamMember(name: 'Ankit Kumar', image: 'assets/images/8.jpeg'),
                  SizedBox(width: 20),
                  TeamMember(name: 'Avinandan Roy', image: 'assets/images/9.jpg'),
                  SizedBox(width: 20),
                  TeamMember(name: 'Avinsh Kumar', image: 'assets/images/10.jpeg'),
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff241946),
        child: Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Silent Speak',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the ContactUsPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsPage()),
                  );
                },
                child: Text('Contact Us'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamMember extends StatelessWidget {
  final String name;
  final String image;

  TeamMember({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(image),

        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
