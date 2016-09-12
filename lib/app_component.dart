import 'package:angular2/core.dart';
@Component(
    selector: 'my-app',
    template: '''
        <h1>{{title}}</h1>
        <h2>{{hero.name}} details!</h2>
        <div><label>id: </label>{{hero.id}}</div>
        <div>
          <label>name: </label>
          <input [(ngModel)]="hero.name" placeholder="name">
        </div>''')
class AppComponent {

  String title = 'Tour of Heroes';
  //var hero = 'Windstorm';
  Hero hero = new Hero(1, 'Windstorm');
}

// TODO: Learn more about interpolation in the Displaying Data chapter. https://angular.io/docs/dart/latest/guide/displaying-data.html

class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);
}
