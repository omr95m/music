import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import "package:audioplayers/audio_cache.dart";

void main() {
  runApp(const Music());
}

class Music extends StatelessWidget {
  Widget funmusic(String modelname, Color fontcolor, String music) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          Source path = AssetSource(music);
          player.play(path);
        },
        child: Container(
          color: Colors.white,
          child: Center(
            child: ListTile(
              leading: const Icon(
                Icons.music_note,
              ),
              title: Text(modelname,
                  style: TextStyle(color: fontcolor, fontSize: 25)),
            ),
          ),
        ),
      ),
    ));
  }

  const Music({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.purple),
          primaryColor: Colors.purple,
          scaffoldBackgroundColor: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            //تبديل العنوان الى اللغة العربية
            'نغماتي',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            funmusic('samsung galaxy', Colors.red, 'assets_music-1.mp3'),
            funmusic('samsung Note', Colors.green, 'assets_music-2.mp3'),
            funmusic('Nokia', Colors.black, 'assets_music-3.mp3'),
            funmusic('Iphone', Colors.orange, 'assets_music-7.mp3'),
            funmusic('Whatsapp', Colors.green, 'assets_music-5.mp3'),
            funmusic('Xiaomi', Colors.blue, 'assets_music-6.mp3'),
            funmusic('Lg', Colors.red, 'assets_music-7.mp3'),
          ],
        ),
      ),
    );
  }
}
