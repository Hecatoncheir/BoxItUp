library box_it_up;
import 'dart:html';

part 'box_elements_realization.dart';
part 'box_it_up_frame.dart';

abstract class BoxElements {
  List ElementsBox;
  List TargetsBox;
}

class Box implements BoxElements {

  BoxFrame boxFrame;
  List ElementsBox;
  List TargetsBox;
  
  Box(String elementName, {String animationOpen: 'openBox'}){
    this.boxFrame = new BoxFrame(animationOpen);
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
  String animationClassName;
  
  BoxFrame(String animation){
  
  _addStyleLink();
  
  this.animationClassName = animation;
  this.body = querySelector('body');
  this.BoxItUpOverlay = addBoxOverlay(body);
  this.BoxIt = addBoxItDiv(body);
   
 }
  
}