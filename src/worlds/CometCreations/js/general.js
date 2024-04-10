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
const phoneCode = "0873";
const cabinetCode = "2134";
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

      if(userLang.includes("fr")){
          document.querySelector("#players").innerHTML = "JOUERS";
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


    //////////////////////////TEMPORARY WIN CONDITION////////////////////////////////////
    //var heart = document.querySelector("#heart").addEventListener("click", gameWin);


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
          doorPivot.setAttribute('rotation', "0 77 0");
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

  //change welcome text
  const welcome = document.getElementById('welcome_description');
  welcome.setAttribute('circles-description', {title_text_front:'Comet Creations', description_text_front:`${jsonData.HUBText.Win}`, description_text_back:`${jsonData.HUBText.Win}`, lookAtCamera:true});
}
