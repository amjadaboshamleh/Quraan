import 'package:flutter/material.dart';

Widget QuraanController(model, context) {
  return Expanded(
    child: Column(
      children: [
      
        Text("${model.number}"),
        Text("${model.name}"),
        Text("${model.englishName}"),
        Text("${model.englishNameTranslation}"),
        Text("${model.revelationType}"),
        Text("${model.number}"),
        Text("${model.text}"),
        Text("${model.numberInSurah}"),
        Text("${model.juz}"),
        Text("${model.manzil}"),
        Text("${model.page}"),
        Text("${model.ruku}"),
        Text("${model.hizbQuarter}"),
        Text("${model.sajda}"),
      ],
    ),
  );
}
