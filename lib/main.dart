import 'dart:async';
import 'package:flutter/material.dart';
import 'package:silentspeak/post3.dart';
import 'dart:ui';
import 'package:silentspeak/post4.dart';
import 'package:silentspeak/profile.dart';
import 'package:silentspeak/video.dart';
import 'game.dart';
import 'learning.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Silent Speak',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: const SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcdc1fd),
      appBar: AppBar(
        title: const Text(
          'Silent Speak',
          style: TextStyle(color: Color(0xffcdc1fd)),
        ),
        backgroundColor: Color(0xff2e2355),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(26.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/images/1.jpeg',
                  height: 200,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Welcome to Silent Speak',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Create your account by filling in the details below.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: 'Gender'),
                items: const [
                  DropdownMenuItem(value: 'Male', child: Text('Male')),
                  DropdownMenuItem(value: 'Female', child: Text('Female')),
                  DropdownMenuItem(value: 'Other', child: Text('Other')),
                ],
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    }
                  },
                  child: const Text('Sign Up'),
                ),
              ),
              const SizedBox(height: 16),

            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc7bcf3),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Silent Speak', style: TextStyle(color: Color(0xffcdc1fd))),
        backgroundColor: Color(0xff2e2355),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/images/2.jpeg',
                  height: 200,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Login to your account using your email and password.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  HomePage()),
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 16),

            ],
          ),
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffa898e7),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Silent Speak', style: TextStyle(color: Color(0xffbeb2ef))),
        backgroundColor: Color(0xff531697),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: _buildScrollableHeader(),
            ),
            const SizedBox(height: 16),
            Text(
              'Explore Our Features',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Browse through the different sections to find what you need.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 26.0,
              mainAxisSpacing: 26.0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                _buildGridItem(context, 'Education', Icons.school, 'https://ideogram.ai/assets/progressive-image/balanced/response/p0dv2HBvSgKJ_JZXlLf4LQ'),
                _buildGridItem(context, 'Videos', Icons.video_library, 'https://ideogram.ai/assets/progressive-image/balanced/response/grGVsmhzRua6kPykp1K3hQ'),
                _buildGridItem(context, 'Games', Icons.videogame_asset, 'https://ideogram.ai/assets/progressive-image/balanced/response/m_DTrfrMT4SW7Mnqmtcv_Q'),
                _buildGridItem(context, 'Pratice Session', Icons.bookmark_add_outlined, 'https://ideogram.ai/assets/progressive-image/balanced/response/BlcyrQILTzCfkujmv2kvhg'),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Our Achievement',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns in the grid
                  crossAxisSpacing: 5.0, // Spacing between columns
                  mainAxisSpacing: 6.0, // Spacing between rows
                ),
                itemCount: 9, // Number of images from 15.jpeg to 21.jpeg
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/${index + 15}.jpeg',
                        fit: BoxFit.cover,

                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Designed by Ankit © Silent Speak',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff531697),
        selectedItemColor: Color(0xff66e8d9),
        unselectedItemColor: Color(0xff26a698),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Post4()),
              );
              break;
            case 2:

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ProfilePage()),
              );
              break;
          }
        },
      ),
    );
  }
}


  Widget _buildScrollableHeader() {
    PageController _pageController = PageController();

    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = _pageController.page!.round() + 1;
        if (nextPage == 5) {
          nextPage = 0;
        }
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
      }
    });

    return PageView(
      controller: _pageController,
      children: [
        Image.asset('assets/images/1.jpeg', fit: BoxFit.cover),
        Image.asset('assets/images/3.jpeg', fit: BoxFit.contain),
        Image.asset('assets/images/5.jpeg', fit: BoxFit.cover),
        Image.asset('assets/images/12.jpeg', fit: BoxFit.cover),
        Image.asset('assets/images/6.jpeg', fit: BoxFit.cover),
        Image.asset('assets/images/7.jpeg', fit: BoxFit.cover),
        Image.asset('assets/images/15.jpeg', fit: BoxFit.cover),


      ],
    );
  }

  Widget _buildGridItem(BuildContext context, String title, IconData icon, String imageUrl) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case 'Education':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MorseConverter()),
            );
            break;
          case 'Videos':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Helo()),
            );
            break;
          case 'Games':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Hello()),
            );
            break;
          case 'Pratice Session':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MorseToTextConverter()),
            );
            break;
          default:
            break;
        }
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 8,
                left: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(icon, color: Colors.white, size: 30),
                    const SizedBox(height: 4),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        // You can add functionality here if needed
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        '$title',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


