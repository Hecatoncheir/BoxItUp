part of boxup;

function boxTargetsDown(List boxElements){
  boxElements.forEach((element){
    element.style.display = 'none';
  });
}

function boxTargetUp(int index, List boxElements){
  boxElements[index].style.display = 'block';
}

function addEventsForBoxLinks(List boxLinks, BoxUp box){
  for(int iterator = 0; iterator < boxLinks.length; iterator++ ){
    boxLinks[iterator].onClick.listen((){
      box.BoxItUp(iterator);
    });
  }
}