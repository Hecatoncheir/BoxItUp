part of boxItUp;


//Создание и добавление ссылки на стиль библиотеки в head
void _addStyleLink(){

  LinkElement styleLink = new LinkElement();
      styleLink.rel = 'stylesheet';
      styleLink.href = 'packages/boxItUp/box.css';
      
  querySelector('head').append(styleLink);
}


//Создание и добавление "Overlay" в документ
DivElement addBoxOverlay(body){
   
    DivElement BoxItUpOverlay = new DivElement();
    BoxItUpOverlay.className = 'boxItUp-overlay';
       
    body.append(BoxItUpOverlay);
    
    return BoxItUpOverlay;
}


//Создание и добавление "Коробки" в документ
DivElement addBoxItDiv(body){

  DivElement BoxIt = new DivElement();
  BoxIt.className = 'boxIt animated';
  
  body.append(BoxIt);

  return BoxIt;
}


//Обработка событий закрытия
HandleBoxFrameEvents(box){

  box.BoxItUpOverlay.onClick.listen((event){
  
    event.preventDefault();
    
    box.BoxIt.nodes = [];
    
    event.target.style
      ..opacity = '0'
      ..display = 'none';
      
    box.BoxIt.style
      ..opacity = '0'
      ..height = '0';
    
    box.BoxIt.classes.remove(box.animationClassName);
  });
  
}