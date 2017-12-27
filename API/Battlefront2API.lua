--------------------------------------------------------------
-- @module Battlefront2API

--------------------------------------------------------------
-- Sets the sound stream to play for the specified team when the other specified team has started/stopped bleeding.
-- 
-- @param #int playerTeam			Player's team number
-- @param #int bleedTeam			The team that's started/stopped bleeding
-- @param #string streamSoundName	Stream sound to play when the local player is playerTeam and bleedTeam has started/stopped bleeding
-- @param #int bleeding				Set to 1 to assign a started bleeding sound, set to 0 to assign a stopped bleeding sound
function SetBleedingVoiceOver(playerTeam, bleedTeam, streamSoundName, bleeding) end

--------------------------------------------------------------
-- Sets the bleeding sound stream repeat time.
-- 
-- @param #float repeatTime			Time between each repetition of the started bleeding voice over
function SetBleedingRepeatTime(repeatTime) end

--------------------------------------------------------------
-- Sets the voice over to play for the specified bonus.
-- 
-- @param #int playerTeam				Player's team number
-- @param #int bonusNum					The number of the bonus to be set.  
-- 										 `0` - medical regen bonus (played on level load, heard by players team)  
--										 `1` - surplus supplies bonus (played on level load, heard by players team)  
--										 `2` - sensor boost bonus (played on level load, heard by players team)  
--										 `3` - hero is on the battlefield (played on level load, heard by both teams)  
--										 `4` - our team just got the reserves bonus (played when it happens, heard by players team)  
--										 `5` - the other team just got reserves bonus (played when it happens, heard by other team)
-- @param #string streamSoundName		Stream sound to play when the bonus occurs (or at level load if the bonus is ongoing)
function SetPlanetaryBonusVoiceOver(playerTeam, bonusNum, streamSoundName) end

--------------------------------------------------------------
-- Sets the sound effect to play for the specified sound event.
-- 
-- @param #string soundEventType		Type of event. Can be any of the following...  
-- 										 `BirdScatter` - Played when birds are spawned  
-- 										 `Bird` - Attached to each bird  
-- 										 `LeafFall` - Played when a falling leaf is spawned  
-- 										 `ScopeDisplayAmbient` - Played when scope display is active  
-- 										 `ScopeDisplayZoomIn` - When scope display zooms in  
-- 										 `ScopeDisplayZoomOut` - When scope display zooms out  
-- 										 `WeaponUnableSelect` - When the weapon change button is pressed but another weapon is not available  
-- 										 `WeaponModeUnableSelect` - When the weapon mode change button is pressed but another mode is not available  
-- 										 `SpawnDisplayUnitChange` - When unit is changed in spawn display  
-- 										 `SpawnDisplayUnitAccept` - When unit is selected in spawn display  
-- 										 `SpawnDisplaySpawnPointChange` - When spawn point is changed in spawn display  
-- 										 `SpawnDisplaySpawnPointAccept` - When spawn point is selected in spawn display  
-- 										 `SpawnDisplayBack` - When user presses the back button and returns from the map to the unit select screen in 
-- 										   the spawn display  
-- 										 `LockOn` - Played when player locks onto someone using the targetting display  
-- 										 `HeroesUnlocked` - When heroes are unlocked in multiplayer  
-- 										 `HeroSpawned` - When a player on Team `teamIndex` spawns in as the hero  
-- 										 `HeroDefeated` - When a player on Team `teamIndex` dies in as the hero
-- @param #string soundPropertyName		Name of a SoundProperty assigned to the event
-- @param #int teamIndex				Only required if `soundEventType` == `"HeroSpawned"` or `"HeroDefeated"`. Index of team that player is on
function SetSoundEffect(soundEventType, soundPropertyName, teamIndex) end

--------------------------------------------------------------
-- Sets the voice over for when the specified team has low reinforcements.
-- 
-- @param #int playerTeam				Player's team number
-- @param #int lowReinforcementTeam		Team which has low reinforcements
-- @param #string streamSoundName		Sound stream to play when the local player is `playerTeam` and `lowReinforcementTeam`'s reinforcements
-- 										 have dropped below `numReinforcements`
-- @param #int numReinforcements		Number of reinforcements which triggers the low reinforcement stream
-- @param #int isPercentage				Optional argument which when set to 1 treats `numReinforcements` as a fraction (`0.0..1.0`) of maximum reinforcements
function SetLowReinforcementsVoiceOver(playerTeam, lowReinforcementTeam, streamSoundName, numReinforcements, isPercentage) end

--------------------------------------------------------------
-- Sets the out-of-bounds voice over to play for the specified team.
-- 
-- @param #int playerTeam				Player's team number
-- @param #string streamSoundName		Name of the stream to play when the player goes out of bounds
function SetOutOfBoundsVoiceOver(playerTeam, streamSoundName) end

--------------------------------------------------------------
-- Sets the ambient music to play for players on the specified team.
-- 
-- @param #int playerTeam			Player's team number
-- @param #int reinforcementCount	Reinforcement count of the player's team which triggers the specified music
-- @param #string musicName			Name of the music configuration
-- @param #int gameStage			Value from 0 to 2, where 0 = beginning, 1 = middle, and 2 = end
-- @param #int isPercentage			Optional argument which when set to 1 treats reinforcementCount as a fraction (`0.0..1.0`) of maximum reinforcements
function SetAmbientMusic(playerTeam, reinforcementCount, musicName, gameStage, isPercentage) end

--------------------------------------------------------------
-- Sets which music and voice overs are heard when in two-player (only?) splitscreen.
-- 
-- @param #int teamIndex			Index of the attacking team
function SetAttackingTeam(teamIndex) end

--------------------------------------------------------------
-- Sets the music to play for players on the specified team when their team is victorious.
-- 
-- @param #int teamIndex			Index of player's team
-- @param #string soundStreamID		ID of sound stream properties to play
function SetVictoryMusic(teamIndex, soundStreamID) end

--------------------------------------------------------------
-- Sets the music to play for players on the specified team when their team is defeated.
-- 
-- @param #int teamIndex			Index of player's team
-- @param #string soundStreamID		ID of sound stream properties to play
function SetDefeatMusic(teamIndex, soundStreamID) end

--------------------------------------------------------------
-- Plays the specified sound stream segment.
-- 
-- @param #string streamFilename	File containing the audio stream
-- @param #string streamID			ID of sound stream properties containing `segmentID`
-- @param #string segmentID			ID of segment within the `streamID` to play
-- @param #float gain				Initial gain of the stream
-- @param #string busName			Bus stream is assigned to (default = "Root")
-- @param #int streamIndex			Index of the open stream to play, `streamFilename` can be "" if this is specified.  (NOTE : This is an optional argument)
-- @return #int						ID of the opened stream, `streamIndex` if it was specified or 0 if the function fails
function PlayAudioStream(streamFilename, streamID, segmentID, gain, busName, streamIndex) end

--------------------------------------------------------------
-- Plays the specified sound stream with the specified properties.
-- 
-- @param #string streamFilename	File containing the audio stream specified in the sound stream properties
-- @param #string soundStreamID		ID of the sound stream properties to play
-- @param #int noOpen				Set to 1 to play using a previously opened stream. (NOTE : This is an optional argument)
-- @return #int						ID of the opened stream (this may not be the stream that's playing)
function PlayAudioStreamUsingProperties(streamFilename, soundStreamID, noOpen) end

--------------------------------------------------------------
-- Stops and optionally closes the specified sound stream.
-- 
-- @param #int streamIndex			Index of the audio stream to stop
-- @param #int close				Optional argument.  Set to 1 to close the stream, 0 to leave the stream open
function StopAudioStream(streamIndex, close) end

--------------------------------------------------------------
-- Opens the specified sound stream.
-- 
-- @param #string streamFilename	File containing the audio stream
-- @param #string streamID			ID of stream within the file
-- @return #int						ID of the opened stream or 0 if the function fails
function OpenAudioStream(streamFilename, streamID) end

--------------------------------------------------------------
-- Appends the specified sound stream to another stream.  Just like how only one segment in an open audio stream can be 
--  played at a time, only one segment in a group of appended segments can be played at a time.  
--  
--  NOTE: This can ONLY be used with streams that are stored inside the same lvl file!
-- 
-- @param #string streamFilename	File containing the stream to append to the currently open stream
-- @param #string streamID			ID of the stream within the file
-- @param #string streamIndex		Number returned from `OpenAudioStream()` which is the index of the stream to append segments to
-- @return #int						ID of the opened stream or 0 if the function fails
function AudioStreamAppendSegments(streamFilename, streamID, streamIndex) end

--------------------------------------------------------------
-- Returns whether or not a sound stream is currently playing.
-- 
-- @param #string streamID		ID of the stream to query
-- @return #int					1 if the stream has stopped, 0 otherwise
function AudioStreamComplete(streamID) end

--------------------------------------------------------------
-- Plays the specified sound properties.
-- 
-- @param #string soundID		ID of sound properties to play
function ScriptCB_SndPlaySound(soundID) end

--------------------------------------------------------------
-- Fades the specified sound bus.
-- 
-- @param #string busName		Name of the bus to fade
-- @param #float endGain		Final gain of the bus
-- @param #float fadeTime		Time to fade the bus
-- @param #float startGain		Start gain of the bus (NOTE : this is an optional argument)
function ScriptCB_SndBusFade(busName, endGain, fadeTime, startGain) end

--------------------------------------------------------------
-- Scales the specified parameter for the specified sound group.
-- 
-- @param #string groupID		Identifies the group which contains sounds that are changed
-- @param #string parameter		Parameter to scale on each sound within the group.  Can be one of the following...  
-- 								 `Gain`  
-- 								 `GainDev`  
-- 								 `Pitch`  
-- 								 `PitchDev`  
-- 								 `PlayProbability`  
-- 								 `PlayInterval`  
-- 								 `PlayIntervalDev`  
-- 								 `ReverbGain`  
-- 								 `Pan`  
-- 								 `MinDistance`  
-- 								 `MuteDistance`  
-- 								 `MaxDistance`  
-- 								 `RollOff`  
-- 								 `RollIn`  
-- 								 `RollInDistance`
-- @param #float scale			Scale factor for the parameter
function ScaleSoundParameter(groupID, parameter, scale) end

--------------------------------------------------------------
-- Sets the bus that controls movie audio volume.
-- 
-- @param #string busID			ID of bus which controls the movie audio volume
function ScriptCB_SetMovieAudioBus(busID) end

--------------------------------------------------------------
-- Exaggerates or reduces doppler effects.
-- 
-- @param #float dopplerFactor		 Default value is 1.0.  To reduce doppler effects use values 
-- 									 less than 1.0, to exaggerate use values greater than 1.0
function ScriptCB_SetDopplerFactor(dopplerFactor) end

--------------------------------------------------------------
-- Plays the specified music.
-- 
-- @param #string musicID		ID of the music to play in game
function ScriptCB_PlayInGameMusic(musicID) end

--------------------------------------------------------------
-- Stops the music previously played using `ScriptCB_PlayInGameMusic()`.
function ScriptCB_StopInGameMusic() end

--------------------------------------------------------------
-- Enables or disables command post voice overs.
-- 
-- @param #int enabled			Set to 1 to enable command post VO, 0 to disable command post VO
function ScriptCB_EnableCommandPostVO(enabled) end

--------------------------------------------------------------
-- Enables or disables hero music.
-- 
-- @param #int enabled			Set to 1 to enable hero music, 0 to disable hero music
function ScriptCB_EnableHeroMusic(enabled) end

--------------------------------------------------------------
-- Enables or disables hero voice overs.
-- 
-- @param #int enabled			Set to 1 to enable hero voice overs, 0 to disable hero voice overs
function ScriptCB_EnableHeroVO(enabled) end

--------------------------------------------------------------
-- Sets the gain of the ingame bus when the spawn display is visible.
-- 
-- @param #float gain			0..1 - Gain of the ingame bus when the spawn display is visible (default = 0.2)
-- @param #float fadeTime		Time, in seconds, to fade the ingame bus (default = 3.0)
function ScriptCB_SetSpawnDisplayGain(gain, fadeTime) end

--------------------------------------------------------------
-- Enables or disables the specified trigger sound region.
-- 
-- @param #string groupName		Name of the trigger sound region group to enable/disable
-- @param #int enabled			1 to enable, 0 to disable.  (default = 1)
function ScriptCB_TriggerSoundRegionEnable(groupName, enabled) end

--------------------------------------------------------------
-- Returns the entity class of the specified class name.
-- 
-- @param #string entityClassName		Name of the entity class
-- @return								Entity class
function FindEntityClass(entityClassName) end

--------------------------------------------------------------
-- Sets the amount of extra(?) model memory to allocate for the map on the PS2.
-- 
-- @param #int bytes		Bytes to allocate
function SetPS2ModelMemory(bytes) end

--------------------------------------------------------------
-- For CollisionManager and TreeGrid sizes...  
-- 
-- `SetWorldExtents` and `ScriptPreInit` go hand in hand. When building a Space level, you may notice that when you exit 
--  your ship you instantly die. You also might find that running around certain parts of your ship you will die 
--  without taking damage. That�s what `SetWorldExtents` is for. If you have this set to 2500, but you�re still finding 
--  that the world is killing you (and you�re not walking into a death region) then bump it up to enlarge the soldier 
--  based playable space.
-- 
-- Might have to go in `ScriptPreInit`.
-- 
-- @param #int amount		New world extents in meters(?)
function SetWorldExtents(amount) end

--------------------------------------------------------------
-- Sets the amount of memory to take from the artist memory pools and reallocate. (Where to, though?)
-- 
-- @param #int bytes		Bytes to reallocate
function StealArtistHeap(bytes) end

--------------------------------------------------------------
-- Loads the specified lvl file. Sub-lvls contained in the lvl file can be loaded in subsequent arguments like so:  
--  `ReadDataFile("dc:SIDE\\rep.lvl", "rep_inf_ep3_trooper", "rep_inf_ep3_engineer", "rep_hero_anakin")`
--  
--  You can also load a sub-lvl with a semicolon in the `sourceFilename` argument like so:  
--  `ReadDataFile("dc:Sound\\abc.lvl;ABCg")`
-- 
-- @param #string sourceFilename		Path of the lvl file to load, a single sub-lvl can be loaded by appending a semicolon followed by the name of the sub-lvl to this
-- @param #string ...					Optional. Any additional sub-lvls to load
function ReadDataFile(sourceFilename, ...) end

--------------------------------------------------------------
-- Loads the specified lvl file during run-time (I think?). Sub-lvls contained in the lvl file can be loaded in subsequent arguments like so:  
--  `ReadDataFile("dc:SIDE\\rep.lvl", "rep_inf_ep3_trooper", "rep_inf_ep3_engineer", "rep_hero_anakin")`
--  
--  You can also load a sub-lvl with a semicolon in the `sourceFilename` argument like so:  
--  `ReadDataFile("dc:Sound\\abc.lvl;ABCg")`
-- 
-- @param #string sourceFilename		Path of the lvl file to load, a single sub-lvl can be loaded by appending a semicolon followed by the name of the sub-lvl
-- @param #string ...					Optional. Any additional sub-lvls to load
function ReadDataFileInGame(sourceFilename, ...) end

--------------------------------------------------------------
-- Sets the amount of memory to allocate to a temporary pool.  Used in galactic conquest. (What for specifically, though?)
-- 
-- @param #int bytes		Bytes to allocate
function SetupTempHeap(bytes) end

--------------------------------------------------------------
-- Clears the temporary memory pool created with `SetupTempHeap`.
function ClearTempHeap() end

--------------------------------------------------------------
-- Adds a shot to the map's set of camera shots.  These are the different camera angles that you cycle 
--  through while in spectator mode when there's no players to spectate.
--  Use the `DumpCamera` console command to print new ones to the debug log.
-- 
-- @param #float quatW		Quaternion's W value for camera rotation
-- @param #float quatX		Quaternion's X value for camera rotation
-- @param #float quatY		Quaternion's Y value for camera rotation
-- @param #float quatZ		Quaternion's Z value for camera rotation
-- @param #float posX		Value of camera's X position
-- @param #float posY		Value of camera's Y position
-- @param #float posZ		Value of camera's Z position
function AddCameraShot(quatW, quatX, quatY, quatZ, posX, posY, posZ) end

--------------------------------------------------------------
-- Sets the camera's rotation (in quaternions). Note that the camera is immediately reset if the player is controlling a 
--  Controllable entity.
-- 
-- @param #float quatW		Quaternion's W value for camera rotation
-- @param #float quatX		Quaternion's X value for camera rotation
-- @param #float quatY		Quaternion's Y value for camera rotation
-- @param #float quatZ		Quaternion's Z value for camera rotation
function SetCameraRotation(quatW, quatX, quatY, quatZ) end

--------------------------------------------------------------
-- Sets the camera's position. Note that the camera is immediately reset if the player is controlling a Controllable entity.
--  
-- @param #float posX		Value of camera's X position
-- @param #float posY		Value of camera's Y position
-- @param #float posZ		Value of camera's Z position
function SetCameraPosition(posX, posY, posZ) end

--------------------------------------------------------------
-- Moves the camera to the specified entity.  Used in galactic conquest.
--  
-- @param entity		Entity to move camera to
function MoveCameraToEntity(entity) end

--------------------------------------------------------------
-- Sets the map camera's position.  Used in galactic conquest.
--  
-- @param #int posX			X position
-- @param #int posY			Y position
-- @param #int posZ			Z position
function SetMapCameraPosition(posX, posY, posZ) end

--------------------------------------------------------------
-- Returns the map camera's position values.  Used in galactic conquest.
--  
-- @return #int				X position
-- @return #int				Y position
-- @return #int				Z position
function GetMapCameraPosition() end

--------------------------------------------------------------
-- Sets the map camera's position offset for the specified level of zoom.  Used in galactic conquest.
--  
-- @param #int zoom			Level of zoom for which to set camera offset (0 = wide, 1 = normal, 2 = focus)
-- @param #int posX			X position offset
-- @param #int posY			Y position offset
-- @param #int posZ			Z position offset
function SetMapCameraOffset(zoom, posX, posY, posZ) end

--------------------------------------------------------------
-- Sets the map camera's pitch for the specified level of zoom.  Used in galactic conquest.
--  
-- @param #int zoom			Level of zoom for which to set camera pitch
-- @param #float pitch		Amount to pitch camera by
function SetMapCameraPitch(zoom, pitch) end

--------------------------------------------------------------
-- Sets the map camera's zoom level.  Used in galactic conquest.
--  
-- @param #int zoom			Level of zoom (0 = wide, 1 = normal, 2 = focus)
-- @param #int dir			Optional argument. Direction of zoom (1 = zoom in, 0 = zoom out)
-- @param #float ratio		Optional argument. Ratio of the shortest and longest ranges of the zoom lens. For example, 
-- 							 an 18-55 mm lens has a ratio of 0.33, or about 1:3, while a 75-300 mm lens ratio is 0.25, 
-- 							 or 1:4. Note that the zoom ratios have no connection to field of view, but merely express 
-- 							 the range between short and long
function SetMapCameraZoom(zoom, dir, ratio) end

--------------------------------------------------------------
-- Returns the map camera's current zoom values.  Used in galactic conquest.
--  
-- @return #int				Level of zoom (0 = wide, 1 = normal, 2 = focus)
-- @return #int				Direction of zoom (1 = zoom in, 0 = zoom out)
-- @return #float			Ratio of the shortest and longest ranges of the zoom lens. For example, an 18-55 mm lens 
-- 							 has a ratio of 0.33, or about 1:3, while a 75-300 mm lens ratio is 0.25, or 1:4. Note 
-- 							 that the zoom ratios have no connection to field of view, but merely express the range 
-- 							 between short and long
function GetMapCameraZoom() end

--------------------------------------------------------------
-- Snaps the map camera in place.  Used in galactic conquest.
function SnapMapCamera() end

--------------------------------------------------------------
-- Restarts the shell.
-- 
-- @param #string state		Set to "State"
function SetState(state) end

--------------------------------------------------------------
-- Sets the mission as historical, might be related to Galactic Conquest?  Obsolete, used in SWBF1.
function SetHistorical() end

--------------------------------------------------------------
-- Sets the name of the specified team. The names "neutral", "neu", "alliance", "all", "empire", "imp", "republic", "rep", 
--  and "cis" map to pre-defined team identifiers; anything else maps to locals. (Yes, this is not very general.)
-- 
-- @param #int teamIndex		Index of team
-- @param #string key			Localization key (not the full path) of the team name, which must be located in the 
-- 								 scope `"level.ABC."` (replacing `ABC` with the map's ID)
function SetTeamName(teamIndex, key) end

--------------------------------------------------------------
-- Sets the aggressiveness of the AI on the specified team.
-- 
-- @param #int teamIndex			Index of team
-- @param #float aggressiveness		Aggressiveness value, higher means more aggressive (`0.0..1.0`)
function SetTeamAggressiveness(teamIndex, aggressiveness) end

--------------------------------------------------------------
-- Controls how far downwards from the center of the world the AI can fly.  These are used on ground based maps to limit 
--  the jet classes and jedi, but is also used to keep flyers from getting too far below the space battlefield. To find 
--  an appropriate height, use `PrintPlayerPos` in the console, fly to your desired min height, and punch those numbers 
--  in. It�s best to keep the MinFlyHeight and the MinPlayerFlyHeight in line with each other to avoid AI doing things 
--  that players can�t.
-- 
-- @param #int height			Height in meters(?)
function SetMinFlyHeight(height) end

--------------------------------------------------------------
-- Controls how far upwards from the center of the world the AI can fly.  These are used on ground based maps to limit 
--  the jet classes and jedi, but is also used to keep flyers from getting too far above the space battlefield. To find 
--  an appropriate height, use `PrintPlayerPos` in the console, fly to your desired max height, and punch those numbers 
--  in. It�s best to keep the MaxFlyHeight and the MaxPlayerFlyHeight in line with each other to avoid AI doing things 
--  that players can�t.
-- 
-- @param #int height			Height in meters(?)
function SetMaxFlyHeight(height) end

--------------------------------------------------------------
-- Controls how far downwards from the center of the world the player can fly.  These are used on ground based maps to 
--  limit the jet classes and jedi, but is also used to keep flyers from getting too far below the space battlefield. To 
--  find an appropriate height, use `PrintPlayerPos` in the console, fly to your desired min height, and punch those 
--  numbers in. It�s best to keep the MinFlyHeight and the MinPlayerFlyHeight in line with each other to avoid AI doing 
--  things that players can�t.
-- 
-- @param #int height			Height in meters(?)
function SetMinPlayerFlyHeight(height) end

--------------------------------------------------------------
-- Controls how far upwards from the center of the world the player can fly.  These are used on ground based maps to 
--  limit the jet classes and jedi, but is also used to keep flyers from getting too far above the space battlefield. To 
--  find an appropriate height, use `PrintPlayerPos` in the console, fly to your desired min height, and punch those 
--  numbers in. It�s best to keep the MaxFlyHeight and the MaxPlayerFlyHeight in line with each other to avoid AI doing 
--  things that players can�t.
-- 
-- @param #int height			Height in meters(?)
function SetMaxPlayerFlyHeight(height) end

--------------------------------------------------------------
-- Enables uber mode, which allows more than 32 units per team.
-- 
-- @param #int enabled			Set to 1 to enable, or 0 to disable
function SetUberMode(enabled) end

--------------------------------------------------------------
-- Exact functionality unknown, but likely allows AI units to jetjump at will instead of restricting them to JetJump hint nodes. Used in Kamino.
-- 
-- @param #int allow			Set to 1 to allow, or 0 to disallow (default = 1)
function SetAllowBlindJetJumps(allow) end

--------------------------------------------------------------
-- Unused, exact functionality unknown. Might be related to AI planning requests.
-- 
-- @param #float time			Wait time in seconds
function SetStationaryWaitTime(time) end

--------------------------------------------------------------
-- Sets the icon of the specified team to the specified texture. Not sure where exactly this is used.
-- 
-- @param #int teamnIndex		Index of team
-- @param #string icon			Name of icon texture
function SetTeamIcon(teamIndex, icon) end

--------------------------------------------------------------
-- Makes the specified `team` regard the `other` team as an enemy. It does not affect how the `other` team regards the specified `team`!
-- 
-- @param #int team			Index of team to set views of
-- @param #int other		Index of team that's being viewed as enemy
function SetTeamAsEnemy(team, other) end

--------------------------------------------------------------
-- Makes the specified `team` regard the `other` team as a neutral. It does not affect how the `other` team regards the specified `team`!
-- 
-- @param #int team			Index of team to set views of
-- @param #int other		Index of team that's being viewed as neutral
function SetTeamAsNeutral(team, other) end

--------------------------------------------------------------
-- Makes the specified `team` regard the `other` team as an ally. It does not affect how the `other` team regards the specified `team`!
-- 
-- @param #int team			Index of team to set views of
-- @param #int other		Index of team that's being viewed as ally
function SetTeamAsFriend(team, other) end

--------------------------------------------------------------
-- Sets the number of units the specified team has.
-- 
-- @param #int teamIndex			Index of team
-- @param #int count				Number of units
function SetUnitCount(teamIndex, count) end

--------------------------------------------------------------
-- Returns the number of units the specified team has.
-- 
-- @param #int teamIndex			Index of team
-- @return #int						Team's unit count
function GetUnitCount(teamIndex) end

--------------------------------------------------------------
-- Sets the specified team's ticket count.
-- 
-- @param #int teamIndex		Index of team
-- @param #int tickets			Number of tickets to set to
function SetReinforcementCount(teamIndex, tickets) end

--------------------------------------------------------------
-- Returns the specified team's current ticket count.
-- 
-- @param #int teamIndex		Index of team
-- @return #int					Number of tickets
function GetReinforcementCount(teamIndex) end

--------------------------------------------------------------
-- Adds the specified number of tickets to the specified team's ticket count.
-- 
-- @param #int teamIndex		Index of team
-- @param #int tickets			Number of tickets to add, use negative value to subtract tickets
function AddReinforcements(teamIndex, tickets) end

--------------------------------------------------------------
-- Sets the specified team's point count.
-- 
-- @param #int teamIndex		Index of team
-- @param #int points			Number of points to set to
function SetTeamPoints(teamIndex, points) end

--------------------------------------------------------------
-- Returns the specified team's current point count.
-- 
-- @param #int teamIndex		Index of team
-- @return #int					Number of points
function GetTeamPoints(teamIndex) end

--------------------------------------------------------------
-- Adds the specified number of points to the specified team's point count.
-- 
-- @param #int teamIndex		Index of team
-- @param #int points			Number of points to add, use negative value to subtract points
function AddTeamPoints(teamIndex, points) end

--------------------------------------------------------------
-- Gives the specified character unit flag capture points.
-- 
-- @param #int integerChrIdx	Integer index of character unit
function AddFlagCapturePoints(integerChrIdx) end

--------------------------------------------------------------
-- Gives the specified character unit assault destroy points.
-- 
-- @param #int integerChrIdx	Integer index of character unit
function AddAssaultDestroyPoints(integerChrIdx) end

--------------------------------------------------------------
-- Gives the specified character unit space assault destroy points for the specified object.
-- 
-- @param #int integerChrIdx	Integer index of character unit
-- @param #string object		ID of object
function AddSpaceAssaultDestroyPoints(integerChrIdx, object) end

--------------------------------------------------------------
-- Returns the faction ID of the specified team.  Not sure what this is used for.
-- 
-- @param #int teamIndex		Index of team
-- @return #string				Team's faction ID
function GetTeamFactionId(teamIndex) end

--------------------------------------------------------------
-- Adds the specified unit class to the specified team.
-- 
-- @param #int teamIndex		Index of team
-- @param #string unitClass		Name of unit class (example: `"imp_inf_trooper"`)
-- @param #int minUnits			Minimum number of AI units that can spawn as this class
-- @param #int maxUnits			Optional argument. Maximum number of AI units that can spawn as this class. If the unit class has 
-- 								 a `PointsToUnlock` value specified in its ODF, this argument acts as the maximum number of AI and 
-- 								 player units that can spawn as this class.
function AddUnitClass(teamIndex, unitClass, minUnits, maxUnits) end

-- Hero

--------------------------------------------------------------
-- Sets the hero class for the specified team.
-- 
-- @param #int teamIndex		Index of team
-- @param #string heroClass		Name of hero class (example: `"imp_hero_vader"`)
function SetHeroClass(teamIndex, heroClass) end

--------------------------------------------------------------
-- Turns on the hero rules for the game.  This should be present in every multiplayer script, unless you do not actually want heroes 
--  in your map.  Simply omit this line, and you will never get heroes in your game.
function EnableSPHeroRules() end

--------------------------------------------------------------
-- Turns on the campaign hero rules for the game.  This should be present in every campaign script for missions that include heroes.
function EnableSPScriptedHeroes() end

--------------------------------------------------------------
-- Unused. Sets the rule by which the hero is unlocked.
-- 
-- @param #string rule			Unlock rule to use, possible options are unknown
function SetHeroUnlockRule(rule) end

--------------------------------------------------------------
-- Unused. Sets the hero player rule (whatever that means).
-- 
-- @param #string rule			Team rule to use, possible options are unknown
function SetHeroTeamRule(rule) end

--------------------------------------------------------------
-- Unused. Sets the hero player rule (whatever that means).
-- 
-- @param #string rule			Player rule to use, possible options are unknown
function SetHeroPlayerRule(rule) end

--------------------------------------------------------------
-- Unused. Sets the rule by which the hero respawns.
-- 
-- @param #string rule			Respawn rule to use, possible options are unknown
function SetHeroRespawnRule(rule) end

--------------------------------------------------------------
-- Unlocks the hero for the specified team.
-- 
-- @param #int teamIndex		Index of team
function UnlockHeroForTeam(teamIndex) end

--------------------------------------------------------------
-- Forces the specified character unit to accept the unlocked hero, automatically bringing them to the spawn screen.
-- 
-- @param #int integerChrIdx		Character unit index returned by GetCharacterUnit
function AcceptHero(integerChrIdx) end

--------------------------------------------------------------
-- Shows all units on the minimap if enabled.
-- 
-- @param #int enabled			Set to 1 to show all units, or 0 to put back to normal
function ShowAllUnitsOnMinimap(enabled) end

--------------------------------------------------------------
-- Shows or hides the CTF points for the specified team.
-- 
-- @param #int teamIndex		Index of team
-- @param #int enabled			Set to 1 to show points, or 0 to hide
function ShowTeamPoints(teamIndex, enabled) end

--------------------------------------------------------------
-- Activates a bonus for the specified team.
-- 
-- @param #int teamIndex		Index of team to activate bonus for
-- @param #string bonus			Bonus to activate. Allowed values:  
-- 								 `MEDICAL_SUPPLIES`  
-- 								 `SURPLUS_SUPPLIES`  
-- 								 `SENSOR_BOOST`  
-- 								 `HERO`  
-- 								 `RESERVES`  
-- 								 `SABOTAGE`  
-- 								 `SNEAK_ATTACK`  
-- 								 `TRAINING`
function ActivateBonus(teamIndex, bonus) end

--------------------------------------------------------------
-- Sets the specified team's ticket bleed rate.
-- 
-- @param #int teamIndex		Index of team
-- @param #float rate			Bleed rate to set to
function SetBleedRate(teamIndex, rate) end

--------------------------------------------------------------
-- Returns the specified team's current ticket bleed rate.
-- 
-- @param #int teamIndex		Index of team
-- @return #float				Team's bleed rate
function GetBleedRate(teamIndex) end

--------------------------------------------------------------
-- Obsolete, from SWBF1. Sets the carrier class for the specified team.
-- 
-- @param #int teamIndex		Index of team
-- @param #string class			Name of carrier class (example: `"rep_fly_vtrans"`)
function SetCarrierClass(teamIndex, class) end

--------------------------------------------------------------
-- Specifies an initial spawn delay.  All levels use this call. You should never have to modify the values.
-- 
-- @param #float num1			Unknown, always set to `10.0`
-- @param #float num2			Unknown, always set to `0.25`
function SetSpawnDelay(num1, num2) end

--------------------------------------------------------------
-- Specifies an initial spawn delay for the specified team.  All levels use this call. You should never have to modify the values.
-- 
-- @param #float num1			Unknown, always set to `10.0`
-- @param #float num2			Unknown, always set to `0.25`
-- @param #int teamIndex		Index of team
function SetSpawnDelayTeam(num1, num2, teamIndex) end

--------------------------------------------------------------
-- Sets a switch in the code that controls a number of AI behaviors.  If this were a very foggy map, with a short view distance, 
--  you would set this to "true" which would make the AI see a shorter distance, and other various things to make the AI act 
--  more appropriately in an environment with limited visibility.  
--  
--  Synonymous with `SetUrbanEnvironment()`.
-- 
-- @param #string enabled		Set to "true" to enable, or "false" to disable
function SetDenseEnvironment(enabled) end

--------------------------------------------------------------
-- Sets the distance from which AI scout units can snipe when using 'attack' snipe hint nodes.
-- 
-- @param #int distance			Average distance in meters from which AI can snipe
function SetAttackerSnipeRange(distance) end

--------------------------------------------------------------
-- Sets the distance from which AI scout units can snipe when using 'defend' snipe hint nodes.
-- 
-- @param #int distance			Average distance in meters from which AI can snipe
function SetDefenderSnipeRange(distance) end

--------------------------------------------------------------
-- Makes AI units stay in turrets, but under what conditions, no one knows... Found on Endor.
-- 
-- @param #int enabled			Set to 1 to enable, or 0 to disable
function SetStayInTurrets(enabled) end

--------------------------------------------------------------
-- Sets the maximum collision distance for asteroids. What this does exactly is unclear.
-- 
-- @param #int distance			Maximum collision distance (likely in meters)
function SetMaxCollisionDistance(distance) end

--------------------------------------------------------------
-- Sets the particle LOD bias (probably correlates to particle view distance). Needed for particles in space 
--  to work properly, don�t delete it!
-- 
-- @param #int bias				LOD bias value, is set to `15000` in stock space maps
function SetParticleLODBias(bias) end

--------------------------------------------------------------
-- Sets the size of the specified memory pool.
-- 
-- @param #string memoryPool	Memory pool to set size of. Possible values:  
-- 								 `AcklayData`  
-- 								 `ActiveRegion`  
-- 								 `Aimer`  
-- 								 `AmmoCounter`  
-- 								 `Asteroid`  
-- 								 `BaseHint`  
-- 								 `ClothData` - need 1 per cloth object in the level  
-- 								 `Combo` - should be ~ 2x number of jedi classes  
-- 								 `Combo::Attack` - should be ~8-12x #Combo  
-- 								 `Combo::Condition` - should be a bit bigger than #Combo::State  
-- 								 `Combo::DamageSample` - should be ~8-12x #Combo::Attack  
-- 								 `Combo::Deflect` - should be ~1x #combo  
-- 								 `Combo::State` - should be ~12x #Combo  
-- 								 `Combo::Transition` - should be a bit bigger than #Combo::State  
-- 								 `CommandFlyer`  
-- 								 `CommandHover`  
-- 								 `CommandWalker`  
-- 								 `ConnectivityGraphFollower`  
-- 								 `EnergyBar`  
-- 								 `EntityBuildingArmedDynamic`  
-- 								 `EntityCarrier`  
-- 								 `EntityCloth`  
-- 								 `EntityDefenseGridTurret`  
-- 								 `EntityDroid`  
-- 								 `EntityDroideka`  
-- 								 `EntityFlyer` - need 1 per flyer in the level  
-- 								 `EntityHover`  
-- 								 `EntityLight`  
-- 								 `EntityMine`  
-- 								 `EntityPortableTurret`  
-- 								 `EntityRemoteTerminal`  
-- 								 `EntitySoldier`  
-- 								 `EntitySoundStatic`   
-- 								 `EntitySoundStream`  
-- 								 `EntityTauntaun` - need 1 per tauntaun in the level  
-- 								 `EntityWalker` - need 1 per walker in the level  
-- 								 `FlagItem` - need 1 per flag in the level  
-- 								 `FLEffectObject::OffsetMatrix`  
-- 								 `LightFlash`  
-- 								 `MountedTurret`  
-- 								 `Music`  
-- 								 `Navigator`  
-- 								 `Obstacle`  
-- 								 `Ordnance`  
-- 								 `OrdnanceTowCable`  
-- 								 `ParticleEmitter`  
-- 								 `ParticleEmitterInfoData`  
-- 								 `ParticleEmitterObject`  
-- 								 `ParticleTransformer::ColorTrans` - must go before the stock `ingame.lvl` is loaded  
-- 								 `ParticleTransformer::PositionTr` - must go before the stock `ingame.lvl` is loaded  
-- 								 `ParticleTransformer::SizeTransf` - must go before the stock `ingame.lvl` is loaded  
-- 								 `PassengerSlot`  
-- 								 `PathFollower`  
-- 								 `PathNode`  
-- 								 `PathRequest`  
-- 								 `PowerupItem`  
-- 								 `RedOmniLight`  
-- 								 `ShieldEffect`  
-- 								 `SoldierAnimation`  
-- 								 `SoundSpaceRegion`  
-- 								 `TentacleSimulator`  
-- 								 `Timer`  
-- 								 `TreeGridStack`  
-- 								 `UnitAgent`  
-- 								 `UnitController`  
-- 								 `Weapon`  
-- @param #int size				Size of memory pool
function SetMemoryPoolSize(memoryPool, size) end

--------------------------------------------------------------
-- Sets how many types of birds there are in the level.
-- 
-- @param #int types			Number of bird types
function SetNumBirdTypes(types) end

--------------------------------------------------------------
-- Declares a new bird type.
-- 
-- @param #int disable			Exact functionality unknown, seems to disable birds of this type when set to 1 
-- @param #float size			Size of birds of this type
-- @param #string texture		Name of bird texture
function SetBirdType(disable, size, texture) end

--------------------------------------------------------------
-- Sets the lowest height at which flocks of birds can fly.
-- 
-- @param #int height			Minimum flying height
function SetBirdFlockMinHeight(height) end

--------------------------------------------------------------
-- Sets how many types of fish there are in the level.
-- 
-- @param #int types			Number of fish types
function SetNumFishTypes(types) end

--------------------------------------------------------------
-- Declares a new fish type.
-- 
-- @param #int disable			Exact functionality unknown, seems to disable fish of this type when set to 1
-- @param #float size			Size of fish of this type
-- @param #string texture		Name of fish texture
function SetFishType(disable, size, texture) end

--------------------------------------------------------------
-- Fills the specified region with asteroids.  Each asteroid will move in the X, Y, and Z directions at a random velocity within the range 
--  of each `minSpeed` and `maxSpeed` argument. Asteroid velocity is probably measured in meters per second. This randomized velocity is 
--  different for each asteroid.  
--  
--  NOTE: Asteroids won't appear unless the "Asteroid" memory pool is filled >= the total number of asteroids that 
--  are in the level!
-- 
-- @param #string region			ID of region class
-- @param #string class				Name of asteroid class (example: `"spa1_prop_asteroid_03"`)
-- @param #int count				Number of asteroids to fill the region with
-- @param #float maxSpeedX			Maximum asteroid drift speed in X direction (default = 0)
-- @param #float maxSpeedY			Maximum asteroid drift speed in Y direction (default = 0)
-- @param #float maxSpeedZ			Maximum asteroid drift speed in Z direction (default = 0)
-- @param #float minSpeedX			Minimum asteroid drift speed in X direction (default = 0)
-- @param #float minSpeedY			Minimum asteroid drift speed in Y direction (default = 0)
-- @param #float minSpeedZ			Minimum asteroid drift speed in Z direction (default = 0)
function FillAsteroidRegion(region, class, count, maxSpeedX, maxSpeedY, maxSpeedZ, minSpeedX, minSpeedY, minSpeedZ) end

--------------------------------------------------------------
-- Fills the specified path with asteroids.  The distribution of the asteroids along the path's spline is more-or-less even. However, the 
--  position of each asteroid is also offset in a random direction. The distance of this offset is a random value between 0 and `maxOffset`. 
--  This randomized offset is different for each asteroid.  
-- 
--  Each asteroid will move in the X, Y, and Z directions at a random velocity within the range of each `minSpeed` and `maxSpeed` 
--  argument. Asteroid velocity is probably measured in meters per second. This randomized velocity is different for each asteroid.  
--  
--  NOTE: Asteroids won't appear unless the "Asteroid" memory pool is filled >= the total number of asteroids that 
--  are in the level!
-- 
-- @param #string path				ID of path
-- @param #float maxOffset			Maximum distance (probably in meters) to offset each asteroid's position by (default = 0)
-- @param #string class				Name of asteroid class (example: `"spa1_prop_asteroid_03"`)
-- @param #int count				Number of asteroids to fill the path with
-- @param #float maxSpeedX			Maximum asteroid drift speed in X direction (default = 0)
-- @param #float maxSpeedY			Maximum asteroid drift speed in Y direction (default = 0)
-- @param #float maxSpeedZ			Maximum asteroid drift speed in Z direction (default = 0)
-- @param #float minSpeedX			Minimum asteroid drift speed in X direction (default = 0)
-- @param #float minSpeedY			Minimum asteroid drift speed in Y direction (default = 0)
-- @param #float minSpeedZ			Minimum asteroid drift speed in Z direction (default = 0)
function FillAsteroidPath(path, maxOffset, class, count, maxSpeedX, maxSpeedY, maxSpeedZ, minSpeedX, minSpeedY, minSpeedZ) end

--------------------------------------------------------------
-- Registers the specified region class as a death region. Entities that enter this region will be immediately killed.
-- 
-- @param #string regionClass		ID of region class
function AddDeathRegion(regionClass) end

--------------------------------------------------------------
-- Registers the specified region class as a landing region. Flyers will be able to land when inside of this region.
-- 
-- @param #string regionClass		ID of region class
function AddLandingRegion(regionClass) end

--------------------------------------------------------------
-- Removes the specified region class. Death regions and landing regions removed by RemoveRegion can be re-added 
--  with AddDeathRegion or AddLandingRegion.
-- 
-- @param #string regionClass		ID of region class
function RemoveRegion(regionClass) end

--------------------------------------------------------------
-- Returns whether or not the specified character is in the specified region.
-- 
-- @param #int integerChrIdx		Integer index of character
-- @param #string region			ID of region class
-- @return #int						1 if character is in region, 0 if not
function IsCharacterInRegion(integerChrIdx, region) end

--------------------------------------------------------------
-- Returns the name of the specified region class.
-- 
-- @param #string region		ID of region class
-- @return #string				Name of region
function GetRegionName(region) end

--------------------------------------------------------------
-- Returns the class of the specified region.
-- 
-- @param #string region		Name of region
-- @return #string				ID of region class
function GetRegion(region) end

--------------------------------------------------------------
-- Wipes out any allocations that may have been done automatically for walkers.  You�ll need to have this line in, 
--  and uncommented if you want to have walkers in your level.
function ClearWalkers() end

--------------------------------------------------------------
-- Adds walkers to your level.  
-- 
--  The first number inside the parenthesis (numPairs) specifies how many leg pairs the walker type has. 
--  Droidekas are set up as a special case, with 0 leg pairs. So as you can see below, we have AddWalkerType(0,4), this 
--  specifies that we will have 4 walkers with 0 leg pairs (droidekas). 1 leg pair would specify a walker with one pair 
--  of legs, an ATST for example, or a one-man ATST from the Clone Wars era. So for 2 ATSTs, we would have a line that 
--  says AddWalkerType(1, 2). 2 leg pairs would be a unit like the CIS spider walker, or an ATAT, and 3 leg pairs would 
--  be the 6-legged walker from the Clone Wars era.  
--  
--  **Examples:**  
--  
--  `AddWalkerType(0, 4) -- special -> droidekas, 0x4 (4 droidekas)`  
--  `AddWalkerType(1, 2) -- 1x2 (2 walkers with 1 pair of legs)`  
--  `AddWalkerType(2, 4) -- 2x4 (4 walkers with 2 pairs of legs)`  
--  `AddWalkerType(3, 1) -- 3x1 (1 walker with 3 pairs of legs)`
-- 
-- @param #int numPairs		How many leg pairs the walker type has
-- @param #int count		Max number of walkers of this type that can exist simultaneously in the level
function AddWalkerType(numPairs, count) end

--------------------------------------------------------------
-- Sets the distance around a waiting vehicle from which AI can be lured in.
-- 
-- @param #int radius		Notify radius in meters (probably)
function SetAIVehicleNotifyRadius(radius) end

--------------------------------------------------------------
-- Sets the overall view distance for AI.
-- 
-- @param #float visibility		Multiplier for how far AI can see
function SetAIViewMultiplier(visibility) end

--------------------------------------------------------------
-- Sets the distance from which AI scout units can snipe.
-- 
-- @param #int distance			Average distance in meters from which AI can snipe
function AISnipeSuitabilityDist(distance) end

--------------------------------------------------------------
-- When enabled, makes it so AI flyers are spatially aware of the ground, thus reducing/eliminating the chances of them crashing into it.
-- 
-- @param #int enabled			Set to 1 to enable, set to 0 to disable (default = 0)
function SetGroundFlyerMap(enabled) end

--------------------------------------------------------------
-- Turns on AutoBalancing.  This will work for Conquest/Assault/CTF games. Not campaign. Basically 
--  if the score gets too far in one teams favor (+/- 40 conquest, 60 assault, 1 ctf) it will make 
--  the losing team better and the winning team worse until things get back to close again.
function EnableAIAutoBalance() end

--------------------------------------------------------------
-- Turns off AutoBalancing.  It is on by default so you should use this for your campaign mode scripts.
function DisableAIAutoBalance() end

--------------------------------------------------------------
-- Sets the current difficulty modifier.  This can be called from any point within a mission. So if you 
--  want the bad guys to be more difficult on just one objective, call this with say (0,2) in the OnStart 
--  function, then call it again with (0,0) to reset it in the OnComplete function.
-- 
-- @param #int player			Modifier for player team, positive value = team is better, negative value = team is worse (default = 0)
-- @param #int enemy			Modifier for enemy team, positive value = team is better, negative value = team is worse (default = 0)
-- @param #string difficulty	Optional argument. Sets the player and enemy difficulty only for this profile difficulty mode ("easy", "medium", or "hard")
function SetAIDifficulty(player, enemy, difficulty) end

--------------------------------------------------------------
-- Notifies the C++ code that the specified objective (uniquely identified in `text` parameter) exists for the specified team.  
--  Optionally specifies the text to show in a popup once the objective is activated.
-- 
-- @param #int teamIndex		Index of team to add the objective to
-- @param #string text			Path to localized text to display in the objective list once the objective is activated 
-- 								 (example: `"level.ABC.objectives.1"`)
-- @param #string popupText		Optional argument. Path to localized text to display in a popup once the objective is 
-- 								 activated (example: `"level.ABC.objectives.1_popup"`)
function AddMissionObjective(teamIndex, text, popupText) end

--------------------------------------------------------------
-- Tells the C++ code to activate the specified objective.
-- 
-- @param #string text			Path to localized text of the objective to activate (example: `"level.ABC.objectives.1"`)
function ActivateObjective(text) end

--------------------------------------------------------------
-- Tells the C++ code to complete the specified objective.
-- 
-- @param #string text			Path to localized text of the objective to complete (example: `"level.ABC.objectives.1"`)
function CompleteObjective(text) end

--------------------------------------------------------------
-- Adds the specified hint to the list of hints for the level.
-- 
-- @param #string hintText		Path to localized text of the hint (example: `"level.ABC.hints.1"`)
function AddMissionHint(hintText) end

--------------------------------------------------------------
-- Sets the flag gameplay type for the level.
-- 
-- @param #string type			Flag gameplay type. Possible values:  
-- 								 `none`  
-- 								 `1flag`  
-- 								 `2flag`  
-- 								 `campaign`
function SetFlagGameplayType(type) end

-- Space Assault

--------------------------------------------------------------
-- Notifies C++ that we're running space assault now so it can do team scoring with critical systems and whatnot.
-- 
-- @param #bool enabled			Set to true to enable, or false to disable (default = false)
function SpaceAssaultEnable(enabled) end

--------------------------------------------------------------
-- Adds a critical system to be destroyed in space assault.
-- 
-- @param #string name				Name of the object in the level
-- @param #int pointValue			How many points the object is worth when it's destroyed
-- @param #float hudPosX			X coordinate for placing the hud health indicator for the critical system (`0.0..1.0`)
-- @param #float hudPosY			Y coordinate for placing the hud health indicator for the critical system (`0.0..1.0`)
-- @param #bool displayHUDMarker	Optional argument. Set to true to display the HUD marker, or false to not display it (default = true)
function SpaceAssaultAddCriticalSystem(name, pointValue, hudPosX, hudPosY, displayHUDMarker) end

--------------------------------------------------------------
-- Links together all of the critical system objects (the names of which are stored in the specified table) as one marker in space assault.
-- 
-- @param #table objects	Table containing the names of critical system objects to link together
function SpaceAssaultLinkCriticalSystems(objects) end

--------------------------------------------------------------
-- Unused. Exact functionality unknown.
-- 
-- @param unknown			Unknown argument
function SpaceAssaultSetupTeamNumbers(unknown) end

--------------------------------------------------------------
-- Sets up the HUD bitmaps for each team's capital ship, systems, etc.
-- 
-- @param #string shipBitmapATT			Name of texture to use for ATT team's ship
-- @param #string shipBitmapDEF			Name of texture to use for DEF team's ship
-- @param #string shieldBitmapATT		Name of texture to use for ATT team's shields
-- @param #string shieldBitmapDEF		Name of texture to use for DEF team's shields
-- @param #string critSysBitmapATT		Name of texture to use for each of ATT team's critical systems
-- @param #string critSysBitmapDEF		Name of texture to use for each of DEF team's critical systems
function SpaceAssaultSetupBitmaps(shipBitmapATT, shipBitmapDEF, shieldBitmapATT, shieldBitmapDEF, critSysBitmapATT, critSysBitmapDEF) end

--------------------------------------------------------------
-- Returns the score limit for space assault.
-- 
-- @return #int 		Score limit that each team must reach to win
function SpaceAssaultGetScoreLimit() end

--------------------------------------------------------------
-- Returns whether or not the current mission is a multiplayer match.
-- 
-- @return #int			1 if multiplayer match, 0 if not
function ScriptCB_InMultiplayer() end

--------------------------------------------------------------
-- Returns whether or not the current mission is using campaign rules.
-- 
-- @return #int			1 if using campaign rules, 0 if using non-campaign rules
function IsCampaign() end

--------------------------------------------------------------
-- Returns the name of the first wld file that was loaded in the map.  For example, if the stock hot1.lvl 
--  file is loaded, this function will return *hoth*, since the wld file in hot1 is called *hoth.wld*.
-- 
-- @return #string		Name of the first-loaded wld file
function GetWorldFilename() end

-- Messages

--------------------------------------------------------------
-- Prints the specified localized key in the message box in the player's HUD.  For example, printing the key 
--  "level.cor1.objectives.campaign.1" would print "Capture the Jedi Council Chamber".
-- 
-- @param #string keyPath		Full path of localized key to show (example: "level.cor1.objectives.campaign.1")
-- @param #int teamIndex		Optional argument. Index of team to show message to if specified, or shows to players on both teams if unspecified
function ShowMessageText(keyPath, teamIndex) end

--------------------------------------------------------------
-- DEPRECATED, DOESN'T WORK.
-- 
-- @param #string keyPath		Full path of localized key to show (example: "level.cor1.objectives.campaign.1")
function ShowPopup(keyPath) end

--------------------------------------------------------------
-- DEPRECATED, DOESN'T WORK.
-- 
-- @param #string keyPath		Full path of localized key to show (example: "level.cor1.objectives.campaign.1")
function ShowObjectiveTextPopup(keyPath) end

--------------------------------------------------------------
-- Shows or hides the specified Timer.
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer to show. Set to nil (or leave blank) to hide all Timers
function ShowTimer(timer) end

--------------------------------------------------------------
-- Shows the specified localized text in a selection popup. Used in spa2c_c for choosing control layout making but not for PC?!
-- 
-- @param #string text		Path to localized text to show (example: `"level.spa2.objectives.popup.selectConfig"`)
function ShowSelectionTextPopup(text) end

--------------------------------------------------------------
-- Plays the specified sound stream for all players, or optionally only for players on the specified team.
-- 
-- @param #string streamID		ID of sound stream properties to play
-- @param #int teamIndex		Optional argument.  If set, plays the sound stream properties only for players on this team
function BroadcastVoiceOver(streamID, teamIndex) end

--------------------------------------------------------------
-- Kills the player of the specified HUD viewport.
-- 
-- @param viewport		Viewport of the player to kill
function ScriptCB_PlayerSuicide(viewport) end

-- Markers

--------------------------------------------------------------
-- Attaches a map marker to the specified region class.
-- 
-- @param #string region		ID of region class to attach marker to
-- @param #string markerClass	Name of marker icon texture to use (the only value that seems to work is `"hud_objective_icon_circle"`)
-- @param #float size			Icon size multiplier
-- @param #int teamIndex		Index of team that should be able to see the marker
-- @param #string color			Icon color. Possible values:  
-- 								 `RED`  
-- 								 `GREEN`  
-- 								 `BLUE`  
-- 								 `CYAN`  
-- 								 `MAGENTA`  
-- 								 `YELLOW`  
-- 								 `ORANGE`  
-- 								 `WHITE`  
-- 								 `BLACK`  
-- @param #bool showOnHUD		Optional argument. Set to true to also show the marker on the player's HUD, or false to only show it on the map. NOTE: Doesn't seem to 
-- 								 work with this particular marker function (default = true)
-- @param #bool pulseOpacity	Optional argument. Set to true to linearly interpolate marker opacity from `(alpha*1.0)` to `(alpha*0.0)` 
-- 								 once per second, or false to keep opacity static (default = true)
-- @param #bool pulseSize		Optional argument. Set to true to linearly interpolate marker size from `(size*0.5)` to `(size*1.5)` once 
-- 								 per second, or false to keep size static (default = true)
function MapAddRegionMarker(region, markerClass, size, teamIndex, color, showOnHUD, pulseOpacity, pulseSize) end

--------------------------------------------------------------
-- Removes any map markers attached to the specified region class.
-- 
-- @param #string region		ID of region class to remove markers from
function MapRemoveRegionMarker(region) end

--------------------------------------------------------------
-- Attaches a map marker to the specified entity.
-- 
-- @param #string entity		ID of entity to attach marker to
-- @param #string markerClass	Name of marker icon texture to use (the only value that seems to work is `"hud_objective_icon_circle"`)
-- @param #float size			Icon size multiplier
-- @param #int teamIndex		Index of team that should be able to see the marker
-- @param #string color			Icon color. Possible values:  
-- 								 `RED`  
-- 								 `GREEN`  
-- 								 `BLUE`  
-- 								 `CYAN`  
-- 								 `MAGENTA`  
-- 								 `YELLOW`  
-- 								 `ORANGE`  
-- 								 `WHITE`  
-- 								 `BLACK`  
-- @param #bool showOnHUD		Optional argument. Set to true to also show the marker on the player's HUD, or false to only show it on the map (default = true)
-- @param #bool pulseOpacity	Optional argument. Set to true to linearly interpolate marker opacity from `(alpha*1.0)` to `(alpha*0.0)` 
-- 								 once per second, or false to keep opacity static (default = true)
-- @param #bool pulseSize		Optional argument. Set to true to linearly interpolate marker size from `(size*0.5)` to `(size*1.5)` once 
-- 								 per second, or false to keep size static (default = true)
function MapAddEntityMarker(entity, markerClass, size, teamIndex, color, showOnHUD, pulseOpacity, pulseSize) end

--------------------------------------------------------------
-- Removes any map markers attached to the specified entity.
-- 
-- @param #string entity		ID of entity to remove markers from
function MapRemoveEntityMarker(entity) end

--------------------------------------------------------------
-- Attaches a map marker to all instances of the specified entity class.
-- 
-- @param #string class			Name of entity class to attach markers to (example: `"imp_inf_trooper"`)
-- @param #string markerClass	Name of marker icon texture to use (the only value that seems to work is `"hud_objective_icon"`)
-- @param #float size			Icon size multiplier
-- @param #int teamIndex		Index of team that should be able to see the marker
-- @param #string color			Icon color. Possible values:  
-- 								 `RED`  
-- 								 `GREEN`  
-- 								 `BLUE`  
-- 								 `CYAN`  
-- 								 `MAGENTA`  
-- 								 `YELLOW`  
-- 								 `ORANGE`  
-- 								 `WHITE`  
-- 								 `BLACK`  
-- @param #bool showOnHUD		Optional argument. Set to true to also show the marker on the player's HUD, or false to only show it on the map (default = true)
-- @param #bool pulseOpacity	Optional argument. Set to true to linearly interpolate marker opacity from `(alpha*1.0)` to `(alpha*0.0)` 
-- 								 once per second, or false to keep opacity static (default = true)
-- @param #bool pulseSize		Optional argument. Set to true to linearly interpolate marker size from `(size*0.5)` to `(size*1.5)` once 
-- 								 per second, or false to keep size static (default = true)
function MapAddClassMarker(class, markerClass, size, teamIndex, color, showOnHUD, pulseOpacity, pulseSize) end

--------------------------------------------------------------
-- Removes any map markers attached to the specified entity class.
-- 
-- @param #string class			Name of entity class to remove markers from
function MapRemoveClassMarker(class) end

--------------------------------------------------------------
-- Hides all command post markers from the minimap and radar.
function MapHideCommandPosts() end

--------------------------------------------------------------
-- Sets whether or not the specified object can be locked onto by weapons.
-- 
-- @param #string objectName	ID of object
-- @param #int enabled			Set to 1 to enable locking on, or 0 to disable
function EnableBuildingLockOn(objectName, enabled) end

-- Timer

--------------------------------------------------------------
-- Checks whether or not a timer exists.
-- 
-- @param #string timer		ID (or handler returned from `CreateTimer`) of the timer to find
function FindTimer(timer) end

--------------------------------------------------------------
-- Creates a new Timer with the specified name and returns it.
-- 
-- @param #string name		Name to give the Timer
-- @return					Timer's handler
function CreateTimer(name) end

--------------------------------------------------------------
-- Deletes the specified Timer. Do not use the timer after destroying it!
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer
function DestroyTimer(timer) end

--------------------------------------------------------------
-- Activates the specified Timer.
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer
function StartTimer(timer) end

--------------------------------------------------------------
-- Deactivates the specified Timer.
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer
function StopTimer(timer) end

--------------------------------------------------------------
-- Sets the value of the specified Timer.
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer
-- @param #float value		Timer's duration in seconds
function SetTimerValue(timer, value) end

--------------------------------------------------------------
-- Returns the value of the specified Timer.
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer
-- @return #float			The Timer's value
function GetTimerValue(timer) end

--------------------------------------------------------------
-- Sets the rate of the specified Timer.
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer
-- @param #float rate		Multiplier for Timer's elapse speed (default = 1.0)
function SetTimerRate(timer, rate) end

--------------------------------------------------------------
-- Returns the rate of the specified Timer.
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer
-- @return #float			The Timer's rate
function GetTimerRate(timer) end

--------------------------------------------------------------
-- Shows or hides the timer.
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer
function GetTimerName(timer) end

--------------------------------------------------------------
-- Tell the C++ code about the defeat timer (which will display it on the HUD).
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer to pair with the defeat timer
-- @param #int teamIndex	Index of team to associate with the defeat timer
function SetDefeatTimer(timer, teamIndex) end

--------------------------------------------------------------
-- Tell the C++ code about the victory timer (which will display it on the HUD).
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer to pair with the victory timer. Set to nil (or leave blank) to hide it
-- @param #int teamIndex	Index of team to associate with the victory timer
function SetVictoryTimer(timer, team) end

--------------------------------------------------------------
-- UNUSED. Tell the C++ code about the mission timer (which will display it on the HUD).
-- 
-- @param #string timer		ID (or handler returned from CreateTimer) of the Timer to pair with the mission timer. Set to nil (or leave blank) to hide it
function SetMissionTimer(timer) end

-- Object

--------------------------------------------------------------
-- Returns the object pointer of the specified object
-- 
-- @param #string objectName		ID of object to get pointer of
-- @return 							The object's pointer
function GetObjectPtr(objectName) end

--------------------------------------------------------------
-- Activates the specified object.
-- 
-- @param #string objectName		ID of object to activate
function ActivateObject(objectName) end

--------------------------------------------------------------
-- Deactivates the specified object.
-- 
-- @param #string objectName		ID of object to deactivate
function DeactivateObject(objectName) end

--------------------------------------------------------------
-- Assigns the specified object to the specified team.
-- 
-- @param #string objectName		ID of object to set the team of
-- @param #int teamIndex			Index of the team to assign to the object
function SetObjectTeam(objectName, teamIndex) end

--------------------------------------------------------------
-- Returns the team index of the specified object.
-- 
-- @param #string objectName		ID of object to get the team of
-- @return #int						Index of the team the object belongs to
function GetObjectTeam(objectName) end

--------------------------------------------------------------
-- Returns whether or not the specified object is alive.
-- 
-- @param #string objectName		ID of object to check
-- @return #int						1 if object is alive, 0 if object is not alive
function IsObjectAlive(objectName) end

--------------------------------------------------------------
-- Returns the current health value of the specified object.
-- 
-- @param #string objectName		ID of object to get the current health value of
-- @return #float					Object's CurHealth value
-- @return #float					Object's MaxHealth value
-- @return #float					Object's AddHealth value
function GetObjectHealth(objectName) end

--------------------------------------------------------------
-- Returns the current shield value of the specified object.
-- 
-- @param #string objectName		ID of object to get the current shield value of
-- @return #float					Object's CurShield value
-- @return #float					Object's MaxShield value
-- @return #float					Object's AddShield value
function GetObjectShield(objectName) end

--------------------------------------------------------------
-- Returns the name of the most recent weapon that the specified object was hit by.
-- 
-- @param #string objectName		ID of object to check
-- @return #string					Weapon class name
function GetObjectLastHitWeaponClass(objectName) end

--------------------------------------------------------------
-- Kills the specified object.
-- 
-- @param #string objectName		ID of object to destroy
function KillObject(objectName) end

--------------------------------------------------------------
-- Respawns the specified object.
-- 
-- @param #string objectName		ID of object to respawn
function RespawnObject(objectName) end

-- Entity

--------------------------------------------------------------
-- Returns the entity pointer of the specified object or character unit index.
-- 
-- @param object		ID of object or character unit index
-- @return				Entity pointer of object or character
function GetEntityPtr(object) end

--------------------------------------------------------------
-- Returns the name of the specified entity.
-- 
-- @param entity		ID of entity
-- @return #string		Entity name
function GetEntityName(entity) end

--------------------------------------------------------------
-- Returns the class of the specified entity.  Can be used with FindEntityClass to check whether or not an entity is a certain class.
-- 
-- @param entity		ID of entity
-- @return				Entity class
function GetEntityClass(entity) end

--------------------------------------------------------------
-- Returns the class name of the specified entity.
-- 
-- @param entity		ID of entity
-- @return #string		Entity class name
function GetEntityClassName(entity) end

--------------------------------------------------------------
-- Sets the matrix of the specified entity.
-- 
-- @param entity		ID of entity
-- @param matrix		Entity matrix to apply to entity
function SetEntityMatrix(entity, matrix) end

--------------------------------------------------------------
-- Returns the matrix of the specified entity.
-- 
-- @param entity		ID of entity
-- @return				Entity matrix
function GetEntityMatrix(entity) end

--------------------------------------------------------------
-- Sets the value of a property for the specified object.
-- 
-- @param objectName			ID of object or character unit index
-- @param #string property		ID of the property to set
-- @param value					Value to set the property to
function SetProperty(objectName, property, value) end

--------------------------------------------------------------
-- Creates a new instance of the specified entity and returns it.
-- 
-- @param #string class			Name of the entity class to instantiate
-- @param matrix				Matrix or path point to create the entity at
-- @param #string name			Name to assign to the entity
-- @return						Entity instance
function CreateEntity(class, matrix, name) end

--------------------------------------------------------------
-- Deletes the specified entity.
-- 
-- @param entity		ID of entity
function DeleteEntity(entity) end

--------------------------------------------------------------
-- Returns the entity class pointer of the specified entity.
-- 
-- @param entity		ID of entity
-- @return				Entity class pointer
function GetEntityClassPtr(entity) end

--------------------------------------------------------------
-- Sets the value of a property for the specified object class.
-- 
-- @param objectClass			ID of object class
-- @param #string property		ID of the property to set
-- @param value					Property's value to set
function SetClassProperty(objectClass, property, value) end

--------------------------------------------------------------
-- Forces the specified flyer to perform a take-off.
-- 
-- @param #string flyer			ID of flyer object or flyer vehicle spawn object
function EntityFlyerTakeOff(flyer) end

--------------------------------------------------------------
-- Forces the specified flyer to perform a landing.
-- 
-- @param #string flyer			ID of flyer object or flyer vehicle spawn object
function EntityFlyerLand(flyer) end

--------------------------------------------------------------
-- Initializes the specified flyer as flying.
-- 
-- @param #string flyer			ID of flyer object or flyer vehicle spawn object
function EntityFlyerInitAsFlying(flyer) end

--------------------------------------------------------------
-- Initializes the specified flyer as landed.
-- 
-- @param #string flyer			ID of flyer object or flyer vehicle spawn object
function EntityFlyerInitAsLanded(flyer) end

--------------------------------------------------------------
-- Forces the specified entity into the specified vehicle.
-- 
-- @param entity				Entity or character unit index to force into vehicle
-- @param #string vehicle		ID of the vehicle class
function EnterVehicle(entity, vehicle) end

--------------------------------------------------------------
-- Forces the specified entity out of whatever vehicle it's currently in.
-- 
-- @param entity			Entity or character unit index to force out of vehicle
function ExitVehicle(entity) end

--------------------------------------------------------------
-- Enables or disables the specified flyer path.
-- 
-- @param #int pathID		ID of flyer spline path to enable
-- @param #int enable		Set to 1 to enable the path, or set to 0 to disable the path
function EnableFlyerPath(pathID, enable) end

--------------------------------------------------------------
-- Returns the path point based on the specified path node.
-- 
-- @param #string pathName		ID of path
-- @param #int nodeIdx			Numeric ID of path node
-- @return						Path point
function GetPathPoint(pathName, nodeIdx) end

--------------------------------------------------------------
-- Returns the number of units that are currently alive in the specified team.
-- 
-- @param #int teamIndex		Index of team
-- @return #int					Number of units currently alive in team
function GetNumTeamMembersAlive(teamIndex) end

--------------------------------------------------------------
-- Creates a new matrix based on an existing one.
-- 
-- @param #float rad		Rotation angle in radians around chosen axes or X axis if none chosen
-- @param #float rotX		Rotation around x axis if rotX ~= 0
-- @param #float rotY		Rotation around y axis if rotY ~= 0
-- @param #float rotZ		Rotation around z axis if rotZ ~= 0
-- @param #float posX		Translates unit on X axis
-- @param #float posY		Translates unit on Y axis
-- @param #float posZ		Translates unit on Z axis
-- @param matrix			Starting point for matrix changes
-- @return					Newly created matrix
function CreateMatrix(rad, rotX, rotY, rotZ, posX, posY, posZ, matrix) end

--------------------------------------------------------------
-- Returns the current screen position relative to what seems to be the entity camera or 
-- entity origin point (otherwise known as pivot point or center of geometry (COG)).
-- 
-- @param entity		Entity, or integer character index (returned by GetCharacterUnit) to check
-- @return #float		X position
-- @return #float		Y position
-- @return #float		Z position (so it seems, anyway)
function GetScreenPosition(entity) end

-- procedural animation callbacks

--------------------------------------------------------------
-- Resumes playing of animation group from whichever time it was at last.
-- 
-- @param #string animationGroupName		ID of animation group to resume
function PlayAnimation(animationGroupName) end

--------------------------------------------------------------
-- Pauses animation group's playback � objects remain where they are currently.
-- 
-- @param #string animationGroupName		ID of animation group to pause
function PauseAnimation(animationGroupName) end

--------------------------------------------------------------
-- Instanly rewinds the animation group to the beginning.  Can be called while the group is playing. 
--  If called while the group is stopped, play will resume from the beginning when Play is called.
-- 
-- @param #string animationGroupName		ID of animation group to rewind
function RewindAnimation(animationGroupName) end

--------------------------------------------------------------
-- Takes the current positions of the objects referenced by the group, and uses those positions 
--  as the new start point for when that object is next animated.
-- 
-- @param #string animationGroupName		ID of animation group to affect
function SetAnimationStartPoint(animationGroupName) end

--------------------------------------------------------------
-- Plays the indicated animation group from beginTime to endTime.  So for a 10-second animation, 
--  playing from 0 to 5 plays the first half, and playing from 5 to 10 plays the second half.
-- 
-- @param #string animationGroupName		ID of animation group to play
-- @param #float beginTime					Start point of animation in seconds
-- @param #float endTime					End point of animation in seconds
function PlayAnimationFromTo(animationGroupName, beginTime, endTime) end

-- Character

--------------------------------------------------------------
-- Returns the total number of units (living or dead) on the specified team.
-- 
-- @param #int teamIndex		Index of team to get size of
-- @return #int					Size of team
function GetTeamSize(teamIndex) end

--------------------------------------------------------------
-- Returns the integer character index of the specified unit index from the specified team.
-- 
-- @param #int teamIndex		Index of team
-- @param #int unitIndex		Index of unit to get integer character index of
-- @return #int					Integer character index
function GetTeamMember(teamIndex, unitIndex) end

--------------------------------------------------------------
-- 
-- @param #int characterIndex		Index of character to get team of
-- @return #int						Index of team the character belongs to
function GetCharacterTeam(characterIndex) end

--------------------------------------------------------------
-- Selects the specified team for the specified character (as if you were doing so manually via the spawn screen).
-- 
-- @param #int character		Character unit
-- @param #int teamIndex		Index of team to select
function SelectCharacterTeam(character, teamIndex) end

--------------------------------------------------------------
-- Returns whether the specified character is a human player or an AI.
-- 
-- @param #int characterIndex		Index of character to check "humanity" of
-- @return #int						1 if character is human, 0 if character is not human
function IsCharacterHuman(characterIndex) end

--------------------------------------------------------------
-- Selects the specified class for the specified character (as if you were doing so manually via the spawn screen).
-- 
-- @param #int character		Character unit
-- @param #int class			Name of class to select
function SelectCharacterClass(character, class) end

--------------------------------------------------------------
-- Returns the numeric index of the specified character's class (starting at 0).  If you think of a team's list of 
--  classes as a table (with the hero being the last class in the list), the first class's index would be 0, the 
--  second class's index would be 1, etc.
-- 
-- @param #int integerChrIdx		Integer character index returned by GetCharacterUnit
-- @return #int						Numeric index of character's class
function GetCharacterClass(integerChrIdx) end

--------------------------------------------------------------
-- Moves specified number of units from the source team to the destination team.  No, you can't specify which units 
--  are moved. All this function does is iterate through the list of units on the source team and move each unit to 
--  the source team until the iterator max limit, `numUnits`, has been reached. Think of it as a for loop where 
--  the `min` is `1` and the `max` is `numUnits`, and inside the loop is a function that moves the unit index (shifted 
--  up by 1, so the player's index is going to be 1) matching the loop's `cur` value to the destination team.  
--  
--  Also worth noting is when an alive unit is moved with this function, the function will not automatically kill the 
--  unit, so you must kill the unit through some other means if you don't want the unit to remain spawned their current 
--  class. One way you might do this (and this is untested) is by looping through `destTeam`'s units and killing them 
--  (and only loop through as many as you plan on moving to the other team), and then call `BatchChangeTeams` immediately 
--  after the loop has finished. Here's what this might look like:  
--   
--  `unitsToMove = 5`  
--  
--  `for unit=0,unitsToMove-1 do`  
--  `	KillObject(GetCharacterUnit(GetTeamMember(ATT, unit)))`  
--  `end`  
--  
--  `BatchChangeTeams(ATT, DEF, unitsToMove)`
-- 
-- @param #int sourceTeam		Index of source team, where units are moved from
-- @param #int destTeam			Index of destination team, where units are moved to
-- @param #int numUnits			Number of units to move
function BatchChangeTeams(sourceTeam, destTeam, numUnits) end

--------------------------------------------------------------
-- Prevents or allows spawning of AI units from the specified team.
-- 
-- @param #int teamIndex		Index of team to affect
-- @param #int canSpawn			Set to 1 to allow AI units on this team to spawn, or 0 to prevent them from spawning
function AllowAISpawn(teamIndex, canSpawn) end

--------------------------------------------------------------
-- Spawns the specified character unit index at the specified path point.
-- 
-- @param #int integerChrIdx	Unit returned from GetCharacterUnit
-- @param pathPoint				Path point returned from GetPathPoint
function SpawnCharacter(integerChrIdx, pathPoint) end

--------------------------------------------------------------
-- Returns the integer character index from the specified entity or team member index.
-- 
-- @param entity			Character entity, or character index returned from GetTeamMember
-- @return #int				Character unit index
function GetCharacterUnit(entity) end

--------------------------------------------------------------
-- Returns the integer vehicle index from the specified vehicle entity.
-- 
-- @param entity			Vehicle entity
-- @return #int				Vehicle index
function GetCharacterVehicle(entity) end

--------------------------------------------------------------
-- Returns the integer index from the specified RemoteTerminal entity.  See BF2EntityRemoteTerminalClassReference for more information. 
--  http://www.secretsociety.com/forum/downloads/BF2Docs/ClassReference/BF2EntityRemoteTerminalClassReference.jpg
-- 
-- @param entity			RemoteTerminal entity
-- @return #int				RemoteTerminal entity index
function GetCharacterRemote(entity) end

--------------------------------------------------------------
-- Returns the integer vehicle index from the specified Controllable entity.  See BF2ControllableClassReference for more information. 
--  http://www.secretsociety.com/forum/downloads/BF2Docs/ClassReference/BF2ControllableClassReference.jpg
-- 
-- @param entity			Vehicle entity
-- @return #int				Controllable entity index
function GetCharacterControllable(entity) end

--------------------------------------------------------------
-- Returns a command post's capture region.
-- 
-- @param #string postID		ID of command post
-- @return #string				ID of command post's capture region
function GetCommandPostCaptureRegion(postID) end

--------------------------------------------------------------
-- Returns a command post's bleed value.
-- 
-- @param #string postID		ID of command post
-- @return #int					Command post's bleed value
function GetCommandPostBleedValue(postID) end

--------------------------------------------------------------
-- Returns a command post's owning team.
-- 
-- @param #string postID		ID of command post
-- @return #int					Index of owning team
function GetCommandPostTeam(postID) end

--------------------------------------------------------------
-- Initiates a victory for the specified team.
-- 
-- @param #int teamIndex		Index of team to declare victory for
function MissionVictory(teamIndex) end

--------------------------------------------------------------
-- Initiates a defeat for the specified team.
-- 
-- @param #int teamIndex		Index of team to declare defeat for
function MissionDefeat(teamIndex) end

--------------------------------------------------------------
-- Sets the movie to play once the mission has ended.
-- 
-- @param #string sourceFilename		File containing the movie
-- @param #string movieID				ID of the movie properties to play
function SetMissionEndMovie(sourceFilename, movieID) end

-- AI Goal management functions

--------------------------------------------------------------
-- Removes all previous AI goals for this team.  You should call this before you set the 
--  first goals for a team, since teams 1, 2, and 3 start out with a default Conquest goal.
-- 
-- @param #int teamIndex		Index of team to clear goals of
function ClearAIGoals(teamIndex) end

--------------------------------------------------------------
-- Removes the specified goal.
-- 
-- @param goalHandle			Handle returned by AddAIGoal
function DeleteAIGoal(goalHandle) end

--------------------------------------------------------------
-- Adds an AI goal for this team.
-- 
-- @param #int teamIndex		Index of team to add goal to
-- @param #string goalType		Goal's type.  Can be one of the following...  
-- 								 `Conquest` - capture enemy team's CPs while preventing own from being captured.  
-- 								 `Deathmatch` - just kill everyone.  
-- 								 `Destroy` - destroy the target (a gameobject pointer, or a character index) (set in target1).  
-- 								 `Defend` - defend the target (a gameobject pointer, or a character index) (set in target1).  
-- 								 `CTFOffense` - try to get the specified flag (set in `target2`) and bring it back to the specified region (set in target1).  
-- 								 `CTFDefense` - protect the specified flag (set in `target1`), and hunt down and return it when its stolen.  
-- 								 `Follow` - follow around the target (like defend, but uses a tight follow) (set in `target1`).
-- @param #int weight			Weight is a relative weight for this goal.  Since you can specify more than one goal for a 
-- 								 team at a time, this specifies how the guys are divided.  A goal with weight 2 will get 
-- 								 twice as many guys as the goal with weight 1.  The size of the numbers doesn't matter and 
-- 								 they don't have to add up to 100 or anything.
-- @param target1				If `goalType` is:  
-- 								 `Destroy` - this is a gameobject pointer or a character index.  
-- 								 `Defend` - this is a gameobject pointer or a character index.  
-- 								 `CTFOffense` - this is a region name.  
-- 								 `CTFDefense` - this is a flag pointer.  
-- 								 `Follow` - this is a gameobject pointer. 
-- @param target2				If `goalType` is:  
-- 								 `CTFOffense` - this is a flag pointer.
-- @return						Goal's handle.
function AddAIGoal(teamIndex, goalType, weight, target1, target2) end

-- dynamic congraph functions

--------------------------------------------------------------
-- Blocks the given dynamic connection/group if it is currently unblocked, or unblocks it if it is currently blocked.
-- 
-- @param #int connection		ID of dynamic connection or planning group to toggle
function TogglePlanningGraphArcs(connection) end

--------------------------------------------------------------
-- Blocks the given dynamic connection/group.
-- 
-- @param #int connection		ID of dynamic connection or planning group to block
function BlockPlanningGraphArcs(connection) end

--------------------------------------------------------------
-- Unblocks the given dynamic connection/group.
-- 
-- @param #int connection		ID of dynamic connection or planning group to unblock
function UnblockPlanningGraphArcs(connection) end

-- dynamic barrier functions

--------------------------------------------------------------
-- Disables the given barrier if it is currently enabled, or enables it if it is currently disabled.
-- 
-- @param #int barrierID		ID of barrier to toggle
function ToggleBarriers(barrierID) end

--------------------------------------------------------------
-- Enables the given barrier.
-- 
-- @param #int barrierID		ID of barrier to enable
function EnableBarriers(barrierID) end

--------------------------------------------------------------
-- Disables the given barrier.
-- 
-- @param #int barrierID		ID of barrier to disable
function DisableBarriers(barrierID) end

--------------------------------------------------------------
-- Prevents all AI or AI on a specified team from using any vehicle. When this 
--  is called, AI currently in a vehicle will be forced out of it.
-- 
-- @param #int teamIndex		Index of team to force out of vehicles
-- @param #bool enabled			True to prevent AI from entering vehicles, false to allow them to do so
function ForceAIOutOfVehicles(teamIndex, enabled) end

--------------------------------------------------------------
-- Prevents or allows AI to capture the specified command post.
-- 
-- @param #string postID		ID of command post
-- @param #int teamIndex		Index of team whose AI to affect
-- @param #int canCapture		Set to 1 to allow AI from teamIndex to capture postID, set to 0 to prevent them from capturing it
function AICanCaptureCP(postID, teamIndex, canCapture) end

--------------------------------------------------------------
-- Sets the threshold at which AI units can no longer damage the specified 
--  object or entity.  For example, if threshold is 0.5, AI will not be able 
--  to damage the object or entity if its health percentage is <= 50%.
-- 
-- @param object				Object or entity to affect
-- @param #float threshold		Lowest health percentage that object can be brought to by AI
function SetAIDamageThreshold(object, threshold) end

--------------------------------------------------------------
-- Translates AI command IDs to strings.
-- 
-- @param command_id			command_id returned by CharacterIssueAICommand event
-- @return #string				Depending on command_id, will be one of the following: "getintovehicle", 
-- 								 "getoutofvehicle", "waitforpickup", "followchr", or "stopfollowchr"
function TranslateAICommand(command_id) end

--------------------------------------------------------------
-- Adds the specified amount to the specified entity's MaxShields.  NOTE: This does not affect the entity's CurShields value.
-- 
-- @param entity				Entity, or integer index returned by GetCharacterUnit, GetCharacterVehicle, etc.
-- @param #int shields			Amount of shields to add
function AddShieldStrength(entity, shields) end

--------------------------------------------------------------
-- Sets the north angle on the minimap.
-- 
-- @param #int angle		New minimap rotation angle in degrees (clockwise)
-- @param #int number		Unknown, seemingly optional, doesn't appear to do anything. Some stock mission scripts have this set to 1, some don't include it at all
function SetMapNorthAngle(angle, number) end

--------------------------------------------------------------
-- Forces all non-AI players to join team 1.
function ForceHumansOntoTeam1() end

--------------------------------------------------------------
-- Returns whether or not the specified character can interact with flags.
-- 
-- @param #int integerChrIdx	Character unit index to check for flag interactibility (yeah I made up that word, so what, big whoop, wanna fight about it?)
-- @return #int					1 if character can interact with flag, 0 if not
function CanCharacterInteractWithFlag(integerChrIdx) end

--------------------------------------------------------------
-- Returns the character unit carrying the specified flag.
-- 
-- @param #string flag			Name of the flag in the level
-- @return #int					Character unit index of flag carrier
function GetFlagCarrier(flag) end

--------------------------------------------------------------
-- Sets the map overall range (whatever that means).  My guess is it's related to unit scan/transmit 
--  radar reporting. Either way, it doesn't appear to actually do anything.
-- 
-- @param #int range			Range in meters? (or maybe units in relation to minimap size)
function SetMapRangeOverall(range) end

--------------------------------------------------------------
-- Sets the map shooting range (whatever that means).  My guess is it's related to unit scan/transmit 
--  radar reporting. Either way, it doesn't appear to actually do anything.
-- 
-- @param #int range			Range in meters? (or maybe units in relation to minimap size)
function SetMapRangeShooting(range) end

--------------------------------------------------------------
-- Sets the map range view cone (whatever that means).  My guess is it's related to unit scan/transmit 
--  radar reporting. Either way, it doesn't appear to actually do anything.
-- 
-- @param #int range			Cone range in meters? (or maybe units in relation to minimap size)
function SetMapRangeViewCone(range) end

--------------------------------------------------------------
-- Sets the map view cone angle (whatever that means).  My guess is it's related to unit scan/transmit 
--  radar reporting. Either way, it doesn't appear to actually do anything.
-- 
-- @param #int angle			Cone angle in degrees?
function SetMapViewConeAngle(angle) end

--------------------------------------------------------------
-- Removes the small minimap from the HUD.
function DisableSmallMapMiniMap() end

-- effects

--------------------------------------------------------------
-- Spawns a new instance of the specified particle effect and returns it.
-- 
-- @param effectFilename		Name of particle effect to instantiate
-- @return						Particle effect instance
function CreateEffect(effectFilename) end

--------------------------------------------------------------
-- Deletes the specified particle effect instance.
-- 
-- @param effect		Particle effect instance returned by CreateEffect
function RemoveEffect(effect) end

--------------------------------------------------------------
-- Attaches the specified particle effect instance to the specified object.
-- 
-- @param effect			Particle effect instance returned by CreateEffect
-- @param #string object	ID of object to attach effect to
function AttachEffectToObject(effect, object) end

--------------------------------------------------------------
-- Attaches the specified particle effect instance to the specified matrix.
-- 
-- @param effect		Particle effect instance returned by CreateEffect
-- @param matrix		Matrix to attach effect to
function AttachEffectToMatrix(effect, matrix) end

--------------------------------------------------------------
-- Returns the matrix of the specified particle effect instance.
-- 
-- @param effect		Particle effect instance returned by CreateEffect
-- @return				Effect matrix
function GetEffectMatrix(effect) end

--------------------------------------------------------------
-- Sets the matrix of the specified particle effect instance.
-- 
-- @param effect		Particle effect instance returned by CreateEffect
function SetEffectMatrix(effect, matrix) end

--------------------------------------------------------------
-- Returns whether or not the specified particle effect is active.
-- 
-- @param effect		Particle effect instance returned by CreateEffect
-- @return #int			1 if effect is active, 0 if effect is inactive 
function IsEffectActive(effect) end

--------------------------------------------------------------
-- Sets the state of the specified particle effect.
-- 
-- @param effect		Particle effect instance returned by CreateEffect
-- @param #int active	Set to 1 to activate effect, set to 0 to deactivate effect
function SetEffectActive(effect, active) end



