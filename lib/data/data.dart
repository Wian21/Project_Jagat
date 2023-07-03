import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/deskripsi.dart';

class DetailScreen extends StatelessWidget {
  final Deskripsi deskripsis;

  const DetailScreen({Key? key, required this.deskripsis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(deskripsis.name_grup)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                deskripsis.image,
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            deskripsis.name_grup,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
                color: Colors.black87),
          ),
          Text('Jumlah Anggota: ${deskripsis.name_grup}'),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Text(
              'Description : ' + deskripsis.Deskripsi_grup,
              maxLines: 15,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
