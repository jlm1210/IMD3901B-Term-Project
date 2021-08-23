'use strict';

AFRAME.registerComponent('circles-costume-color-selector', {
    schema: {   
        colors:         {type: 'array',    default:[  'rgb(250, 228, 200)', 'rgb(243, 212, 167)', 'rgb(230, 193, 151)',
                                                      'rgb(204, 159, 127)', 'rgb(168, 139, 102)', 'rgb(139, 97, 62)',
                                                      'rgb(119, 71, 41)',   'rgb(39, 24, 12)',    'rgb(0, 174, 204)',
                                                      'rgb(57, 202, 137)',  'rgb(85, 78, 255)',   'rgb(255, 85, 68)',
                                                      'rgb(204, 58, 201)']},   //list of default colors. Best for skin colours ... 
        class_selector: {type: 'string',    default:''}   //this is the class we will use to query for and set the color here
    },
    init: function() {
      const CONTEXT_AF = this;
      const data = CONTEXT_AF.data;

      console.log(data.colors);
      console.log(data.class_selector);

      const click_func = (e) => {
        const col = e.detail.el.components['circles-color'].data.color;
        const colTargets = document.querySelectorAll(CONTEXT_AF.data.class_selector);

        colTargets.forEach((elem) => {
          elem.setAttribute('circles-costume', {color:col});
        });
      };

      let x_step = 0.0;
      for (let i = 0; i < data.colors.length; i++) {
        const colElem = document.createElement('a-entity');
        colElem.classList.add('color_swatch');
        colElem.setAttribute('position', {x:x_step, y:0, z:0});
        colElem.setAttribute('geometry', {primitive:'box', width:0.1, height:0.2, depth:0.05});
        colElem.setAttribute('circles-color', {color:data.colors[i]});
        colElem.setAttribute('circles-interactive-object', '');
        colElem.addEventListener('event', click_func);
        CONTEXT_AF.el.append(colElem);

        x_step += 0.15;
      }
    },
    update: function(oldData)  {},
});