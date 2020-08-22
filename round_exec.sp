#include <sourcemod>
#include <sdktools>

#define PLUGIN_VERSION "1.0.0"

public Plugin myinfo =
{
	name = "Round Start Exec",
	author = "bryson",
	description = "yeah it does a thing",
	version = PLUGIN_VERSION,
	url = "cantfraglike.me"
}

public OnPluginStart()
{
    PrintToServer("Round Start Fix Loaded");
}

public OnMapStart()
{
	ServerCommand("sm_cvar spec_freeze_time -1");
	ServerCommand("of_instantrespawn 1");
	ServerCommand("sm_cvar spec_freeze_traveltime 0");
	PrintToServer("Round Start Fix Activated!");
}