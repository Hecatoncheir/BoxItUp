part of boxItUp;

//Определяется список элементов на которые ведут ссылки

List TargetsElements(List elementsBox){
  List targetsBox = new List();
  
  elementsBox.forEach((element){
    var targetLink = element.getAttribute('href');
    var target = querySelector('$targetLink');
    targetsBox.add(target);      
  });
  
  return targetsBox;
  
}


//Со страницы убираются элементы которые должны будут быть показаны при нажатии на ссылку

void ShutDownTargets(List targets){
  targets.forEach((target){
    target.style.display = 'none';
  });
}


//Обработка события нажатия на ссылку

void AddLinksEvents(List links, List targets){
  
  links.forEach((link){
    link.onClick.listen((event){
      var linkIndex = links.indexOf(event.target);
      
      var target = targets[linkIndex];
    
      BoxItUp(target);
    });
    
  });
}


//Показывается элемент ссылка на который была нажата

void BoxItUp(Element target){
  target.style.display = 'block';
}