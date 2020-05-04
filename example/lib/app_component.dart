import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:essential_xlsx/essential_xlsx.dart';

@Component(
    selector: 'my-app',
    styleUrls: ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: [
      formDirectives,
      coreDirectives,
      routerDirectives,
    ],
    exports: [])
class AppComponent {
  final List<Map<String, dynamic>> data = <Map<String, dynamic>>[
    {'name': 'Isaque', 'phone': '22 2777-2339', 'age': '32'},
    {'name': 'Joe', 'phone': '22 2777-2339', 'age': '32'},
    {'name': 'Leo', 'phone': '22 2777-2339', 'age': '32'},
    {'name': 'Tiago', 'phone': '22 2777-2339', 'age': '32'},
    {'name': 'Jon', 'phone': '22 2777-2339', 'age': '32'},
  ];

  AppComponent();

  Future<void> toXLSX() async {
    if (data != null) {
      if (data.isNotEmpty) {
        var simplexlsx = SimpleXLSX();
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

        simplexlsx.build();
      }
    }
  }
}
