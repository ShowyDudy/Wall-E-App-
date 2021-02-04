import 'package:flutter/material.dart';
import 'data.dart';

Color textColor = Colors.deepOrange;
Color contentTextColor = Color(0xff000000);

class DetailPage extends StatelessWidget {
  final WallE wallEInfo;

  const DetailPage({Key key, this.wallEInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: wallEInfo.position,
              child: Image.asset(wallEInfo.iconImage),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 300),
                        Container(
                          color: Colors.white70,
                          child: Row(
                            children: [
                              Text(
                                wallEInfo.name,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 56,
                                  color: textColor,
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white70,
                          child: Row(
                            children: [
                              Divider(color: Colors.black38),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white70,
                          child: SizedBox(
                            child: Text(
                              wallEInfo.description ?? '',
                              maxLines: 50,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                color: contentTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: ListView.builder(
                        itemCount: wallEInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                                child: Image.network(
                                  wallEInfo.images[index],
                                  fit: BoxFit.cover,
                                ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
