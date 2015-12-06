//killintro.sqf
_key = _this select 1;
_camera = player getVariable "IntroCam";
disableSerialization;
_display_1 = findDisplay 5000;
_display_2 = findDisplay 5001;
switch (_key) do 
{
	case 57 :
		{
		2 fadeMusic 0;
		Player cameraEffect ["terminate","back"];
		titleText ["","BLACK OUT",0];
		titleText ["Intro Abgebrochen","BLACK IN",2];titleFadeout 2;
		camDestroy _camera;
		player setVariable["IntroCam",nil];
		_display_1 displayRemoveEventHandler ["KeyDown",spacebar_pressed];
		_display_2 displayRemoveEventHandler ["KeyDown",spacebar_pressed];
		if (dialog) then {
			closeDialog 1;
			closeDialog 2;
			};
		};
};
