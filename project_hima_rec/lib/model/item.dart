import 'package:http/http.dart' as http;
import 'dart:convert';

class ItemKu {
  int? id;
  String judul;
  String deskripsi;

  ItemKu({
      this.id,
      required this.judul,
      required this.deskripsi});


  factory ItemKu.fromJson(Map<String, dynamic>json) {
    return ItemKu(
        id: json['id'],
        judul: json['judul'],
        deskripsi: json['deskripsi']
    );
  }
  //
  //
  // UploadData(String judul, String deskripsi) async {
  //   var url = Uri.parse("http://127.0.0.1:5000/upload");
  //
  //   var Respon = await http.post(
  //       url,
  //       body: {
  //         "judul" : judul,
  //         "deskripsi" : deskripsi
  //       },
  //   );
  //
  //   var data = json.decode(Respon.body);
  //   return data;
  //
  // }
  //
  // static Future<ItemKu> AmbilData() async {
  //   var url = Uri.parse("http://127.0.0.1:5000/get");
  //   var Respon = await http.get(url);
  //
  //   var data = (jsonDecode(Respon.body))["data"];
  //
  //   return ItemKu(
  //       id: data['id'],
  //       judul: data['judul'],
  //       deskripsi: data['deskripsi']
  //   );
  //
  //
  // }

}