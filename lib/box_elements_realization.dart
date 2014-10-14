part of box_it_up;

//Определяется список элементов на которые ведут ссылки

List TargetsElements(List elementsBox){
  List targetsBox = new List();
  
  elementsBox.forEach((element){
  
  var targetLink = element.getAttribute('href');
  
    if (!targetLink.startsWith('http://')) {
      var target = querySelector('$targetLink');
      targetsBox.add(target);  
    }
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

void HandleLinksEvents(List links, List targets, box){
  
  links.forEach((link){
  
    link.onClick.listen((event){
    event.preventDefault();
    
    // Внешние ссылки
    if (event.target.type.contains('external')) {
      
      var HttpTarget = '${event.target.href}';
      
      IFrameElement otherLinksFrame = createExternalFrame(HttpTarget);
      
      BoxItUp(otherLinksFrame, box);
      
			
    }
    
      var linkIndex = links.indexOf(event.target);
      
      var target = targets[linkIndex];
      
      BoxItUp(target, box);
    });
    
  });
}

void createExternalFrame(String httpTarget){
  int otherLinksInt = 0;

  DivElement otherLinksFrame = new IFrameElement();
  otherLinksFrame.className = 'otherTarget_${otherLinksInt}';
  otherLinksFrame.src = '${httpTarget}';
  otherLinksFrame.style.border = '0';
  otherLinksFrame.style.width = '100%';
  
  return otherLinksFrame;
  
  otherLinksInt++;
}


//Показывается элемент ссылка на который была нажата

void BoxItUp(Element target, box){
  
  box.BoxIt.append(target);
  target.style.display = 'block';

  box.BoxItUpOverlay.style
    ..opacity = '0.5'
    ..display = 'block';
    
  box.BoxIt.style
    ..height = 'auto'
    ..opacity = '1';
    
  box.BoxIt.classes.add(box.animationClassName);
}