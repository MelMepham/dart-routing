import 'package:angular_router/angular_router.dart';

import 'home/crisis_list_home_component.template.dart' as home_template;
import 'crisis/crisis_component.template.dart' as crisis_template;
import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.CrisisListHomeComponentNgFactory,
    useAsDefault: true,
  );

  static final crisis = RouteDefinition(
    routePath: RoutePaths.crisis,
    component: crisis_template.CrisisComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
    crisis,
  ];
}
