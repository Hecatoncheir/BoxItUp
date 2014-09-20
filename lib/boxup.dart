library boxup;
import 'dart:html';


class BoxUp {
  List BoxElements;
  BoxUp( ElementList this.BoxElements ){
    boxTargetsDown(BoxElements);
  }
}

class BoxLinks {
  List Links;
  List Targets;

  BoxLinks(String elements){
    this.Links = querySelectorAll('$elements');
    this.Targets = new List();

    Links.forEach((element){
      var hrefEl = element.getAttribute('href');
      var targetElement = querySelector('$hrefEl');
      this.Targets.add(targetElement);
    });

    addEventsForBoxLinks(Links);
  }
}


function boxTargetsDown(List boxElements){
  boxElements.forEach((element){
    element.style.display = 'none';
  });
}

function addEventsForBoxLinks(List boxLinks){
}