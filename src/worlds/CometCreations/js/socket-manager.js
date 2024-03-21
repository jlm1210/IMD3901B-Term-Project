AFRAME.registerComponent('socket-manager', {
    schema: {},
    init() {
        const CONTEXT_AF = this;
        const scene      = document.querySelector('a-scene');


        //connect to web sockets so we can sync the campfire lights between users
        CONTEXT_AF.socket     = null;
        CONTEXT_AF.connected  = false;
        CONTEXT_AF.startGameEventName = "start_event";

        CONTEXT_AF.createNetworkingSystem = function () {
            CONTEXT_AF.socket = CIRCLES.getCirclesWebsocket();
            CONTEXT_AF.connected = true;
            console.warn("messaging system connected at socket: " + CONTEXT_AF.socket.id + " in room:" + CIRCLES.getCirclesGroupName() + ' in world:' + CIRCLES.getCirclesWorldName());

          //  console.log(usersInRoom);
          //  console.log(numPlayers);
           // if(usersInRoom !== numPlayers){
              //  setInterval(function () {
    
                    //send event to change other client's worlds.
                    // CONTEXT_AF.socket.emit(CONTEXT_AF.startGameEventName, {usersInRoom:usersInRoom, room:CIRCLES.getCirclesGroupName(), world:CIRCLES.getCirclesWorldName()});
            
             //   }, 100);
          //  }

            //listen for when others turn on campfire
            CONTEXT_AF.socket.on(CONTEXT_AF.startGameEventName, function(data) {
               // console.log(data);
            });

            // //request other user's state so we can sync up. Asking over a random time to try and minimize users loading and asking at the same time ...
            // setTimeout(function() {
            //     CONTEXT_AF.socket.emit(CIRCLES.EVENTS.REQUEST_DATA_SYNC, {usersInRoom:CONTEXT_AF.usersInRoom, room:CIRCLES.getCirclesGroupName(), world:CIRCLES.getCirclesWorldName()});
            // }, THREE.MathUtils.randInt(0,1200));

            // //if someone else requests our sync data, we send it.
            // CONTEXT_AF.socket.on(CIRCLES.EVENTS.REQUEST_DATA_SYNC, function(data) {
            //     //if the same world as the one requesting
            //     if (data.world === CIRCLES.getCirclesWorldName()) {
            //         CONTEXT_AF.socket.emit(CIRCLES.EVENTS.SEND_DATA_SYNC, {usersInRoom:CONTEXT_AF.usersInRoom, room:CIRCLES.getCirclesGroupName(), world:CIRCLES.getCirclesWorldName()});
            //     }
            // });

            // //receiving sync data from others (assuming all others is the same for now)
            // CONTEXT_AF.socket.on(CIRCLES.EVENTS.RECEIVE_DATA_SYNC, function(data) {
            //     //make sure we are receiving data for this world
            //     if (data.world === CIRCLES.getCirclesWorldName()) {
            //         console.log("synced data: " + data);
            //     }
            // });
        };

        //check if circle networking is ready. If not, add an eent to listen for when it is ...
        if (CIRCLES.isCirclesWebsocketReady()) {
            CONTEXT_AF.createNetworkingSystem();
        }
        else {
            const wsReadyFunc = function() {
                CONTEXT_AF.createNetworkingSystem();
                CONTEXT_AF.el.sceneEl.removeEventListener(CIRCLES.EVENTS.WS_CONNECTED, wsReadyFunc);
            };
            CONTEXT_AF.el.sceneEl.addEventListener(CIRCLES.EVENTS.WS_CONNECTED, wsReadyFunc);
        }
    },tick: function(){

        //CONTEXT_AF.socket.emit(CONTEXT_AF.startGameEventName, {usersInRoom:usersInRoom, room:CIRCLES.getCirclesGroupName(), world:CIRCLES.getCirclesWorldName()});

    }
});