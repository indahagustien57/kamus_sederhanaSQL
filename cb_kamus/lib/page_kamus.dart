import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PageKamus extends StatefulWidget {
  @override
  _PageKamus createState() => _PageKamus();
}

class _PageKamus extends State<PageKamus> {
  Future<List> getData() async {
    final response =
        await http.get("http://192.168.1.10/flutter-server/get_kamus.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Chemistry Dictionary',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.green[300],
        ),
        body: FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? ItemList(list: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        ));
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailBerita(list, index);
              }));
            },
            child: Card(
              color: Colors.amber[200],
              child: ListTile(
                title: Text(
                  list[index]['kosakata'],
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                //subtitle: Text("definition: ${list[index]['definisi']}"),
                trailing: Image.network(
                  'http://192.168.1.10/flutter-server' + list[index]['foto'],
                  fit: BoxFit.cover,
                  width: 60.0,
                  height: 60.0,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class DetailBerita extends StatelessWidget {
  List list;
  int index;
  DetailBerita(this.list, this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
        backgroundColor: Colors.green[300],
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              'http://192.168.10.153/flutter_day6/' + list[index]['foto']),
          Container(
            padding: EdgeInsets.all(32.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          list[index]['kosakata'],
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.book,
                  color: Colors.brown,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            child: Text(
              "definition: ${list[index]['definisi']}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
