//function to populate interactable objects
function setupObjects(){

    //setup the phone and its code input UI
    var phone = document.querySelector("#Phone");
    var posX = -0.2;
    var posZ = 0.2;
    var posY = 0.4;
    var scale = 0.1;
    var rot = 90;
    codeManager(phone, posX, posY, posZ, scale, rot);

    //setup the cabinet and its code input UI
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

    //setup the interactable medicines
    for(let i = 0; i < 4; i++){
        let med = document.querySelector(`#medicine${i+1}`);
        med.setAttribute('class', 'inter');
        med.setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});

        //add a click function to pickup
        med.addEventListener('click', function() {
            med.setAttribute('visible', false);
            med.removeEventListener('click', arguments.callee);
            med.flushToDOM();
            var copy = med.cloneNode();
            var player = CIRCLES.getMainCameraElement();
            player.appendChild(copy);
            copy.setAttribute('visible', true);     
            copy.setAttribute('position', "0.5 -0.5 -1");
        });
    }

    //setup the interactable plates
    for(let i = 0; i < 4; i++){
        let plate = document.querySelector(`#plate${i+1}`);
        plate.setAttribute('class', 'inter');
        plate.setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});

        //add a click function to pickup
        plate.addEventListener('click', function() {

            var player = CIRCLES.getMainCameraElement();
            var allChildren = player.children;
            for (var i = 0; i < allChildren.length; i++) {
                if(allChildren[i].id.includes("medicine")){
                    console.log("put down");
                }
            }
        });
    }


    //make the second door interactable
    var door2 = document.querySelector("#medDoor2");
    door2.setAttribute('class', 'inter');
    door2.setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});
    door2.addEventListener('click', function() {

        //check if the player is holding the key
        var player = CIRCLES.getMainCameraElement();
        var allChildren = player.children;
        for (var i = 0; i < allChildren.length; i++) {
            if(allChildren[i].id == "key"){
                //open the door
                var sound = document.querySelector('#doorOpen');
                sound.components.sound.playSound();
                var doorPivot = document.querySelector("#doorParent2");
                doorPivot.setAttribute('rotation', "0 90 0");

                //remove the key from the players hand
                var key = document.querySelector("#key");
                player.removeChild(key);
            }
        }
    });



    //setup the welcome text
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
                objectKnowledge.push(currentObj); //add the first object regardless
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

            if(!alreadyPicked){
                //put the info into the UI
                var container = document.createElement("div");

                //second container to align title and button
                var container2 = document.createElement("div");
                container2.setAttribute('class', "objectText");
                container.appendChild(container2);
                //container2.setAttribute('class', "objectText");

                //title
                var newEl = document.createElement("h4");
                newEl.innerHTML = currentObj.title;
                container2.appendChild(newEl);
             
                //description
                var innerEl = document.createElement("h6");
                innerEl.setAttribute('id', currentObj.title + "id");
                innerEl.innerHTML = currentObj.desc;
                innerEl.setAttribute('style', 'display: none;');
                container.appendChild(innerEl);
                document.querySelector("#info").appendChild(container);

                //button
                var newButton = document.createElement("button"); 
                newButton.innerHTML = "INFO";
                newButton.setAttribute('class', "descButton");
                newButton.addEventListener("click", function() {
                    showDesc(currentObj.title);
                });
                container2.appendChild(newButton);

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

//check if the code inputs are correct or not
function codeCheck(id){
    if(id.includes("Phone")){
        if(phoneGuess.length === 4){ //once 4 inputs have been made
            if(phoneGuess === phoneCode){ //if its correct
                for(let i = 0; i < phoneCode.length; i++){ //change the correct code to be green
                    document.querySelectorAll('.code')[phoneCode[i]].setAttribute('material', {color: 'rgb(0, 255, 0)'}, {side: 'double'});
                }
                //give the player the key
                var key = document.querySelector("#key");
                key.setAttribute('visible', true);
                key.setAttribute('position', "0.5 -0.5 -1");
                key.flushToDOM();
                var copy = key.cloneNode();
                var player = CIRCLES.getMainCameraElement();
                player.appendChild(copy);
                
            } else { //if its wrong
                phoneGuess = "";
                for(let i = 0; i < 10; i++){
                    document.querySelectorAll('.code')[i].setAttribute('material', {color: 'rgb(0, 0, 0)'}, {side: 'double'});
                }
            }
        }
    } else {
        if(cabinetGuess.length === 4){ //once 4 inputs have been made
            if(cabinetGuess === cabinetCode){ //if its correct
                for(let i = 0; i < cabinetCode.length; i++){ //change the correct code to be green
                    var r = Number(cabinetCode[i]);
                    r = r + 10;
                    document.querySelectorAll('.code')[r].setAttribute('material', {color: 'rgb(0, 255, 0)'}, {side: 'double'});
                }
                
            } else { //if its wrong
                cabinetGuess = "";
                for(let i = 10; i < 20; i++){
                    document.querySelectorAll('.code')[i].setAttribute('material', {color: 'rgb(0, 0, 0)'}, {side: 'double'});
                }
            }
        }
    }
}