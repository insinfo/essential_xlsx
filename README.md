## essential_xlsx
A library for create Excel XLSX file

```yaml
dependencies:
    ...
    essential_xlsx: any
    ...
```

#### example

```dart
 final List<Map<String, dynamic>> data = <Map<String, dynamic>>[
    {'name': 'Isaque', 'phone': '22 2777-2339', 'age': '32'},
    {'name': 'Joe', 'phone': '22 2777-2339', 'age': '32'},
    {'name': 'Leo', 'phone': '22 2777-2339', 'age': '32'},
    {'name': 'Tiago', 'phone': '22 2777-2339', 'age': '32'},
    {'name': 'Jon', 'phone': '22 2777-2339', 'age': '32'},
  ];

  Future<void> toXLSX() async {
    if (data != null) {
      if (data.isNotEmpty) {
        var simplexlsx = SimpleXLSX();
        simplexlsx.sheetName = 'sheet';

        //add data
        var idx = 0;
        data.forEach((item) {
          if (idx == 0) {
            //add titles
            simplexlsx.addRow(item.keys.toList());
          }
          {
            //add values
            simplexlsx.addRow(item.values.map((i) => i.toString()).toList());
          }
          idx++;
        });

        simplexlsx.build();
      }
    }
  }
```
