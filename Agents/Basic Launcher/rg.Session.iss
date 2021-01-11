#include "BL.Common.iss"

objectdef rgSession
{
    variable blSettings rgSettings

    method Initialize()
    {    

    }

    method JoinRelayGroup1()
    {
        uplink relaygroup -join party
        uplink relaygroup -join tank
        uplink relaygroup -join melee
        uplink relaygroup -join monk
    }
    method JoinRelayGroup2()
    {
        uplink relaygroup -join party
        uplink relaygroup -join healer
        uplink relaygroup -join ranged
        uplink relaygroup -join priest
    }
    method JoinRelayGroup3()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join ranged
        uplink relaygroup -join mage
    }
    method JoinRelayGroup4()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join ranged
        uplink relaygroup -join warlock
    }
    method JoinRelayGroup5()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join melee
        uplink relaygroup -join warrior
    }

    method JoinRelayGroup6()
    {
        uplink relaygroup -join party
        uplink relaygroup -join tank
        uplink relaygroup -join melee
        uplink relaygroup -join monk
    }
    method JoinRelayGroup7()
    {
        uplink relaygroup -join party
        uplink relaygroup -join healer
        uplink relaygroup -join ranged
        uplink relaygroup -join priest
    }
    method JoinRelayGroup8()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join ranged
        uplink relaygroup -join mage
    }
    method JoinRelayGroup9()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join ranged
        uplink relaygroup -join warlock
    }
    method JoinRelayGroup10()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join melee
        uplink relaygroup -join warrior
    }

    method JoinRelayGroup11()
    {
        uplink relaygroup -join party
        uplink relaygroup -join tank
        uplink relaygroup -join melee
        uplink relaygroup -join monk
    }
    method JoinRelayGroup12()
    {
        uplink relaygroup -join party
        uplink relaygroup -join healer
        uplink relaygroup -join ranged
        uplink relaygroup -join priest
    }
    method JoinRelayGroup13()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join ranged
        uplink relaygroup -join mage
    }
    method JoinRelayGroup14()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join ranged
        uplink relaygroup -join warlock
    }
    method JoinRelayGroup15()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join melee
        uplink relaygroup -join warrior
    }

    method JoinRelayGroup16()
    {
        uplink relaygroup -join party
        uplink relaygroup -join tank
        uplink relaygroup -join melee
        uplink relaygroup -join monk
    }
    method JoinRelayGroup17()
    {
        uplink relaygroup -join party
        uplink relaygroup -join healer
        uplink relaygroup -join ranged
        uplink relaygroup -join priest
    }
    method JoinRelayGroup18()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join ranged
        uplink relaygroup -join mage
    }
    method JoinRelayGroup19()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join ranged
        uplink relaygroup -join warlock
    }
    method JoinRelayGroup20()
    {
        uplink relaygroup -join party
        uplink relaygroup -join dps
        uplink relaygroup -join melee
        uplink relaygroup -join warrior
    }
}

variable(global) rgSession RGSession

function main()
{
    
    while 1
        waitframe
}
    

