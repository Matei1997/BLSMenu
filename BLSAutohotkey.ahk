#NoEnv
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%
#SingleInstance Force


; ----------------------------------------------------------------------------
; Hotkey of choice. Check https://www.autohotkey.com/docs/v1/KeyList.htm if
; you wish to change this
; ----------------------------------------------------------------------------
F12::

;
; ----------------------------------------------------------------------------
BLSMenu:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, SceneMenu, Add, Grab BLS Kit, GrabBLSHandler
	Menu, SceneMenu, Add, Initial BLS, InitialBLSHandler
	Menu, FullMenu, Add, InitialBLS, :SceneMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, BruisesMenu, Add, Treat Bruises, TreatBruisesHandler
	Menu, FullMenu, Add, Bruises, :BruisesMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, SprainsMenu, Add, Treat Sprains, TreatSprainsHandler
	Menu, RPMenu, Add, Sprains treatment, :SprainsMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, BurnsMenu, Add, First Second Degree, FirstSecondDegreeBurnsHandler
	Menu, BurnsMenu, Add, Third Degree Burns, ThirdDegreeBurnsHandler
	Menu, FullMenu, Add, Burns, :BurnsMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, CutsMenu, Add, Treat cuts, TreatcutsHandler
	Menu, FullMenu, Add, Cuts, :CutsMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, GSWMenu, Add, GSW Leg Arm, GSWLegArmHandler
	Menu, GSWMenu, Add, GSW Chest, GSWChestHandler
	Menu, GSWMenu, Add, GSW Abdomen, GSWAbdomenHandler
	Menu, GSWMenu, Add, GSW Other, GSWOtherHandler
	Menu, FullMenu, Add, GSW, :GSWMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, FracturesMenu, Add, Broken Leg, BrokenLegHandler
	Menu, FracturesMenu, Add, Broken Arm, BrokenArmHandler
	Menu, FracturesMenu, Add, Broken Fingers, BrokenFingersHandler
	Menu, FracturesMenu, Add, Broken Toes, BrokenToesHandler
	Menu, FracturesMenu, Add, Broken Ribs, BrokenRibsHandler
	Menu, FullMenu, Add, Fractures, :FracturesMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, AnaphylaxisMenu, Add, Treat Anaphylaxis, TreatAnaphylaxisHandler
	Menu, FullMenu, Add, Anaphylaxis, :AnaphylaxisMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, HeimlichMenu, Add, Heimlich maneuver, HeimlichManeuverHandler
	Menu, FullMenu, Add, Heimlich, :HeimlichMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, TourniquetMenu, Add, Use Tourniquete, UseTourniquetHandler
	Menu, FullMenu, Add, Use Tourniquete, :TourniquetMenu

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Menu, EndOfBLSMenu, Add, Finish BLS, FinishBLSHandler
	Menu, FullMenu, Add, Finish BLS, :EndOfBLSMenu


	Menu, FullMenu, Add, Exit application, ExitApplication

	CoordMode, Menu, Screen
	Menu, FullMenu, Show, % A_ScreenWidth/2, % A_ScreenHeight/2
return

;GetBLS handlers

GrabBLSHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow grabs a BLS kit from inside the bag", True)
	Sleep 1750
	Paste("/panim medbag", True)
return

;Inspecting handlers

InitialBLSHandler:
	WinActivate, ahk_exe %Application%
	Paste("/anim medic", True)
	Sleep 2250
	Paste("/melow Sets the BLS kit on the groud and begins looking over the individual's injuries", True)
	Sleep 2250
	Paste("/dolow What would " sex_1 " see?", True)
return

;Bruises handlers

TreatBruisesHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes an ice pack from the BLS kit and pushes in the middle of the ice pack until he hears a crack to activate it", True)
	Sleep 2150
	Paste("/melow Takes a piece of cloth from the BLS kit and wraps the ice pack in it", True)
	Sleep 2250
	Paste("/melow Places the ice pack on the injured area", True)
	Sleep 1750
	Paste("/melow Would wrap the area around with a bandage and secure it with medical tape", True)
return

;Sprains handlers

TreatSprainsHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes an ice pack from the BLS kit and pushes in the middle of the ice pack until he hears a crack to activate it", True)
	Sleep 2150
	Paste("/melow Takes a piece of cloth from the BLS kit and wraps the ice pack in it", True)
	Sleep 2150
	Paste("/melow Places the ice pack on the sprain", True)
	Sleep 2250
	Paste("/melow Would wrap the area around with a bandage and secure it with medical tape for support", True)
return

;Burns handlers

FirstSecondDegreeBurnsHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Would remove any clothing and jewelry from on and around the burned area", True)
	Sleep 2150
	Paste("/melow Takes saline gauze pads and burn dressing from the BLS kit", True)
	Sleep 2250
	Paste("/melow Would pour sterile saline over a gauze pad and place it over the burn to cool it down", True)
	Sleep 2250
	Paste("/melow Removes the wet gauze and wraps the burn", True)
return

ThirdDegreeBurnsHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Would remove any clothing and jewelry from on and around the burned area", True)
	Sleep 2250
	Paste("/melow Takes burn dressing from the BLS kit", True)
	Sleep 2150
	Paste("/melow Would wrap the burned area with sterile burn dressing", True)
return

;Cuts handlers

TreatcutsHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes saline gauze pads and burn dressing from the BLS kit", True)
	Sleep 1750
	Paste("/melow Would pour sterile saline over a gauze pad and clean the area with the pad", True)
	Sleep 2250
	Paste("/melow Places a sterile gauze pad over the cut and applies pressure until the bleeding stops", True)
	Sleep 2150
	Paste("/melow Takes a roll a bandage and medical tape from the BLS kit", True)
	Sleep 1950
	Paste("/melow Wraps the bandage tightly over the gauze pads and the cuta and tapes down the end of the bandage using medical tape", True)
return

;GSW handlers

GSWLegArmHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes multiple gauze pads, rolled gauze and medical tape from the BLS kit", True)
	Sleep 2250
	Paste("/melow Places gauze pads on top of the GSW, and applies heavy pressure to help stop the bleeding", True)
	Sleep 2350
	Paste("/melow Wraps the area around with rolled gauze and secures the end with medical tape", True)
	Sleep 2550
	Paste("/dolow Would the bleeding stop?", True)
return

GSWChestHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes multiple hemostatic gauze pads and pressure bandage from the BLS kit", True)
	Sleep 2250
	Paste("/melow Would apply the hemostatic gauze pads over the GSW", True)
	Sleep 2150
	Paste("/melow Wraps a pressure bandage around the GSW and gauze pads", True)
	Sleep 2650
	Paste("/dolow Would the bleeding stop?", True)
return

GSWAbdomenHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes multiple hemostatic gauze pads and pressure bandage from the BLS kit", True)
	Sleep 2250
	Paste("/melow Would carefuly apply the hemostatic gauze pads over the GSW, without applying any pressure", True)
	Sleep 2150
	Paste("/melow Wraps a pressure bandage around the GSW and gauze pads", True)
	Sleep 2250
	Paste("/dolow Would the bleeding stop?", True)
return

GSWOtherHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes multiple gauze pads, rolled gauze and medical tape from the BLS kit", True)
	Sleep 2250
	Paste("/melow Places gauze pads on top of the GSW, and applies heavy pressure to help stop the bleeding", True)
	Sleep 2150
	Paste("/melow Wraps the area around with rolled gauze and secures the end with medical tape", True)
	Sleep 2250
	Paste("/dolow Would the bleeding stop?", True)
return

;Broken Bones handlers

BrokenLegHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes splints and rolled gauze from the BLS kit", True)
	Sleep 2250
	Paste("/melow Places one splint on either side of the leg, making sure the padded side faces towards the leg", True)
	Sleep 2750
	Paste("/melow Takes rolled cauze and starting at the bottom and working up toward their body would tie the splint to their leg", True)
	Sleep 2950
	Paste("/melow Would also wrap the gauze around their ankle and foot, immobilizing it to prevent pain from moving the ankle)", True)
	Sleep 2650
	Paste("/melow Takes an ice pack from the BLS kit and pushes in the middle of the ice pack until he hears a crack to activate it", True)
	Sleep 2850
	Paste("/melow Takes a piece of cloth from the BLS kit and wraps the ice pack in it", True)
	Sleep 2150
	Paste("/melow Places the ice pack on the leg", True)
	Sleep 2250
	Paste("/melow Would wrap the area around with a bandage and secure it with medical tape for support", True)
return

BrokenArmHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes splint, sling and rolled gauze from the BLS kit", True)
	Sleep 2250
	Paste("/melow Places the splint under the arm, making sure the padded side faces towards the arm", True)
	Sleep 2950
	Paste("/melow Takes rolled cauze and starting at the wrist and working up way towards their body would tie the splint to their arm", True)
	Sleep 2850
	Paste("/melow Takes an ice pack from the BLS kit and pushes in the middle of the ice pack until he hears a crack to activate it", True)
	Sleep 2750
	Paste("/melow Takes a piece of cloth from the BLS kit and wraps the ice pack in it", True)
	Sleep 2650
	Paste("/melow Places the ice pack on the arm", True)
	Sleep 2250
	Paste("/melow Would rest the arm in a sling for support", True)
return

BrokenFingersHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes medical tape from the BLS kit", True)
	Sleep 2250
	Paste("/melow Secures the broken finger to a healthy one right next to it using medical tape", True)
	Sleep 2750
	Paste("/melow Takes an ice pack from the BLS kit and pushes in the middle of the ice pack until he hears a crack to activate it", True)
	Sleep 2850
	Paste("/melow Takes a piece of cloth from the BLS kit and wraps the ice pack in it", True)
	Sleep 2450
	Paste("/melow Places the ice pack on the finger", True)
return

BrokenToesHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes medical tape from the BLS kit", True)
	Sleep 2250
	Paste("/melow Secures the broken toe to a healthy one right next to it using medical tape", True)
	Sleep 2550
	Paste("/melow Takes an ice pack from the BLS kit and pushes in the middle of the ice pack until he hears a crack to activate it", True)
	Sleep 2750
	Paste("/melow Takes a piece of cloth from the BLS kit and wraps the ice pack in it", True)
	Sleep 2250
	Paste("/melow Places the ice pack on the toe", True)
return

BrokenRibsHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes two ice packs from the BLS kit and pushes in the middle of the ice packs until he hears a crack to activate them", True)
	Sleep 2150
	Paste("/melow Takes two pieces of cloth from the BLS kit and wraps the ice packs in it", True)
	Sleep 2450
	Paste("/melow Places the activated ice packs on the injured side of their ribcage, one on each side in case of multiple fractures located on both sides", True)
	Sleep 2250
	Paste("/melow Takes rolled gauze and medical tape from the BLS kit", True)
	Sleep 2150
	Paste("/melow Wraps the patient’s torso around with rolled gauze and tapes down the end", True)
return

;Anaphylaxis handlers

TreatAnaphylaxisHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes an EpiPen from the BLS kit", True)
	Sleep 2250
	Paste("/melow Forms a fist around the EpiPen and pulls off the blue cap on the end", True)
	Sleep 2550
	Paste("/melow Presses the pen down hard until a click is heard and would hold the pen in place for 10 seconds", True)
	Sleep 2950
	Paste("/melow Removes the pen, and massages the injection site for 10 seconds", True)
return

;Heimlich handlers

HeimlichManeuverHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Stands behind the individual, places one foot slightly in front of the other for balance, and wraps his arms around the individual's waist while also tipping them forward slightly", True)
	Sleep 2650
	Paste("/melow Makes a fist with one hand and positions it slightly above the individuals's belly button", True)
	Sleep 2150
	Paste("/melow Grasps the fist with the other hand, and presss hard into the abdomen with a quick, upward thrust", True)
	Sleep 3250
	Paste("/melow Performs this maneuver between six and ten times until the blockage is dislodged", True)
return

;Tourniquet handlers

UseTourniquetHandler:
	WinActivate, ahk_exe %Application%
	Paste("/melow Takes tourniquet from the BLS kit", True)
	Sleep 2250
	Paste("/melow Places the tourniquet between the source of the bleeding and about 2-3 inches closer to the torso from the bleeding", True)
	Sleep 2250
	Paste("/melow Pulls the strap through the buckle until it’s tight", True)
	Sleep 2150
	Paste("/melow Twist the windlass tightly until the bleeding stops", True)
	Sleep 2150
	Paste("/melow Clips and secures the windlass with the buckle to keep the tourniquet tight.", True)
	Sleep 2150
	Paste("/melow Notes down the time the tourniquet was applied it with a pen", True)
return

FinishBLSHandler:
	WinActivate, ahk_exe %Application%
	Paste("/dolow Would there be any other injuries? If so, what would they be?", True)
return

ExitApplication:
	WinActivate, ahk_exe %Application%
	ExitApp
return

; ----------------------------------------------------------------------------
; APPLICATION WIDE FUNCTIONS
; ----------------------------------------------------------------------------
CoordMode, Menu, Screen
Menu, FullMenu, Show, % A_ScreenWidth/2, % A_ScreenHeight/2
return

; ==================================================================
; Function: 			Paste
; Description			Pastes text into the chatbox, rather than typing each individual letter
; Usage:				Paste("ClipIt", Ent)
; Parameters:
;  ClipIt			-	Text to paste into the chatbox
;  sEnter			-	Boolean; whether or not to press enter after text is pasted
;
; Return values:
; 	Null

Paste(ClipIt, Ent)
{
	ClipBoard := ClipIt
	send, t
	sleep, 15
	send, ^v
	if ( Ent )
	{
		sleep, 15
		send, {enter}
	}
	sleep, 5
	send, {rctrl up}
	sleep, 5
	send, {lctrl up}
	return
}
