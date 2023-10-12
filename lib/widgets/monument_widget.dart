import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/screens/homepage.dart';
import 'package:translator/translator.dart'
class MonumentWidget extends StatefulWidget {
  final String title;
  final String imageAsset;
  final String content;

  const MonumentWidget({
    Key? key,
    required this.title,
    required this.imageAsset,
    required this.content,
  }) : super(key: key);

  @override
  State<MonumentWidget> createState() => _MonumentWidgetState();
}

class _MonumentWidgetState extends State<MonumentWidget> {
  FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;


  @override
  void initState() {
    super.initState();

    _initTts();
    defaulttext();
  }

  Future<void> _initTts() async {
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.3);
  }

  Future<void> _speak(String text) async {
    await flutterTts.setVolume(1.0);
    await flutterTts.speak(text);
  }

  String translatedText = " ";
  void defaulttext() {
    if (translatedText == " ") {
      translatedText = widget.content;
    }
  }

  Future<String> tts(String text) async {
    translatedText = await translate(widget.content, to: "hi");
    return translatedText;
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }

  Future<String> translate(String text, {String to = 'en'}) async {
    final translator = GoogleTranslator();

    // Translate the text
    Translation translation = await translator.translate(text, to: to);

    // Return the translated text
    return translation.text;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gskin,
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          icon: Image.asset('lib/icons/arrow-left.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: "Nexa-Trial-Regular",
            fontSize: 20,
            color: gblack,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 700,
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    widget.imageAsset,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
                width: 1,
              ),
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: glight,
                  ),
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(

                          translatedText,

                       
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 17,
                            fontFamily: "Nexa-Trial-Regular",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String translatedText = await tts(widget.content);
          setState(() {
            this.translatedText = translatedText;
          });
          _speak(translatedText);
        },
        backgroundColor: gblack,
        child: Icon(isPlaying ? Icons.pause : Icons.play_arrow, size: 36.0),
        
      ),
    );
  }
}
