objectdef bghUplink
{
    variable filepath GlobalFolder="${LavishScript.HomeDirectory}"
    variable jsonvalue GlobalHotkeys="[]"
    variable string NextWindowKey="Ctrl+Alt+X"
    variable string PreviousWindowKey="Ctrl+Alt+Z"
    variable bool Enabled=1

    method Initialize()
    {
        This:LoadSettings

        LGUI2:LoadPackageFile[xBGH.Uplink.lgui2Package.json]
        LGUI2.Element[bgh.filename]:SetText["${GlobalFolder.Replace["/","\\"]~}\\Configuration\\Settings\\bgh.Settings.json"]
    }
    
    method Shutdown()
    {
        This:Disable
        LGUI2:UnloadPackageFile[xBGH.Uplink.lgui2Package.json]
    }

    method LoadSettings()
    {
        variable jsonvalue jo

        if !${GlobalFolder.FileExists[\\Configuration\\Settings\\bgh.Settings.json]}
        {
            jo:SetValue["$$>
            {
                "globalHotkeys":[
                    "Ctrl+Alt+1",
                    "Ctrl+Alt+2",
                    "Ctrl+Alt+3",
                    "Ctrl+Alt+4",
                    "Ctrl+Alt+5",
                    "Ctrl+Alt+6",
                    "Ctrl+Alt+7",
                    "Ctrl+Alt+8",
                    "Ctrl+Alt+9",
                    "Ctrl+Alt+0",
                    "Ctrl+Alt+-",
                    "Ctrl+Alt+=",
                ],
                "previousWindowHotkey":"Ctrl+Alt+Z",
                "nextWindowHotkey":"Ctrl+Alt+X"
            }
            <$$"]

            jo:WriteFile["${GlobalFolder~}/Configuration/Settings/bgh.Settings.json",multiline]
        }

        if !${jo:ParseFile["${GlobalFolder~}/Configuration/Settings/bgh.Settings.json"](exists)} || !${jo.Type.Equal[object]}
        {
            return
        }

        GlobalHotkeys:SetValue["${jo.Get["globalHotkeys"].AsJSON~}"]
        if ${jo.Has[nextWindowHotkey]}
            NextWindowKey:Set["${jo.Get["nextWindowHotkey"]~}"]
        if ${jo.Has[previousWindowHotkey]}
            PreviousWindowKey:Set["${jo.Get["previousWindowHotkey"]~}"]

        if !${GlobalHotkeys.Type.Equal[array]}
            GlobalHotkeys:SetValue["[]"]
    }

    method StoreSettings()
    {
        variable jsonvalue jo
        jo:SetValue["${This.AsJSON~}"]
        jo:WriteFile["${GlobalFolder~}/Configuration/Settings/bgh.Settings.json",multiline]
    }

    member AsJSON()
    {
        variable jsonvalue jo="{}"
        jo:Set["globalHotkeys","${GlobalHotkeys.AsJSON~}"]
        jo:Set["nextWindowHotkey","${NextWindowKey.AsJSON~}"]
        jo:Set["previousWindowHotkey","${PreviousWindowKey.AsJSON~}"]
        return "${jo.AsJSON~}"
    }

    method Enable()
    {
        if ${Enabled}
            return

        Enabled:Set[1]
        
        relay all BGHSession:InstallHotkey
    }

    method Disable()
    {
        if !${Enabled}
            return
        Enabled:Set[0]
        relay all BGHSession:UninstallHotkey
    }

    method HideUI()
    {
        LGUI2.Element[bgh.window]:SetVisibility[hidden]
    }
}

variable(global) bghUplink BGHUplink

function main()
{
    while 1
        waitframe
}