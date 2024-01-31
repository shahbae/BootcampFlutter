import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:sanberappflutter/Tugas/Tugas12/get_data_detail_screen.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({super.key});

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  final String url = "https://reqres.in/api/users?page=2";
  List? data;

  void initState() {
    _getRefreshData();
    super.initState();
  }

  Future<void> _getRefreshData() async {
    this.getJsonData(context);
  }

  Future<void> getJsonData(BuildContext context) async {
    var response = await http.get(
      Uri.parse(url),
      headers: {"Accept": "application/json"},
    );
    if (response.statusCode == 200) {
      print("200");
      print("$data");
      setState(() {
        data = jsonDecode(response.body)['data'];
      });
    } else {
      print("Error: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get data api regres"),
      ),
      body: RefreshIndicator(
          onRefresh: _getRefreshData,
          child: data == null
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: data == null ? 0 : data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(4),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GetDetailDataScreen(
                                            value: data![index]["id"],
                                          )));
                              print(data![index]["id"]);
                            },
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  ClipRect(
                                    child: Image.network(
                                      data![index]["avatar"],
                                      height: 80,
                                      width: 80,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(data![index]["first_name"] +
                                          " " +
                                          data![index]["last_name"]),
                                      Text(data![index]["email"]),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Divider()
                        ],
                      ),
                    );
                  },
                )),
    );
  }
}
