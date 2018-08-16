import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';


@Component(
  selector: 'settings-app',
  templateUrl: 'settings_component.html',
  styleUrls: ['settings_component.css'],
  directives: [coreDirectives, routerDirectives],
)
class SettingsComponent {}
