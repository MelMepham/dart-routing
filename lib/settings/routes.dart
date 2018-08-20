import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';

import 'profile/profile_component.template.dart' as profile_template;
import 'edit_profile/edit_profile_component.template.dart' as edit_profile_template;

export 'route_paths.dart';

class Routes {
  static final profile = RouteDefinition(
    routePath: RoutePaths.profile,
    component: profile_template.ProfileComponentNgFactory,
  );

    static final edit_profile = RouteDefinition(
    routePath: RoutePaths.edit_profile,
    component: edit_profile_template.EditProfileComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    profile,
    edit_profile,

     RouteDefinition.redirect(
      path: 'settings',
      redirectTo: RoutePaths.profile.toUrl(),
      useAsDefault: true,
    ),
  ];
}
