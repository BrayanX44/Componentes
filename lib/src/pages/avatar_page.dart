import 'package:flutter/material.dart';

class Avatare_Page extends StatelessWidget {
  const Avatare_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/kirby/images/d/df/Artwork_Espada_%28TKCD%29.png/revision/latest/scale-to-width-down/136?cb=20171212141821'),
              backgroundColor: Colors.black26,
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('K'),
              backgroundColor: Colors.black26,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://www.xtrafondos.com/wallpapers/resized/kirby-super-smash-bros-7913.jpg?s=large'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
