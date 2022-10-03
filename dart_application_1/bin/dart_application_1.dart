import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
void main(List<String> arguments) {
// You can provide either a video ID or URL as String or an instance of `VideoId`.
var video = yt.videos.get('https://youtube.com/watch?v=Dpp1sIL1m5Q'); // Returns a Video instance.

var title = video.title; // "Scamazon Prime"
var author = video.author; // "Jim Browning"
var duration = video.duration; // Instance of Duration - 0:19:48.00000
  print('Hello world: ${dart_application_1.calculate()}!');
}
