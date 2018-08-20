import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../../../route_paths.dart';


@Component(
  selector: 'edit-profile-app',
  templateUrl: 'edit_profile_component.html',
  styleUrls: ['edit_profile_component.css'],
  directives: [coreDirectives, routerDirectives],
)
class EditProfileComponent {}
