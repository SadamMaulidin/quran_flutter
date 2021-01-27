import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/model/quran_ayat_model.dart';
import 'package:quran_app/screen/quran_detail.dart';

import './screen/quran_list.dart';
import './model/quran_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: QuranData(), //LOAD PROVIDER QURANDATA UNTUK STATE MANAGEMENT LIST SURAH
        ),
        ChangeNotifierProvider.value(
          value: QuranAyat(),
        )
        //PROVIDER LAINNYA AKAN DITEMPAT DISINI, DIPISAHKAN DENGAN KOMA
      ],
      child: MaterialApp(
        title: 'DaengwebID',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: QuranList(), //DEFAULTNYA AKAN ME-LOAD SCREEN QURANLIST
        routes: {
          '/detail': (ctx) => QuranDetail(),
          //ROUTING UNTUK DETAIL SURAH
        },
      ),
    );
  }
}