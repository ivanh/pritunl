library navbar;

import 'package:pritunl/settings/settings.dart' as settings;

import 'package:angular/angular.dart' show Component;

@Component(
    selector: 'navbar',
    templateUrl: 'packages/pritunl/components/navbar/navbar.html',
    cssUrl: 'packages/pritunl/components/navbar/navbar.css'
)
class NavbarComp {
  var active;

  NavbarComp() {
    settings.set('active_page', this);
    settings.observe('active_page', (_, value) {
      this.active = {value: 'active'};
    });
  }
}
