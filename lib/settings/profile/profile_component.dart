import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../../route_paths.dart';

@Component(
  selector: 'profile-app',
  templateUrl: 'profile_component.html',
  styleUrls: ['profile_component.css'],
  directives: [coreDirectives, routerDirectives],
)
class ProfileComponent {}
