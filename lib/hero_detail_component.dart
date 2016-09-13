import 'package:angular2/core.dart';

import 'hero.dart';

@Component(
    selector: 'my-hero-detail',
    template: '''
        <div *ngIf="hero != null">
          <h2>{{hero.name}} details!</h2>
          <div><label>id: </label>{{hero.id}}</div>
          <div>
            <label>name: </label>
            <input [(ngModel)]="hero.name" placeholder="name">
          </div>
        </div>''',
    )
class HeroDetailComponent {
  @Input()
  Hero hero;
}

// TODO: Learn more about @Input() in the Attribute Directives chapter. https://angular.io/docs/dart/latest/guide/attribute-directives.html#input