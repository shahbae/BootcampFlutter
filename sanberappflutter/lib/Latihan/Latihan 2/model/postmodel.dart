import 'dart:convert';

List<Postmodel> postmodelFromJson(String str) =>
    List<Postmodel>.from(json.decode(str).map((x) => Postmodel.fromJson(x)));
    
String postModelToJson(List<Postmodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Postmodel {
  int userId;
  int id;
  String title;
  String body;

  Postmodel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory Postmodel.fromJson(Map<String, dynamic> map) {
    return Postmodel(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Postmodel.fromJson(String source) =>
  //     Postmodel.fromMap(json.decode(source) as Map<String, dynamic>);
}
