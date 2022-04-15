import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hilal/profilpage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.lightBlue,
    ),
    debugShowCheckedModeBanner: false,
    home: SearchPage(),
  ));
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                alignment: Alignment.centerRight,
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.navigate_next_rounded),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilPage()));
                  },
                ),
              ),
              Container(
                width: 380,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://akcdn.detik.net.id/community/media/visual/2020/12/30/laptop-terbaik-dunia-tahun-2020-versi-the-verge.png?w=750&q=90'),
                    )),
              ),
              Padding(padding: EdgeInsets.all(12.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                width: 380,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://akcdn.detik.net.id/community/media/visual/2020/12/30/laptop-terbaik-dunia-tahun-2020-versi-the-verge-1.png?w=750&q=90'),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
              Container(
                width: 380,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://akcdn.detik.net.id/community/media/visual/2020/12/30/laptop-terbaik-dunia-tahun-2020-versi-the-verge-3.png?w=750&q=90'),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
