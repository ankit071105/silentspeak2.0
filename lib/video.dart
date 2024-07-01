import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'main.dart';

void main() {
  runApp(Helo());
}

class Helo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: VideoScreen(),
    );
  }
}

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc7bcf3),
      appBar: AppBar(
        title: Text('Learning Section ' , style: TextStyle(color:  Color(0xffc7bcf3),),),
        backgroundColor: const Color(0xff31226e),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
              ),
              items: [
                'https://ideogram.ai/assets/progressive-image/balanced/response/A7iPDPMBQDChtNpeF8c1yw',
                'https://ideogram.ai/assets/progressive-image/balanced/response/VMrRWogYRyqvl4D1pBUUlw',
                'https://ideogram.ai/assets/progressive-image/balanced/response/iswwU-twSbG05BzXyQe6lw',
                'https://ideogram.ai/assets/progressive-image/balanced/response/wi7aEqrmQKSaPRCrmBZJ-g',
                'https://ideogram.ai/assets/progressive-image/balanced/response/LDVBYWAJSxCs7Qp0BPpoNA',
                'https://ideogram.ai/assets/progressive-image/balanced/response/ZRBGpgmFQp2GKuylbYJVRA',
                'https://ideogram.ai/assets/progressive-image/balanced/response/bl1Bu7iiQeaO8YxBcm_nug',
                'https://ideogram.ai/assets/progressive-image/balanced/response/hKZ2B4jxRFiPTykgZ6bsHw',
                'https://ideogram.ai/assets/progressive-image/balanced/response/cYrt5O41TMO4nOEgglQ-jQ',


              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Image.network(i, fit: BoxFit.cover),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            // First segment with text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Morse code Learning Videos',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1c1049),
                ),
              ),
            ),
            SizedBox(height: 30),
            // First row of videos
            Container(
              color: const Color(0xff907ddf),

              child: GridView.count(
                padding: const EdgeInsets.all(10.0),
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [

                  VideoCard(
                    imageUrl: 'https://silent-speaks.netlify.app/images/7.png',
                    videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
                    title: 'Learn Morse Code',
                  ),
                  VideoCard(
                    imageUrl: 'https://ideogram.ai/assets/progressive-image/balanced/response/Osfjd9l-Tn2ibnSHiut-yg',
                    videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
                    title: 'Learn Morse Code By sarvesh',
                  ),
                  VideoCard(
                    imageUrl: 'https://ideogram.ai/assets/progressive-image/balanced/response/eWt2t292RiqF00MIYY8RVw',
                    videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
                    title: 'Morse code under 30 Min',
                  ),
                  VideoCard(
                    imageUrl: 'https://ideogram.ai/assets/progressive-image/balanced/response/M6fm2VJNRxqbKrwq_e0kRg',
                    videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
                    title: 'Digital Learning',
                  ),
                  // Add more VideoCards here
                ],
              ),
            ),
            SizedBox(height: 20),
            // Second segment with text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Learning Section',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 30),
            // Second row of videos
            Container(
              color: const Color(0xff7d68cc),
              child: GridView.count(
                padding: const EdgeInsets.all(10.0),
                crossAxisCount: 2, // Two videos per row
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  VideoCard(
                    imageUrl: 'https://i.ytimg.com/vi/6PRY-LczCB4/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDvDmWvzZ42gOSxmOUPT3r5POa1uQ',
                    videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
                    title: 'Learn Morse Code with device',
                  ),
                  VideoCard(
                    imageUrl: 'https://ideogram.ai/assets/progressive-image/balanced/response/a0hBMjSyTouyEGRiAbnoVA',
                    videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
                    title: 'Learn Morse Code digital',
                  ),
                  VideoCard(
                    imageUrl: 'https://ideogram.ai/assets/progressive-image/balanced/response/vJ60rBgySAS88DTszfTKDQ',
                    videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
                    title: 'Learn Morse Code under 30 Minutes',
                  ),
                  VideoCard(
                    imageUrl: 'https://ideogram.ai/assets/progressive-image/balanced/response/rr4_xA9lQbagesIsw1gudA',
                    videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
                    title: 'Learn Morse Code easily',
                  ),
                  // Add more VideoCards here
                ],
              ),
            ),
            SizedBox(height: 20),
            // Footer Section
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Designed by Ankit ©',
                    style: TextStyle(fontSize: 24, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String videoUrl;
  final String imageUrl;
  final String title;

  VideoCard({
    required this.videoUrl,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(videoUrl: videoUrl),
          ),
        );
      },
      child: Card(
        elevation: 5, // Adding elevation for 3D effect

        color: const Color(0xff2f235c), // Dark purple background color
        child: Column(

          children: [
            AspectRatio(

              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                  children: [
                    Image.network(imageUrl, fit: BoxFit.cover),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black54],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Container(

                child: Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;

  VideoPlayerScreen({required this.videoUrl});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa291e8),
      appBar: AppBar(
        title: Text('Video Player', style: TextStyle(color: Color(0xffa291e8),),),
        backgroundColor: Color(0xff261763),

      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
