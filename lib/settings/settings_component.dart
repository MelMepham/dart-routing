import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'routes.dart';


@Component(
  selector: 'settings-app',
  templateUrl: 'settings_component.html',
  styleUrls: ['settings_component.css'],
  directives: [coreDirectives, routerDirectives],
  exports: [RoutePaths, Routes],

)
class SettingsComponent {}
