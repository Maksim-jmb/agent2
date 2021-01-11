#include "BRR.Common.iss"

objectdef brrSession
{
    variable taskmanager TaskManager=${LMAC.NewTaskManager["brrSession"]}
    variable brrSettings Settings

    method Initialize()
    {
        LGUI2:LoadPackageFile[xBRR.Session.lgui2Package.json]

        This.Settings:EnableHotkeys
    }

    method Shutdown()
    {
        This:Disable
        This.Settings:DisableHotkeys
        TaskManager:Destroy
        LGUI2:UnloadPackageFile[xBRR.Session.lgui2Package.json]
    }
    
    ; member:uint GetNextSlot()
    ; {
    ;     variable uint Slot=${JMB.Slot}
    ;     if !${Slot}
    ;         return 0

    ;     Slot:Inc
    ;     if ${Slot}>${JMB.Slots.Used:Dec}
    ;         return 1

    ;     return ${Slot}
    ; }

    ; method NextWindow()
    ; {
    ;     variable uint nextSlot=${This.GetNextSlot}
    ;     if !${nextSlot}
    ;         return

    ;     if !${Display.Window.IsForeground}
    ;         return

        ; uplink focus "jmb${nextSlot}"
        ; if ${Settings.CurrentProfile.SwitchAsHotkey}
        ;     relay "jmb${nextSlot}" "Event[OnHotkeyFocused]:Execute"
    ; }

    method NextWindow()
    {
        ; if !${nextSlot}
        ;     return

        ; if !${Display.Window.IsForeground}
        ;     return

        ; variable uint nextSlot=${This.GetNextSlot}
        
        ;  if ${Settings.CurrentProfile.Name.Equal["party"]}
        ;     uplink focus "jmb${nextSlot}"
        ;     BWLSession:OnMouseEnter
        ;     if ${Settings.CurrentProfile.SwitchAsHotkey}
        ;         relay "jmb${nextSlot}" "Event[OnHotkeyFocused]:Execute"
        if ${Settings.CurrentProfile.Name.Equal["melee"]}
            uplink focus -next melee
            ; BWLSession:OnMouseEnter
        if ${Settings.CurrentProfile.Name.Equal["party"]}
            uplink focus -next party
            ; BWLSession:OnMouseEnter
        if ${Settings.CurrentProfile.Name.Equal["ranged"]}
            uplink focus -next ranged
            ; BWLSession:OnMouseEnter
        if ${Settings.CurrentProfile.Name.Equal["mouse2"]}
            uplink focus -next party
            ; BWLSession:OnMouseEnter
            ; if ${Settings.CurrentProfile.SwitchAsHotkey}
            ;     relay "jmb${nextSlot}" "Event[OnHotkeyFocused]:Execute"
    }        

    method OnControlHook(string controlName)
    {
        variable bool Advance=${Settings.CurrentProfile.DefaultAllow}

        ; check for overrides

        variable jsonvalueref Override
        Override:SetReference["Settings.CurrentProfile.Overrides[${controlName.AsJSON~}]"]

        if ${Override.Type.Equal[object]}
        {

;            echo "Button released: \"${Context.Args[controlName]}\" override=${Override.AsJSON~}"

            if ${Override.Get[allow]}
            {
                Advance:Set[1]
            }
            if ${Override.Get[ignore]}
            {
                Advance:Set[0]
            }
        }
        else
        {
;            echo "Button released: \"${Context.Args[controlName]}\""
        }

        if ${Advance}
            This:NextWindow

    }

    method OnButtonHook()
    {
        This:OnControlHook["${Context.Args[controlName]~}"]
    }

    method OnMouseButtonHook()
    {
        if ${Settings.CurrentProfile.IncludeMouse}
            This:OnControlHook["${Context.Args[controlName]~}"]
    }

    method Enable(string profile)
    {
        Settings:SetCurrentProfile["${profile~}"]
        LGUI2.Element[basicRoundRobin.allButtons]:Destroy
        LGUI2:LoadJSON["${LGUI2.Template[${profile~}.allButtons].AsJSON~}"]
    }

    method Disable()
    {
        Settings:ClearCurrentProfile
        LGUI2.Element[basicRoundRobin.allButtons]:Destroy
    }

    ; used by the GUI to indicate profile hotkey was pressed. pass to the uplink for processing
    method ToggleProfile(string profile)
    {
        relay uplink "BRRUplink:ToggleProfile[${profile.AsJSON~}]"
    }
}

variable(global) brrSession BRRSession

function main()
{
    while 1
        waitframe
}