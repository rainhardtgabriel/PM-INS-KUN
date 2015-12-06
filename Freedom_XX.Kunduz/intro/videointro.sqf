if (hasInterface) then {
		
		waitUntil {time >= 0.5};
		disableSerialization;
		//Abort Option
//		Spacebar_pressed = _display displayAddEventHandler ["KeyDown",{_this execVM "intro\killintro.sqf"}];
		// Preparing the Camera
		_camera = "camera" camcreate [position Player select 0,(position Player select 1) - 10,(position Player select 2) +10];
		player setVariable ["IntroCam",_camera];
		_camera camPrepareTarget Player;
		_camera camsetTarget Player;
		_camera cameraEffect ["internal","back"];
		cutText ["","BLACK IN",60];
		// Inserting 1st Dialog Missionname
		_ok = createDialog "intro_dialog";
		#define _ok 1
		_display = findDisplay 5000;
		spacebar_pressed =_display displayAddEventHandler ["KeyDown",{_this execVM "intro\killintro.sqf"}];
		titleText ["","WHITE IN",5];
		sleep 1;
		playMusic "LeadTrack01b_F";
		5 fadeMusic 1;
		// Prepare Target Player
		_camera camsetTarget Player;
		_camera camPreparePos [(position Player select 0)+30,(position Player select 1) - 40,(position Player select 2) +100];
		_camera CamPrepareFOV 0.700;
		_camera CamCommitPrepared 15;
		waitUntil {camCommitted _camera};
		closeDialog 1;
		_ok1 = createDialog "mission_dialog";
		#define _ok1 2
		_display displayRemoveEventHandler ["KeyDown",Spacebar_pressed];
		_display = findDisplay 5001;
		Spacebar_pressed =	_display displayAddEventHandler ["KeyDown",{_this execVM "intro\killintro.sqf"}];
		// Fahrt nach oben
		_camera camprepareTarget Player;
		_camera camsetTarget Player;
		_camera camsetPos [position Player select 0,(position Player select 1) - 30,(position Player select 2) +10];
		_camera CamPrepareFOV 0.700;
		_camera CamCommit 25;
		waitUntil {camCommitted _camera};
		// Zoom in on Player
		_camera camsetPos [position Player select 0,(position Player select 1) + 10,(position Player select 2) +2];
		_camera CamPrepareFOV 0.700;
		_camera CamCommit 10;
		waitUntil {camCommitted _camera};
		titleText ["","BLACK OUT",11];
		_camera camsetPos [position Player select 0,(position Player select 1) + 10,(position Player select 2) +4];
		_camera CamPrepareFOV 0.009;
		_camera CamCommit 10;
		waitUntil {camCommitted _camera};
		closeDialog 2;
		sleep 1;
		// End of Intro
		10 fadeMusic 0;
		sleep 7;
		Player cameraEffect ["terminate","back"];
		titleText ["","BLACK IN",0];
		camDestroy _camera;
		_display displayRemoveEventHandler ["KeyDown",Spacebar_pressed];
};