/************************************************************************
*************************************************************************
IP Scrubber
Description:
    Scrubs IP information from being sent to other users so that
    client-side commands used to obtain user info cannot be used effectively.
*************************************************************************
*************************************************************************
This plugin is free software: you can redistribute 
it and/or modify it under the terms of the GNU General Public License as
published by the Free Software Foundation, either version 3 of the License, or
later version. 

This plugin is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this plugin.  If not, see <http://www.gnu.org/licenses/>.
*************************************************************************
*************************************************************************/
#pragma semicolon 1

#include <sourcemod>
#define PLUGIN_VERSION "1.1.0"

#pragma newdecls required

public Plugin myinfo = 
{
    name = "IP Scrubber",
    author = "Original by shavit, Modified by Mr.Silence",
    description = "Removes the IP address from being echoed out to game clients from the server.",
    version = PLUGIN_VERSION
}

public void OnPluginStart()
{
    // Hook all the things!
    HookEvent("player_connect", Player_Connect, EventHookMode_Pre);
}

public Action Player_Connect(Handle gameevent, const char[] Name, bool dB)
{
    // If our players are not bots...
    if (!GetEventBool(gameevent, "bot"))
    {
        // Make sure to set event strings properly
        char address[64];
        char name[MAX_NAME_LENGTH];
        char networkid[32];

        GetEventString(gameevent, "address", address, sizeof(address));
        GetEventString(gameevent, "name", name, sizeof(name));
        GetEventString(gameevent, "networkid", networkid, sizeof(networkid));

        // Log the IP address to any server-side logs.
        if (!StrEqual(address, ""))
        {
            LogToGame("\"%s<%d><%s><>\" connected, address \"%s\"", name, GetEventInt(gameevent, "userid"), networkid, address);
        }

        // Set the IP address as nothing, no need to have the IP broadcast to everyone on the server. 
        SetEventString(gameevent, "address", "");
        return Plugin_Changed;
    }
    return Plugin_Continue;
}