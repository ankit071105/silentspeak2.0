import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us' , style: TextStyle(    color: Color(0xffcdc1fd), ),),
        backgroundColor: Color(0xff330f57),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffcdc1fd), // Light blue background
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Moved Silent Speak heading to the top
              Text(
                'Silent Speak',
                style: TextStyle(
                  fontSize: 28, // Increased font size
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto', // New font
                ),
              ),
              SizedBox(height: 10),
              // Added the bottom quote
              Text(
                'Innovation in communication knows no bounds. With SilentSpeak, we bridge the gap between ability and expression, empowering every voice to be heard',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff062549), // New font
                ),
              ),
              SizedBox(height: 30), // Added space between heading and image
              // Added image with network loading, border radius, and padding
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    'https://ideogram.ai/assets/progressive-image/balanced/response/iv19eCHGSu2Z3tFvlEPzjw', // Replace with your image URL
                    width: 280, // Adjust width as needed
                    height: 200, // Adjust height as needed
                    fit: BoxFit.cover, // Image fit type
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Contact Information
                    ContactInfoWidget(),
                    SizedBox(height: 20),
                    // Back Button
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Contact Us',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Color(0xff2c1234),
            ),
          ),
          onTap: () {
            // Implement email functionality here
          },
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text(

            'kumarankit11458@gmail.com',
            style: TextStyle(
              fontFamily: 'Roboto',
            color:   Color(0xff330f57),
            ),
          ),
          onTap: () {
            // Implement email functionality here
          },
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text(
            '9031358194',
            style: TextStyle(
              color: Color(0xff330f57),
              fontFamily: 'Roboto', // New font
            ),
          ),
          onTap: () {
            // Implement phone call functionality here
          },
        ),
      ],
    );
  }
}
