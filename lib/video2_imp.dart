import 'package:flutter/material.dart';
import 'package:videos_player/model/video.model.dart';
import 'package:videos_player/videos_player.dart';

class Video2Imp extends StatefulWidget {
  @override
  _Video2ImpState createState() => _Video2ImpState();
}

class _Video2ImpState extends State<Video2Imp> {
  List<Map<String, Object>> _list = [
    {
      'id': "2",
      'name': "Elephant Dream",
      'videoUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      'thumbnailUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
    },
    {
      'id': "3",
      'name': "Big Buck Bunny",
      'videoUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      'thumbnailUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
    },
    {
      'id': "4",
      'name': "For Bigger Blazes",
      'videoUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
      'thumbnailUrl':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerBlazes.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext ctx, int index) {
          return VideosPlayer(
            networkVideos: [
              NetworkVideo(
                  id: _list[index]['id'],
                  name: _list[index]['name'],
                  videoUrl: _list[index]['videoUrl'],
                  thumbnailUrl: _list[index]['thumbnailUrl'])
            ],
          );
        },
      ),
    );
  }
}
