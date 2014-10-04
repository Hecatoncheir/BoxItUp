library boxItUp;
import 'dart:html';

part 'box_realization.dart';

abstract class BoxElements {
  List ElementsBox;
  List TargetsBox;
}

class Box implements BoxElements {

  List ElementsBox;
  List TargetsBox;
  
  Box(String elementName){
    this.ElementsBox = querySelectorAll('$elementName');
    this.TargetsBox = TargetsElements(ElementsBox);
    ShutDownTargets(TargetsBox);
    AddLinksEvents(ElementsBox, TargetsBox);
  }

}