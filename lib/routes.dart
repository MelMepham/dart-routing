import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';

import 'home/home_component.template.dart' as home_template;
import 'settings/settings_component.template.dart' as settings_template;

export 'route_paths.dart';

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeComponentNgFactory,
  );

  static final settings = RouteDefinition(
    routePath: RoutePaths.settings,
    component: settings_template.SettingsComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
    settings,
   
  ];
}
