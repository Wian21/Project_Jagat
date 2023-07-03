import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/data/deskripsi.dart';

class HomeWian extends StatelessWidget {
  const HomeWian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.auto_awesome_outlined),
            SizedBox(width: 10),
            Text('Biodata Grup Kpop'),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: DeskripsiGrupKpop.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              deskripsis: DeskripsiGrupKpop[index],
                            )));
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          DeskripsiGrupKpop[index].image,
                          width: 145,
                          height: 145,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(DeskripsiGrupKpop[index].name_grup,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black54)),
                        Text(
                            'Anggota : ${DeskripsiGrupKpop[index].jumlah_anggota}'),
                        ClipOval(
                          child: Material(
                            color: Colors.pink, // button color
                            child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: Icon(Icons.favorite)),
                              onTap: () {},
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
