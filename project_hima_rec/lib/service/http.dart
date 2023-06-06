import 'dart:convert';

import 'package:project_hima_rec/model/item.dart';
import 'package:http/http.dart' as http;

class Service {

  Future<List<ItemKu>> getData() async {
    var url = Uri.parse("http://127.0.0.1:5000/get");
    var respon = await http.get(url);

    if (respon.statusCode == 200) {
      List jsonResp = json.decode(respon.body);
      return jsonResp.map((data) => ItemKu.fromJson(data)).toList();
    } else {
      throw Exception("Failed load data");
    }
  }
  
  static Future uploadData(String judul, String deskripsi) async {


    Map data = {
      "judul" : judul,
      "deskripsi" : deskripsi
    };

    var body = json.encode(data);

    var url = Uri.parse("http://127.0.0.1:5000/upload");
    var respon = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: body
    );




    if (respon.statusCode == 200) {
      return true;
    } else {
      throw Exception("Failed Upload data");
    }
  }

  static Future updateData(int? id, String judul, String deskripsi) async{
    Map data = {
      "id" : id,
      "judul" : judul,
      "deskripsi" : deskripsi
    };

    var body = json.encode(data);

    var url = Uri.parse("http://127.0.0.1:5000/update");
    var respon = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: body
    );




    if (respon.statusCode == 200) {
      return true;
    } else {
      throw Exception("Failed Upload data");
    }
  }

  static Future deleteData(int? id) async {
    Map data  = {
      "id" : id
    };

    var body = json.encode(data);

    var url = Uri.parse("http://127.0.0.1:5000/delete");
    var respon = await http.delete(
        url,
        headers: {'Content-Type': 'application/json'},
        body: body
    );

    if (respon.statusCode == 200) {
      return true;
    } else {
      throw Exception("Failed Upload data");
    }

  }




}