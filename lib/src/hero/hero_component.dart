import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';

@Component(
  selector: 'my-hero',
  styleUrls: ['hero.css'],
  template: '''
    <div *ngIf="hero != null">
      <h2>{{hero.name}}</h2>
      <div class="fontNormal" style="color: green">
      <label class="fontNormal" style="margin-bottom: 8px;color: #039be5">id: </label>
      {{hero.id}}
      </div>
      <div style="margin-top: 16px">
        <label class="fontNormal" style="margin-bottom: 8px;color: #039be5">name: </label>
        <input class="fontNormal inputCustom" [(ngModel)]="hero.name" placeholder="name" >
      </div>
    </div>''',
  directives: [coreDirectives, formDirectives],
)
class HeroComponent {
  @Input()
  Hero hero;

}
