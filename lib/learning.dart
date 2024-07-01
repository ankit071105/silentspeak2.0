import 'package:flutter/material.dart';

class MorseToTextConverter extends StatefulWidget {
  @override
  _MorseToTextConverterState createState() => _MorseToTextConverterState();
}

class _MorseToTextConverterState extends State<MorseToTextConverter> {
  TextEditingController _textEditingController = TextEditingController();
  String _convertedText = '';
  String _morseRepresentation = '';
  final Map<String, String> morseCode = {
    '.-': 'A', '-...': 'B', '-.-.': 'C', '-..': 'D', '.': 'E', '..-.': 'F', '--.': 'G', '....': 'H', '..': 'I', '.---': 'J',
    '-.-': 'K', '.-..': 'L', '--': 'M', '-.': 'N', '---': 'O', '.--.': 'P', '--.-': 'Q', '.-.': 'R', '...': 'S', '-': 'T',
    '..-': 'U', '...-': 'V', '.--': 'W', '-..-': 'X', '-.--': 'Y', '--..': 'Z',
    '.----': '1', '..---': '2', '...--': '3', '....-': '4', '.....': '5', '-....': '6', '--...': '7', '---..': '8', '----.': '9', '-----': '0',
    '.-.-.-': '.', '--..--': ',', '..--..': '?', '.----.': '\'', '-.-.--': '!', '-..-.': '/', '-.--.': '(', '-.--.-': ')', '.-...': '&', '---...': ':',
    '-.-.-.': ';', '-...-': '=', '.-.-.': '+', '-....-': '-', '..--.-': '_', '.-..-.': '\"', '._': ' ', '.--.-.': '@',

  };

  void _convertToText(String morse) {
    setState(() {
      _morseRepresentation = morse;
      List<String> morseCharacters = morse.split(' ');
      _convertedText = morseCharacters.map((morseChar) => morseCode[morseChar] ?? '?').join('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffb3a3e8),
      appBar: AppBar(
        title: Text('Pratice Sessions',style: TextStyle(color: Color(
            0xffc3b6ff),),),
        backgroundColor:  Color(0xff2e2355),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://ideogram.ai/assets/progressive-image/balanced/response/IcMs3NyfT2qqm6mMUsUW7Q',
              width: 300,
              height: 240,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30.0),
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: 'Enter Morse code',
              ),
              onChanged: _convertToText,
            ),
            SizedBox(height: 16),
            Text(
              'Converted Text:',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,color:Color(
                  0xff160a42), ),
            ),
            SizedBox(height: 8),
            Text(
              _convertedText,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Morse Code Representation:',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold , color:Color(
                  0xff160a42), ),
            ),
            SizedBox(height: 8),
            Text(
              _morseRepresentation,
              style: TextStyle(fontSize: 34),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: MorseToTextConverter()));
