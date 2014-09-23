library boxup;
import 'dart:html';

part 'realization.dart';

class BoxUp {
  List BoxElements;
  BoxUp( List this.BoxElements ){
    boxTargetsDown(BoxElements);
  }
  BoxItUp(int index){
    boxTargetUp(index, BoxElements);
  }
}

class BoxLinks {
  List Links;
  List Targets;
  BoxUp Box;

  BoxLinks(String elements){
    this.Links = querySelectorAll('$elements');
    this.Targets = new List();

    Links.forEach((element){
      var hrefEl = element.getAttribute('href');
      var targetElement = querySelector('$hrefEl');
      this.Targets.add(targetElement);
    });

    this.Box = new BoxUp(Targets);
    addEventsForBoxLinks(Links, Box);
  }

}