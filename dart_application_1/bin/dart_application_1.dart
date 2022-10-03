import 'dart:async';
import 'dart:io';



import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
void main(List<String> arguments) {
final yt = YoutubeExplode();


// You can provide either a video ID or URL as String or an instance of `VideoId`.
var video = yt.videos.get('https://www.youtube.com/watch?v=Yc_w1YXFkq0'); // Returns a Video instance.

var title = video.title; // "Scamazon Prime"
var author = video.author; // "Jim Browning"
var duration = video.duration; // Instance of Duration - 0:19:48.00000
var yt = YoutubeExplode();

var manifest = yt.videos.streamsClient.getManifest('Yc_w1YXFkq0');
var streamInfo = streamManifest.muxed.withHigestVideoQuality();
if (streamInfo != null) {
  // Get the actual stream
  var stream = yt.video.streamClient.get(streamInfo);
  
  // Open a file for writing.
  var file = File(filePath);
  var fileStream = file.openWrite();

  // Pipe all the content of the stream into the file.
  await stream.pipe(fileStream);

  // Close the file.
  await fileStream.flush();
  await fileStream.close();
}
}


yt.close();