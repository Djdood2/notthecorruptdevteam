/*
  File:fn_SetCamPosition.sqf
  Author:Obamacare
*/
_CamTarget = param[0];
_CamRelPos = param[1];

_SpawnCamera = "camera" camCreate (position player);
_SpawnCamera cameraEffect ["internal","back"];
_SpawnCamera camSetTarget _CamTarget;
_SpawnCamera camSetRelPos _CamRelPos;
_SpawnCamera camCommit 0;
