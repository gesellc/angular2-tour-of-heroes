import 'package:angular2/core.dart';

import 'hero.dart';

@Component(
    selector: 'my-hero-detail',
    template: '''
        <div *ngIf="selectedHero != null">
          <h2>{{selectedHero.name}} details!</h2>
          <div><label>id: </label>{{selectedHero.id}}</div>
          <div>
            <label>name: </label>
            <input [(ngModel)]="selectedHero.name" placeholder="name">
          </div>
        </div>''',
    )
class HeroDetailComponent {
  @Input()
  Hero hero;
}

// TODO: Learn more about @Input() in the Attribute Directives chapter. https://angular.io/docs/dart/latest/guide/attribute-directives.html#input