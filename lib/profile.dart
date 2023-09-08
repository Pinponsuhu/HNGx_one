import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.grey[900],
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[900],
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, 
                border: Border.all(
                  color: Colors.white, 
                  width: 5
                )
              ),
              child: AspectRatio(
                aspectRatio: 20/12,
                child: CircleAvatar(
                  radius: 60, 
                  backgroundColor: Colors.amber,
                  backgroundImage: AssetImage("img/me.jpg"),
                ),
              ),
            ), 
            SizedBox(
              height: 16,
            ), 
            Text(
              "Pinponsuhu Joseph", 
              style: TextStyle(
                fontWeight: FontWeight.w700, 
                color: Colors.white,
                fontSize: 20
              ),
              ),
              SizedBox(
                height: 8,
              ),
            Text(
              "Pinponsuhu", 
              style: TextStyle(
                fontWeight: FontWeight.w400, 
                color: Colors.white,
                fontSize: 16, 
                fontStyle: FontStyle.italic
              ),
              ), 
              SizedBox(
                height: 16,
              ),
              Text(
                textAlign: TextAlign.center,
                "I'm a developer skilled in Flutter and Laravel. I specialize in creating dynamic and user-friendly cross-platform mobile apps and web applications with a focus on performance and functionality.", 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16, 
                  height: 1.4
                ),
              ),
              Spacer(), 
              TextButton.icon(
                onPressed: () async{
                  await FlutterWebBrowser.openWebPage(url: "https://github.com/pinponsuhu");
                }, 
                icon: Icon(
                  Icons.code, 
                  color: Colors.white,
                  ), 
                label: Text(
                  "Open Github", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  ), 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green), 
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 28, vertical: 12))
                ),
                )
          ],
        ),
      ),
    );
  }
}