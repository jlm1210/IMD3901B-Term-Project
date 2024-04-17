//global values
var userLang = "en";
var jsonFile = "./language/en.JSON";
var jsonData = "";
var numGroups = 1;
var isMultiPlayer = false;
const maxMultiPlayers = 4;
var objectKnowledge = [];
var numPlayers = 0;
var usersInRoom = [];
var accessCol = "";
var currUserInRoom = false;
var doorOpen = true;
const phoneCode = "0915";
const cabinetCode = "1234";
var phoneGuess = "";
var cabinetGuess = "";


window.onload = (event) => {
  console.log("page is fully loaded");
  //only show setup screens once
  if(!window.location.href.includes("explore")){
    document.querySelector('#firstUI').style.display='none';
    document.querySelector('#secondUI').style.display='block';
  } 
};


//this will setup singleplayer vs multiplayer
function nextUI(flag){
  document.querySelector('#firstUI').style.display='none';
  document.querySelector('#waiting').style.display='block';
  if(flag===1){
    console.log("singleplayer");
    isMultiPlayer = false;
    document.querySelector('#waiting').style.display='none';
    document.querySelector('#secondUI').style.display='block';

  } else {
    window.onload = (event) => {
        console.log("page is fully loaded");
        document.querySelector('#waiting').style.display='none';
    };
    console.log("multiplayer");
    document.querySelector('#secondUI').style.display='block';
    isMultiPlayer = true;

    let URL = window.location.href;
    let newGrp = "group" + numGroups;
    URL = URL.replace("explore", newGrp);

    //send user to new group
    window.location.href = URL;

    //console.log(CIRCLES.getCirclesGroupName());
  }
}

//this will setup accessibility settings
function startGame(){
    //setup language
  var languages = document.querySelectorAll(".lang");
  for(let i=0; i < languages.length; i++){

    //fetch the JSON file of the correct language
    if(languages[i].checked === true){
        userLang = languages[i].value;
        var jsonFile = "./language/"+ userLang + ".JSON";
        fetch(jsonFile)
          .then((res) => {
              if (!res.ok) {
                  throw new Error
                      (`HTTP error! Status: ${res.status}`);
              }
              return res.json();
          })
          .then((data) => {
            jsonData = data;
            
            //send the text to all objects that need it
            //call setup function from object-generation.js to populate interactable objects
            setupObjects();

          })
          .catch((error) => 
            console.error("Unable to fetch data:", error));
    }
  } 
  
  //------------MAIN GAME LOOP----------------
  //wait for circles to load in properly
  if(CIRCLES.isReady()){
    var cam = CIRCLES.getMainCameraElement();
    var inter = document.createElement('a-entity');
    inter.setAttribute('id', 'mouse');
    inter.setAttribute('cursor', {rayOrigin: 'mouse'});  
    inter.setAttribute('raycaster', {far: '5'}, {interval: '200'}, {objects: '.inter'});  
    cam.appendChild(inter); //append it to the cursor

    //if french is selected
    if(userLang.includes("fr")){
      //update UI
        document.querySelector("#players").innerHTML = "JOUERS";

        //update the posters
        let hand = document.querySelector('#hand');
        hand.setAttribute('src', 'assets/models/textures/hand_fr.png');

        let heart = document.querySelector('#heart');
        heart.setAttribute('src', 'assets/models/textures/heart_fr.png');

        let lungs = document.querySelector('#lungs');
        lungs.setAttribute('src', 'assets/models/textures/lungs_fr.png');

        let calendar = document.querySelector('#calendar');
        calendar.setAttribute('src', 'assets/models/textures/calendar_fr.png');

        let stomach = document.querySelector('#stomach');
        stomach.setAttribute('src', 'assets/models/textures/stomach_fr.png');

        let medLabel = document.querySelector('#medLabel');
        medLabel.setAttribute('src', 'assets/models/textures/medPlaque_fr.png');
    }

    //setup color options
    var colourOp = document.querySelectorAll(".col");
    for(let i=0; i < colourOp.length; i++){
      if(colourOp[i].checked === true){
          accessCol = colourOp[i].value;
      }
    }

    //colour all checkpoints
    var checkpoints = document.querySelectorAll(".check");
    for(let i=0; i < checkpoints.length; i++){
      checkpoints[i].setAttribute('material','color', accessCol);
      checkpoints[i].setAttribute('material','emissive', accessCol);
    }


    //switch visible overlays
    document.querySelector('#secondUI').style.display='none';
    document.querySelector('#gameUI').style.display='block';


    //reset button for medicine puzzle
    let button = document.querySelector('#resetButton');
    button.setAttribute('class', 'inter');
    button.setAttribute('circles-interactive-object', {type: "highlight", highlight_color: accessCol});

    button.addEventListener('click', function() {
        console.log("reset");

        for(let i = 0; i < 4; i++){
            let med = document.querySelector(`#medicine${i+1}`);
            //let medScale = med.getAttribute('scale');
           // med.setAttribute('scale', `${medScale.x/5}, ${medScale.y/5}, ${medScale.z/5}`);
            med.flushToDOM();
            let copy = med.cloneNode();
            med.parentNode.removeChild(med);
            document.querySelector('a-scene').appendChild(copy);
            copy.setAttribute('position', `${i-0.6} 1.53 -0.9`);
            //copy.setAttribute('scale', `${medScale.x / 5}, ${medScale.y / 5}, ${medScale.z / 5}`);


            //add a click function to pickup
            copy.addEventListener('click', function() {
              var player = CIRCLES.getMainCameraElement();

              //if not already holding a medicine, then you can pick it up
              if(!player.querySelector('[id*="medicine"]')){
                copy.setAttribute('visible', false);
                  //med.removeEventListener('click', arguments.callee);
                  copy.flushToDOM();
                  var copy2 = copy.cloneNode();

                  player.appendChild(copy2);
                  copy2.setAttribute('visible', true);     
                  copy2.setAttribute('position', "0.5 -0.5 -1");
                  copy.parentNode.removeChild(copy); //delete the original item
              }
          });

          let plate = document.querySelector(`#plateM${i+1}`);

          plate.addEventListener('click', plateHandler);
        }

    });



    //make a unique colour for each avatar
    var rCol = 0;
    var gCol = 255;
    var bCol = 0;

    window.setInterval(avatarUI, 1000);    

    function avatarUI(){
        //get all avatars in the group to show in the UI
        var allAvatars = CIRCLES.getNAFAvatarElements();
        //if another player has joined, get the UI again
        if(allAvatars.length > numPlayers){

          for(let i = numPlayers; i < allAvatars.length; i++){

            rCol = Math.floor(Math.random() * 255);
            gCol = Math.floor(Math.random() * 255);
            bCol = Math.floor(Math.random() * 255);

            //2 and 3rd children are head and body
            allAvatars[i].children[2].setAttribute('circles-color', {alpha: 1, color:`rgb(${rCol}, ${gCol}, ${bCol})`});
            allAvatars[i].children[3].setAttribute('circles-color', {alpha: 1, color:`rgb(${rCol}, ${gCol}, ${bCol})`});

            var playerText = document.createElement("h2");
            playerText.innerHTML = `${jsonData.UIText.Player} ${i+1}`;
            playerText.style.backgroundColor = `rgb(${rCol}, ${gCol}, ${bCol})`;
            playerText.setAttribute('id',`player${i}`);
            document.querySelector("#team").appendChild(playerText);

          }
          numPlayers = allAvatars.length;
        } else if(allAvatars.length < numPlayers) {
            var UI = document.querySelector("#team");
            UI.removeChild(UI.lastChild);
            numPlayers = allAvatars.length;
        }

        if(doorOpen === true && usersInRoom.length === numPlayers){
          var sound = document.querySelector('#doorClose');
          sound.components.sound.playSound();
          console.log("close the door");
          var doorPivot = document.querySelector("#doorParent");
          doorPivot.setAttribute('rotation', "0 110 0");
          doorOpen = false;
        }  

      }

      var currAvatar = CIRCLES.getAvatarRigElement();
      currAvatar.setAttribute('trigger', {});

      //probably not the greatest way to do this
      AFRAME.registerComponent('trigger', {
      init: function () {
        var el = this.el;
        var pos = el.getAttribute('position');
        var boxPos = document.querySelector('#labTrigger').getAttribute('position');
        
      }, tick: function(){

          var el = this.el;
          var pos = el.getAttribute('position');
          var boxPos = document.querySelector('#labTrigger').getAttribute('position');

          if(currUserInRoom === false){
              if (pos.z < boxPos.z) {
                  usersInRoom.push(el);
                  currUserInRoom = true;
              }
          } 

      }
    });
  }

}


//miscellaneous functions
//toggle to show object description in UI
function showDesc(object){
  var currObj = document.querySelector(`#${object}id`);
  (currObj.style.display === "none") ? currObj.setAttribute('style', 'display: block;') : currObj.setAttribute('style', 'display: none;');
}

//when all puzzles completed, open the door
function gameWin(){
  //open door
  var sound = document.querySelector('#doorOpen');
  sound.components.sound.playSound();
  var doorPivot = document.querySelector("#doorParent");
  doorPivot.setAttribute('rotation', "0 0 0");

  //toggle interactivity of reset button
  let button = document.querySelector('#resetButton');
  button.classList.remove('inter');
  button.removeAttribute('circles-interactive-object');

  //colour plates green
  for(let i = 0; i < 4; i++){
    let plate = document.querySelector(`#plateM${i+1}`);
    plate.setAttribute('material', {color: 'rgb(0, 255, 0)'});

  }


  //change welcome text
  const welcome = document.getElementById('welcome_description');
  welcome.setAttribute('circles-description', {title_text_front:'Comet Creations', description_text_front:`${jsonData.HUBText.Win}`, description_text_back:`${jsonData.HUBText.Win}`, lookAtCamera:true});
}

//run everytime a medicine is put on a plate to check if the win condition can be triggered
function checkMeds(){
  console.log("checking");
  var correctCount = 0;
  var plateHoldCount = 0;
  var plates = document.querySelectorAll('[id*="plateM"]');

  for(let i = 0; i < plates.length; i++){
    if(plates[i].querySelector(`#medicine${i+1}`)){ //if its right
      correctCount++;
    }

    if(plates[i].querySelector('[id*="medicine"]')){ //if its at least holding something
      plateHoldCount++;
    }
  }

  if(correctCount === 4){ //if its right
    console.log("game win");
    gameWin();
  }

  if(plateHoldCount === 4 && correctCount !== 4){ //if its wrong
    var sound = document.querySelector('#medsIncorrect');
    sound.components.sound.playSound();
  }

}

function plateHandler(event) {
  var player = CIRCLES.getMainCameraElement();
  console.log("clicked");
  var plate = event.target;

  let playerHoldingMedicine = player.querySelector('[id*="medicine"]') !== null;

  // Check if the plate is holding a medicine
  let plateHoldingMedicine = plate.querySelector('[id*="medicine"]') !== null;

  // Handle putting down or picking up medicine based on conditions
  if (playerHoldingMedicine && !plateHoldingMedicine) {
      console.log("put down from player to plate");
      let med = player.querySelector('[id*="medicine"]'); // Get the medicine we are holding
      med.setAttribute('visible', false);
      plate.removeEventListener('click', plateHandler);
      let medScale = med.getAttribute('scale');
      med.flushToDOM();
      var copy = med.cloneNode();
      plate.appendChild(copy);
      copy.setAttribute('visible', true);     
      copy.setAttribute('position', "0 0.036 0");
      copy.setAttribute('scale', `${medScale.x * 5}, ${medScale.y * 5}, ${medScale.z * 5}`);
      player.removeChild(med); // Delete the original item

      //check to see if the win condition is met
      checkMeds();

   } 

}