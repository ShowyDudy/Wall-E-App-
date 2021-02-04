import 'package:flutter/material.dart';

double textSize = 20;

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Settings'),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.orange,
                    Colors.deepOrangeAccent,
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Headline(headline: 'Name:'),
                  Content(content: 'Wall-E Companion App'),
                  Headline(headline: 'Version:'),
                  Content(content: '1.0.0 [Public Release]'),
                  Headline(headline: 'Release Date:'),
                  Content(content: 'February 1st, 2021'),
                  Headline(headline: 'Developer:'),
                  Content(content: '99000 Vikings Development Team'),
                  Headline(headline: 'Software Developers:'),
                  Content(content: 'Gayitha Dammiya'),
                  Content(content: 'Shiva Ganeshraj'),
                  Content(content: 'Vinay Reddy'),
                  Headline(headline: 'Hardware/Systems Developers:'),
                  Content(content: 'Dev Patel'),
                  Content(content: 'Mahtab Mann'),
                  Headline(headline: 'Marketer:'),
                  Content(content: 'Buddima Dalpathadu'),
                ],
              ),
            ),
          ),
        )
    );
  }
}

class Headline extends StatelessWidget {
  Headline({Key key, this.headline}) : super(key: key);
  final String headline;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Text(
        headline,
        style: TextStyle(
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w700,
          fontSize: 17,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Content extends StatelessWidget {
  Content({this.content});
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: TextStyle(
          height: 1.5,
          fontFamily: "Avenir",
          fontSize: 17,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
