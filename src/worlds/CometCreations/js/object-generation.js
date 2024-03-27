//function to populate interactable objects
function setupObjects(){

    const welcome = document.getElementById('welcome_description');
    welcome.setAttribute('circles-description', {title_text_front:'Comet Creations', description_text_front:`${jsonData.HUBText.Welcome}`, description_text_back:`${jsonData.HUBText.Welcome}`, lookAtCamera:true});

    var allImages = document.querySelectorAll(".image");
    for(let i = 0; i < allImages.length; i++){
        allImages[i].setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});
        allImages[i].setAttribute('circles-artefact', {inspectPosition: "0 0 0", inspectRotation: "0 0 0", inspectScale: "1 1 1", textRotationY: "90.0", description_on: false, label_on: false});
    }

    //generate all interactable objects
    var allObjs = document.querySelectorAll(".important");
    for(let i = 0; i < allObjs.length; i++){

        var currName = allObjs[i].id;

        //add the interactive components
        allObjs[i].setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});
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