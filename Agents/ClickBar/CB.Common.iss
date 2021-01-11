objectdef cbSettings
{
   variable filepath GlobalFolder="${LavishScript.HomeDirectory}"

    method Initialize()
    {
        LavishScript:RegisterEvent[On Activate]
        Event[On Activate]:AttachAtom[This:OnActivate]
        
        
    }

    method Shutdown()
    {
        LGUI2:UnloadPackageFile[xPF.Session.lgui2package.json]
    }

    method LoadPackageFile()
    {
        LGUI2:LoadPackageFile[xPF.Session.lgui2package.json]
    }

    method OnActivate()
    {

    }

    method AllButtonsDestroy()
    {
       relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy 
    }


    ; method Jmb1PartyFramesM1P()
    ; {
    ;     relay jmb2 "WindowCharacteristics -stealth -pos -viewable 2560,0 -size -viewable 640x270 -frame none "
    ;     relay jmb3 "WindowCharacteristics -stealth -pos -viewable 2560,270 -size -viewable 640x270 -frame none "
    ;     relay jmb4 "WindowCharacteristics -stealth -pos -viewable 2560,540 -size -viewable 640x270 -frame none "
    ;     relay jmb5 "WindowCharacteristics -stealth -pos -viewable 2560,810 -size -viewable 640x270 -frame none "
    ;     relay jmb6 "WindowCharacteristics -pos -viewable 3200,0 -size -viewable 640x270 -frame none "
    ;     ; relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
    ;     ; BRRSession.Settings:SetCurrentProfile["party"]
    ;     relay party BRRSession:Enable["party"]
    ; }

    method Jmb1PartyFramesM1R()
    {
        relay party BRRSession:Enable["party"]

    }

    method Jmb1PartyFramesM2P()
    {
;         relay party "WindowCharacteristics -stealth -pos -viewable 0,0 -size -viewable 2560x1080 -frame none "
;         relay jmb6 "WindowCharacteristics -pos -viewable 2560,0 -size -viewable 1280x1080 -frame none "
;         ; relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
;   ;      Settings:SetCurrentProfile["mouse2"]
;         relay party BRRSession:Enable["mouse2"]
    }

    method Jmb1PartyFramesM2R()
    {
        relay party BRRSession:Enable["mouse2"]
    }

    method Jmb1PartyFramesM3P()
    {
        relay party BRRSession:Disable
    }

    method Jmb2PartyFramesM1P()
    {
        relay jmb1 "WindowCharacteristics -stealth -pos -viewable 2560,0 -size -viewable 640x270 -frame none "
        relay jmb3 "WindowCharacteristics -stealth -pos -viewable 2560,270 -size -viewable 640x270 -frame none "
        relay jmb4 "WindowCharacteristics -stealth -pos -viewable 2560,540 -size -viewable 640x270 -frame none "
        relay jmb5 "WindowCharacteristics -stealth -pos -viewable 2560,810 -size -viewable 640x270 -frame none "
        relay jmb6 "WindowCharacteristics -pos -viewable 3200,0 -size -viewable 640x270 -frame none "
        relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
    }

    method Jmb2PartyFramesM1R()
    {
        relay party LGUI2:LoadJSON["${LGUI2.Template[brr.partyButtons].AsJSON~}"]
    }

    method Jmb2PartyFramesM2P()
    {
        relay party "WindowCharacteristics -stealth -pos -viewable 0,0 -size -viewable 2560x1080 -frame none "
        relay jmb6 "WindowCharacteristics -pos -viewable 2560,0 -size -viewable 1280x1080 -frame none "
        relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
    }

    method Jmb2PartyFramesM2R()
    {
        relay party LGUI2:LoadJSON["${LGUI2.Template[brr.mouse2Buttons].AsJSON~}"]
    }

    method Jmb3PartyFramesM1P()
    {
        relay jmb2 "WindowCharacteristics -stealth -pos -viewable 2560,0 -size -viewable 640x270 -frame none "
        relay jmb1 "WindowCharacteristics -stealth -pos -viewable 2560,270 -size -viewable 640x270 -frame none "
        relay jmb4 "WindowCharacteristics -stealth -pos -viewable 2560,540 -size -viewable 640x270 -frame none "
        relay jmb5 "WindowCharacteristics -stealth -pos -viewable 2560,810 -size -viewable 640x270 -frame none "
        relay jmb6 "WindowCharacteristics -pos -viewable 3200,0 -size -viewable 640x270 -frame none "
        relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
    }

    method Jmb3PartyFramesM1R()
    {
        relay party LGUI2:LoadJSON["${LGUI2.Template[brr.partyButtons].AsJSON~}"]
    }

    method Jmb3PartyFramesM2P()
    {
        relay party "WindowCharacteristics -stealth -pos -viewable 0,0 -size -viewable 2560x1080 -frame none "
        relay jmb6 "WindowCharacteristics -pos -viewable 2560,0 -size -viewable 1280x1080 -frame none "
        relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
    }

    method Jmb3PartyFramesM2R()
    {
        relay party LGUI2:LoadJSON["${LGUI2.Template[brr.mouse2Buttons].AsJSON~}"]
    }

    method Jmb4PartyFramesM1P()
    {
        relay jmb2 "WindowCharacteristics -stealth -pos -viewable 2560,0 -size -viewable 640x270 -frame none "
        relay jmb3 "WindowCharacteristics -stealth -pos -viewable 2560,270 -size -viewable 640x270 -frame none "
        relay jmb1 "WindowCharacteristics -stealth -pos -viewable 2560,540 -size -viewable 640x270 -frame none "
        relay jmb5 "WindowCharacteristics -stealth -pos -viewable 2560,810 -size -viewable 640x270 -frame none "
        relay jmb6 "WindowCharacteristics -pos -viewable 3200,0 -size -viewable 640x270 -frame none "
        relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
    }

    method Jmb4PartyFramesM1R()
    {
        relay party LGUI2:LoadJSON["${LGUI2.Template[brr.partyButtons].AsJSON~}"]
    }

    method Jmb4PartyFramesM2P()
    {
        relay party "WindowCharacteristics -stealth -pos -viewable 0,0 -size -viewable 2560x1080 -frame none "
        relay jmb6 "WindowCharacteristics -pos -viewable 2560,0 -size -viewable 1280x1080 -frame none "
        relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
    }

    method Jmb4PartyFramesM2R()
    {
        relay party LGUI2:LoadJSON["${LGUI2.Template[brr.mouse2Buttons].AsJSON~}"]
    }

    method Jmb5PartyFramesM1P()
    {
        relay jmb2 "WindowCharacteristics -stealth -pos -viewable 2560,0 -size -viewable 640x270 -frame none "
        relay jmb3 "WindowCharacteristics -stealth -pos -viewable 2560,270 -size -viewable 640x270 -frame none "
        relay jmb4 "WindowCharacteristics -stealth -pos -viewable 2560,540 -size -viewable 640x270 -frame none "
        relay jmb1 "WindowCharacteristics -stealth -pos -viewable 2560,810 -size -viewable 640x270 -frame none "
        relay jmb6 "WindowCharacteristics -pos -viewable 3200,0 -size -viewable 640x270 -frame none "
        relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
    }

    method Jmb5PartyFramesM1R()
    {
        relay party LGUI2:LoadJSON["${LGUI2.Template[brr.partyButtons].AsJSON~}"]
    }

    method Jmb5PartyFramesM2P()
    {
        relay party "WindowCharacteristics -stealth -pos -viewable 0,0 -size -viewable 2560x1080 -frame none "
        relay jmb6 "WindowCharacteristics -pos -viewable 2560,0 -size -viewable 1280x1080 -frame none "
        relay all LGUI2.Element["basicRoundRobin.allButtons"]:Destroy
    }

    method Jmb5PartyFramesM2R()
    {
        relay party LGUI2:LoadJSON["${LGUI2.Template[brr.mouse2Buttons].AsJSON~}"]
    }
}

