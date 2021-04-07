import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSearching = false;
  var _seachText = "Hello";
  var _imgUrl = 'https://robohash.org';
  final searchText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: isSearching
              ? Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: searchText,
                    onSubmitted: (value) {
                      setState(() {
                        isSearching = false;
                        _seachText = searchText.text;
                      });
                    },
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                        left: 15,
                        bottom: 11,
                        top: 11,
                        right: 15,
                      ),
                      hintText: "Try typing your name...",
                    ),
                  ),
                )
              : Text("My Robo"),
          actions: [
            isSearching
                ? IconButton(
                    icon: Icon(Icons.forward_outlined),
                    onPressed: () {
                      setState(() {
                        isSearching = false;
                        _seachText = searchText.text;
                        searchText.clear();
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        isSearching = true;
                        searchText.clear();
                      });
                    },
                  ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: '$_imgUrl/$_seachText',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
