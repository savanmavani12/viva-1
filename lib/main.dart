import 'package:flutter/material.dart';
import 'package:youtube/views/screens/homepage.dart';
import 'package:youtube/views/screens/openpage.dart';
import 'package:youtube/views/screens/searchpage.dart';

void main(){
  runApp(MyApp(),);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomePage(),
        'openPage':(context)=>PlayerPage(),
        'searchPage':(context)=>SearchPage(),
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:youtube/helper/youtubeAPIhelper.dart';
//
// import 'modals/youtubeAPI.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       home: YouTubeCloneApp(),
//     ),
//   );
// }
//
// class YouTubeCloneApp extends StatefulWidget {
//   @override
//   _YouTubeCloneAppState createState() => _YouTubeCloneAppState();
// }
//
// class _YouTubeCloneAppState extends State<YouTubeCloneApp> {
//   final TextEditingController _searchController = TextEditingController();
//   final YouTubeApi _api = YouTubeApi('AIzaSyBo9KfkBitYFNhilpU_9KdRXBrGl7mJBhA');
//   List<YouTubeVideo> _videos = [];
//
//   void _onSearch() async {
//     final query = _searchController.text.trim();
//
//     if (query.isNotEmpty) {
//       final videos = await _api.search(query);
//       setState(() => _videos = videos);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('YouTube Clone'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(16),
//             child: TextField(
//               controller: _searchController,
//               onSubmitted: (_) => _onSearch(),
//               decoration: InputDecoration(
//                 hintText: 'Search for videos',
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                   icon: Icon(Icons.search),
//                   onPressed: _onSearch,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _videos.length,
//               itemBuilder: (context, index) {
//                 final video = _videos[index];
//
//                 return Padding(
//                   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context) => VideoDetailsPage(video)),
//                       );
//                     },
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.network(
//                           video.thumbnailUrl,
//                           width: 120,
//                           height: 90,
//                         ),
//                         SizedBox(width: 16),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 video.title,
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 video.description,
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               SizedBox(height: 8),
//                               Row(
//                                 children: [
//                                   Icon(Icons.remove_red_eye, size: 16),
//                                   SizedBox(width: 4),
//                                   Text(
//                                     '${video.viewCount} views',
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class VideoDetailsPage extends StatelessWidget {
//   final YouTubeVideo video;
//
//   VideoDetailsPage(this.video);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(video.title),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Container(
//           //   child: FlutterYoutube(
//           //     apiKey: 'YOUR_API_KEY',
//           //     videoId: video.id,
//           //     aspectRatio: 16 / 9,
//           //   ),
//           // ),
//           Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   video.title,
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   '${video.viewCount}',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 Text(
//                   video.description,
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
