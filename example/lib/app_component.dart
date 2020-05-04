import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

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
  AppComponent();
}
