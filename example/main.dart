import 'dart:io';

import 'package:essential_xlsx/essential_xlsx.dart';

final List<Map<String, dynamic>> data = <Map<String, dynamic>>[
  {'name': 'Isaque', 'phone': '22 2777-2339', 'age': '32'},
  {'name': 'Joe', 'phone': '22 2777-2339', 'age': '32'},
  {'name': 'Leo', 'phone': '22 2777-2339', 'age': '32'},
  {'name': 'Tiago', 'phone': '22 2777-2339', 'age': '32'},
  {'name': 'Jon', 'phone': '22 2777-2339', 'age': '32'},
];

void main(List<String> args) {
  if (data.isNotEmpty) {
    final simplexlsx = SimpleXLSX();  
    simplexlsx.sheetName = 'sheet';

    //adiciona os dados
    var idx = 0;
    data.forEach((item) {
      if (idx == 0) {
        //adiciona os titulos
        simplexlsx.addRow(item.keys.toList());
      }
      {
        //adiciona os valores
        simplexlsx.addRow(item.values.map((i) => i.toString()).toList());
      }
      idx++;
    });

    final bytes = simplexlsx.build();

    File('teste.xlsx').writeAsBytesSync(bytes);
  }
}
