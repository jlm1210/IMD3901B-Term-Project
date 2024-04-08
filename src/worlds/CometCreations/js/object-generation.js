//function to populate interactable objects
function setupObjects(){

    var phone = document.querySelector("#Phone");
    var posX = -0.2;
    var posZ = 0.2;
    var posY = 0.4;
    var scale = 0.1;
    var rot = 90;
    codeManager(phone, posX, posY, posZ, scale, rot);

    var cabinet = document.querySelector("#Cabinet");
    cabinet.setAttribute('class', 'inter');
    cabinet.setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});
    posX = -10;
    posZ = 1;
    posY = 20;
    scale = 5;
    rot = 90;
    codeManager(cabinet, posX, posY, posZ, scale, rot);
    codeEvents();

    const welcome = document.getElementById('welcome_description');
    welcome.setAttribute('circles-description', {title_text_front:'Comet Creations', description_text_front:`${jsonData.HUBText.Welcome}`, description_text_back:`${jsonData.HUBText.Welcome}`, lookAtCamera:true});

    //posters
    var allImages = document.querySelectorAll(".image");
    for(let i = 0; i < allImages.length; i++){
        allImages[i].setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});
        allImages[i].setAttribute('class', 'inter');
        allImages[i].setAttribute('circles-artefact', {inspectPosition: "0 0 0", inspectRotation: "0 0 0", inspectScale: "1 1 1", textRotationY: "90.0", description_on: false, label_on: false});
    }

    //generate all interactable objects
    var allObjs = document.querySelectorAll(".important");
    for(let i = 0; i < allObjs.length; i++){

        var currName = allObjs[i].id;

        //add the interactive components
        allObjs[i].setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});
        allObjs[i].setAttribute('class', 'inter');
        allObjs[i].setAttribute('circles-artefact', {inspectPosition: "0 -0.25 0", inspectRotation: "0 -90 -30", inspectScale: "7 7 7", textRotationY: "90.0", labelLookAt:true, descriptionLookAt: true, label_offset: "0.0 1.0 0.0", label_arrow_position:'down', title: jsonData.ArtifactText[currName].Title, description: jsonData.ArtifactText[currName].Desc, description_back: jsonData.ArtifactText[currName].Num, description_offset: "0 1.5 -1", desc_arrow_position:'down', label_text:jsonData.ArtifactText[currName].Title});
        // description_on: false, label_on: false,

        //get knowledge of objects when picked up
        allObjs[i].addEventListener(CIRCLES.EVENTS.PICKUP_THIS_OBJECT, (e) => {
            var currentObj = {title: allObjs[i].getAttribute('circles-artefact').title, desc: allObjs[i].getAttribute('circles-artefact').description};
            var alreadyPicked = false;

            //var socketContext = document.querySelector("#game-manager").getAttribute('socket-manager');

            //check if we've already picked up this object
            if(objectKnowledge.length == 0){
                objectKnowledge.push(currentObj);
                //socketContext.socket.emit(socketContext.shareInfoEvent, {info:currentObj, room:CIRCLES.getCirclesGroupName(), world:CIRCLES.getCirclesWorldName()});
            } else {
                for(let x = 0; x < objectKnowledge.length; x++){
                    if(objectKnowledge[x].title == currentObj.title){
                        alreadyPicked = true;
                    }
                }
                if(!alreadyPicked){
                    objectKnowledge.push(currentObj);
                }
            }

            //check if theres a code on it to hide
            if(currentObj.title === "Phone"){
                var childCodes = allObjs[i].querySelectorAll(".code");
                for(let x = 0; x < childCodes.length; x++){
                    childCodes[x].setAttribute('visible', false);
                }
            }

        });

        allObjs[i].addEventListener(CIRCLES.EVENTS.RELEASE_THIS_OBJECT, (e) => {
            var currentObj = {title: allObjs[i].getAttribute('circles-artefact').title, desc: allObjs[i].getAttribute('circles-artefact').description};
             //check if theres a code on it to hide
             if(currentObj.title === "Phone"){
                var childCodes = allObjs[i].querySelectorAll(".code");
                for(let x = 0; x < childCodes.length; x++){
                    childCodes[x].setAttribute('visible', true);
                }
            }
        });
    }
}

function codeManager(object, posX, posY, posZ, scale, rot){

    //add the floating code UI on the phone and the cabinet
    for(let x = 0; x < 10; x++){

        //at 5, move the boxes down
        if(x%5 === 0 && x != 0){
            posY = (posY/2) + (posY/4);
            posZ = 0.2;
        }

        var box = document.createElement('a-entity');
        box.setAttribute('class', `code inter`);
        box.setAttribute('id', object.id + x);
        box.setAttribute('geometry', {primitive: 'plane'},{width:'0.5'},{height:'0.5'});
        box.setAttribute('material', {color: 'rgb(0,0,0)'}, {side: 'double'});
        box.setAttribute('position', `${posX} ${posY} ${posZ}`);
        box.setAttribute('scale', `${scale} ${scale} ${scale}`); 
        box.setAttribute('rotation', `0 ${rot} 0`);  
        object.appendChild(box); //append it to the phone

        var num = document.createElement('a-entity');
        num.setAttribute('position', `-0.3 0.17 0.01`);
        num.setAttribute('scale', '3 3 3'); 
        num.setAttribute('text', {
            value: x,
            color: accessCol,
            font: 'roboto',
            width: '1.5',
            anchor: 'left',
            baseline: 'top',
            wrapCount: '12'
        });
        box.appendChild(num); //append it to the box

        posZ = posZ-scale;
    }

}

function codeEvents(){
    var boxes = document.querySelectorAll('.code');

    for(let x = 0; x < 20; x++){
        // boxes[x].addEventListener("mouseenter", (e) => {
        //     boxes[x].setAttribute('material', {color: 'rgb(0, 0, 255)'}, {side: 'double'});
        // });
        boxes[x].addEventListener("click", (e) => {
            boxes[x].setAttribute('material', {color: 'rgb(229, 235, 52)'}, {side: 'double'});
            var id = boxes[x].id.charAt(boxes[x].id.length - 1);
            if(boxes[x].id.includes("Phone")){
                phoneGuess = phoneGuess.concat(id);
            } else {
                cabinetGuess = cabinetGuess.concat(id);
            }
            codeCheck(boxes[x].id);
        });
    }
}

function codeCheck(id){
    if(id.includes("Phone")){
        if(phoneGuess.length === 4){
            if(phoneGuess === phoneCode){
                for(let i = 0; i < phoneCode.length; i++){
                    document.querySelectorAll('.code')[phoneCode[i]].setAttribute('material', {color: 'rgb(0, 255, 0)'}, {side: 'double'});
                }
                
            } else {
                phoneGuess = "";
                for(let i = 0; i < 10; i++){
                    document.querySelectorAll('.code')[i].setAttribute('material', {color: 'rgb(0, 0, 0)'}, {side: 'double'});
                }
            }
        }
    } else {
        if(cabinetGuess.length === 4){
            if(cabinetGuess === cabinetCode){
                for(let i = 0; i < cabinetCode.length; i++){
                    var r = Number(cabinetCode[i]);
                    r = r + 10;
                    console.log(r);
                    document.querySelectorAll('.code')[r].setAttribute('material', {color: 'rgb(0, 255, 0)'}, {side: 'double'});
                }
                
            } else {
                cabinetGuess = "";
                for(let i = 10; i < 20; i++){
                    document.querySelectorAll('.code')[i].setAttribute('material', {color: 'rgb(0, 0, 0)'}, {side: 'double'});
                }
            }
        }
    }
}