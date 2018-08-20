import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';

import 'home/home_component.template.dart' as home_template;
import 'settings/settings_component.template.dart' as settings_template;
import 'page_not_found/not_found_component.template.dart' as not_found_template;


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
   
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.home.toUrl(),
      useAsDefault: true,
    ),

    RouteDefinition(
      path: '.+',
      component: not_found_template.NotFoundComponentNgFactory,
    ),
  ];
}
