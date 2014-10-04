library boxItUp;
import 'dart:html';

part 'box_elements_realization.dart';
part 'boxItUp_frame.dart';

abstract class BoxElements {
  List ElementsBox;
  List TargetsBox;
}

class Box implements BoxElements {

  BoxFrame boxFrame;
  List ElementsBox;
  List TargetsBox;
  
  Box(String elementName){
    this.boxFrame = new BoxFrame();
    this.ElementsBox = querySelectorAll('$elementName');
    this.TargetsBox = TargetsElements(ElementsBox);
    ShutDownTargets(TargetsBox);
    HandleLinksEvents(ElementsBox, TargetsBox, boxFrame);
    HandleBoxFrameEvents(boxFrame);
  }

}


class BoxFrame {

  Element body;
  DivElement BoxItUpOverlay;
  DivElement BoxIt;
  
  BoxFrame(){
  
  _addStyleLink();
  
  this.body = querySelector('body');
  this.BoxItUpOverlay = addBoxOverlay(body);
  this.BoxIt = addBoxItDiv(body);
   
 }
  
}