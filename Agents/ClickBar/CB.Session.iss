#include "CB.Common.iss"

objectdef cbSession
{
    variable filepath GlobalFolder="${LavishScript.HomeDirectory}"
    variable cbSettings Settings
    variable bool Enabled=0

    method Initialize()
    {
        LavishScript:RegisterEvent[OnFrame]
        Event[OnFrame]:AttachAtom[This:OnFrame]

        LGUI2:LoadPackageFile[xCB.Session.lgui2package.json]        
        LGUI2:LoadPackageFile[xPF.Session.lgui2package.json]
    }

    method Shutdown()
    {
        LGUI2:UnloadPackageFile[xCB.Session.lgui2package.json]
        LGUI2:UnloadPackageFile[xPF.Session.lgui2package.json]
    }

    method Toggles()
    {
        LGUI2:LoadJSON["${LGUI2.Element[toggles].AsJSON~}"]
    }

    method Actionbars()
    {
        LGUI2:LoadJSON["${LGUI2.Element[actionbars].AsJSON~}"]
    }

    method ShowPartyFrames()
    {
        variable uint NumAdded
        variable uint num=1
        for (NumAdded:Set[1] ; ${NumAdded}<=${JMB.Slots.Used:Dec} ; NumAdded:Inc)
        {
            relay jmb${num} LGUI2.Element[jmb${num}.partyframes]:SetVisibility[visible]
            num:Inc
        }
    }

    method ShowPartyFrames2()
    {
        variable uint NumAdded
        variable uint num=1
        
        for (NumAdded:Set[1] ; ${NumAdded}<=${JMB.Slots.Used:Dec} ; NumAdded:Inc)
        {
            relay jmb${num} LGUI2.Element[jmb${num}.partyframes]:SetVisibility[visible]
            num:Inc
        }
        relay party LGUI2.Element[roundrobin]:SetVisibility[visible]
        relay party LGUI2.Element[actionbars]:SetVisibility[visible] 
    }

    method HidePartyFrames()
    {
        variable uint NumAdded
        variable uint num=1
        for (NumAdded:Set[1] ; ${NumAdded}<=${JMB.Slots.Used:Dec} ; NumAdded:Inc)
        {
            relay all LGUI2.Element[jmb${num}.partyframes]:SetVisibility[hidden]
            num:Inc
        }
    }

    method HidePartyFrames2()
    {
        variable uint NumAdded
        variable uint num=1
        ; for (NumAdded:Set[1] ; ${NumAdded}<=${JMB.Slots.Used:Dec} ; NumAdded:Inc)
        ; {
            ; relay all LGUI2.Element[jmb${num}.partyframes]:SetVisibility[hidden]
            ; num:Inc
        ; }
        relay all LGUI2.Element[jmb1.partyframes]:SetVisibility[hidden]
        relay all LGUI2.Element[roundrobin]:SetVisibility[hidden]
        relay all LGUI2.Element[roundrobin]:SetVisibility[hidden]
        relay all LGUI2.Element[actionbars]:SetVisibility[hidden]
    }


    method OnFrame()
    {
           
    }
}

variable(global) cbSession CBSession

function main()
{
    while 1
        waitframe
}