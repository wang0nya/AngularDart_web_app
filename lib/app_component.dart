import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:english_words/english_words.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives,
  CORE_DIRECTIVES],
  providers: const [materialProviders],
)
class AppComponent implements OnInit {
  final savedNames = new Set<WordPair>();
  var names = <WordPair>[];
  void generateNames() {
    names = generateWordPairs().take(5).toList();
  }
  @override
  ngOnInit() {
    generateNames();
  }
  void addToSaved(WordPair name) {
    savedNames.add(name);
    print('added $name: $savedNames');
  }

  void removeFromSaved(WordPair name) {
    savedNames.remove(name);
    print('removed $name: $savedNames');
  }
  void toggleSavedState(WordPair name) {
    if (savedNames.contains(name)) {
      removeFromSaved(name);
      return;
    }
    addToSaved(name);
  }
}
