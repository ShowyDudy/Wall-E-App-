import 'package:flutter/material.dart';
import 'battery.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'data.dart';
import 'detail_page.dart';
import 'settings.dart';
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';

Color textColor = Color(0xFFE4979E);
Color gradientStartColor = Color(0xfff09800);
Color gradientEndColor = Color(0xffe25400);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String firstButtonText = 'Photo';
  String secondButtonText = 'Video';
  String albumName = 'Wall-E App';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: SafeArea(

          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'WALL-E',
                      style: TextStyle(
                        fontFamily: 'sans-serif',
                        fontSize: 50,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 15),
                child: Swiper(
                  itemCount: wallEInfo.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: new DotSwiperPaginationBuilder(
                        color: Colors.white.withOpacity(0.4), activeColor: Colors.white, activeSize: 17, space: 8),
                  ),
                  control: new SwiperControl(
                    color: Colors.white,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailPage(
                              wallEInfo: wallEInfo[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 100),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 100),
                                      Text(
                                        wallEInfo[index].name,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 38,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Explore',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: textColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: textColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: wallEInfo[index].position,
                            child: Image.asset(wallEInfo[index].iconImage),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25),
              bottom: Radius.circular(25),
            ),
          ),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Image.asset('assets/camera.png'),
                iconSize: 60,
                onPressed: _takePhoto,
              ),
              IconButton(
                icon: Image.asset('assets/video.png'),
                iconSize: 60.0,
                onPressed: _recordVideo,
              ),
              IconButton(
                icon: Image.asset('assets/battery.png'),
                iconSize: 60.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Battery()),
                  );
                },
              ),
              IconButton(
                icon: Image.asset('assets/settings.png'),
                iconSize: 60.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Settings()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _takePhoto() async {
    ImagePicker.pickImage(source: ImageSource.camera)
        .then((File recordedImage) {
      if (recordedImage != null && recordedImage.path != null) {
        setState(() {
          firstButtonText = 'saving...';
        });
        GallerySaver.saveImage(recordedImage.path, albumName: albumName)
            .then((bool success) {
          setState(() {
            firstButtonText = 'Image Successfully Saved to Gallery!';
          });
        });
      }
    });
  }
  void _recordVideo() async {
    ImagePicker.pickVideo(source: ImageSource.camera)
        .then((File recordedVideo) {
      if (recordedVideo != null && recordedVideo.path != null) {
        setState(() {
          secondButtonText = 'saving...';
        });
        GallerySaver.saveVideo(recordedVideo.path, albumName: albumName)
            .then((bool success) {
          setState(() {
            secondButtonText = 'Video Successfully Saved to Gallery!';
          });
        });
      }
    });
  }
}


