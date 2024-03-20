//function to populate interactable objects
function setupObjects(){

    const welcome = document.getElementById('welcome_description');
    welcome.setAttribute('circles-description', {title_text_front:'Comet Creations', description_text_front:`${jsonData.HUBText.Welcome}`, description_text_back:`${jsonData.HUBText.Welcome}`, lookAtCamera:true});

    //generate all interactable objects
    var allObjs = document.querySelectorAll(".important");
    for(let i = 0; i < allObjs.length; i++){

        var currName = allObjs[i].id;

        //add the interactive components
        allObjs[i].setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});
        allObjs[i].setAttribute('circles-artefact', {inspectPosition: "0 0 0", inspectRotation: "0 0 0", inspectScale: "10 10 10", textRotationY: "90.0", labelLookAt:"true", descriptionLookAt: "true", label_offset: "0.0 1.0 0.0", label_arrow_position:"down", title: jsonData.ArtifactText[currName].Title, description: jsonData.ArtifactText[currName].Desc, description_back: jsonData.ArtifactText[currName].Num, description_offset: "0 1.5 -1", desc_arrow_position:"down", label_text:jsonData.ArtifactText[currName].Title});

        //get knowledge of objects when picked up
        allObjs[i].addEventListener(CIRCLES.EVENTS.PICKUP_THIS_OBJECT, (e) => {
            var currentObj = {title: allObjs[i].getAttribute('circles-artefact').title, desc: allObjs[i].getAttribute('circles-artefact').description};
            var alreadyPicked = false;

            //check if we've already picked up this object
            if(objectKnowledge.length == 0){
                objectKnowledge.push(currentObj);
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

        });
    }
}