//=========== (C) Copyright 1996-2001, Valve, L.L.C. All rights reserved. ===========
//
// The copyright to the contents herein is the property of Valve, L.L.C.
// The contents may be used and/or copied only with the written permission of
// Valve, L.L.C., or in accordance with the terms and conditions stipulated in
// the agreement/contract under which the contents have been supplied.
//
// Purpose: Functionality for the observer chase camera
//
// $Workfile:     $
// $Date:         $
//
//-----------------------------------------------------------------------------
// $Log: $
//
// $NoKeywords: $
//=============================================================================
#include	"extdll.h"
#include	"util.h"
#include	"cbase.h"
#include	"player.h"

// Find the next client in the game for this player to spectate
void CBasePlayer::Observer_FindNextPlayer()
{
	// MOD AUTHORS: Modify the logic of this function if you want to restrict the observer to watching
	//				only a subset of the players. e.g. Make it check the target's team.

	CBaseEntity *client = m_hObserverTarget;
	while ( (client = (CBaseEntity*)UTIL_FindEntityByClassname( client, "player" )) != m_hObserverTarget ) 
	{
		if ( !client )
			continue;
		if ( !client->pev )
			continue;
		if ( client == this )
			continue;

		// Add checks on target here.

		m_hObserverTarget = client;
		break;
	}

	// Did we find a target?
	if ( m_hObserverTarget )
	{
		// Store the target in pev so the physics DLL can get to it
		pev->iuser2 = ENTINDEX( m_hObserverTarget->edict() );
		// Move to the target
		UTIL_SetOrigin( pev, m_hObserverTarget->pev->origin );

		ALERT( at_console, "Now Tracking %s\n", STRING( m_hObserverTarget->pev->classname ) );
	}
	else
	{
		ALERT( at_console, "No observer targets.\n" );
	}
}

// Handle buttons in observer mode
void CBasePlayer::Observer_HandleButtons()
{
	// Slow down mouse clicks
	if ( m_flNextObserverInput > gpGlobals->time )
		return;

	// Jump changes from modes: Chase to Roaming
	if ( m_afButtonPressed & IN_JUMP )
	{
		if ( pev->iuser1 == OBS_ROAMING )
			Observer_SetMode( OBS_CHASE_LOCKED );
		else if ( pev->iuser1 == OBS_CHASE_LOCKED )
			Observer_SetMode( OBS_CHASE_FREE );
		else
			Observer_SetMode( OBS_ROAMING );
	}

	// Attack moves to the next player
	if ( m_afButtonPressed & IN_ATTACK )
	{
		Observer_FindNextPlayer();
	}
 
	m_flNextObserverInput = gpGlobals->time + 0.3;
}

// Attempt to change the observer mode
void CBasePlayer::Observer_SetMode( int iMode )
{
	// Just abort if we're changing to the mode we're already in
	if ( iMode == pev->iuser1 )
		return;

	// Changing to Roaming?
	if ( iMode == OBS_ROAMING )
	{
		// MOD AUTHORS: If you don't want to allow roaming observers at all in your mod, just return here.
		pev->iuser1 = OBS_ROAMING;

		ClientPrint( pev, HUD_PRINTCENTER, "Switched to CLASSIC observer mode" );
		return;
	}

	// Changing to Chase Lock?
	if ( iMode == OBS_CHASE_LOCKED )
	{
		// If changing from Roaming, or starting observing, make sure there is a target
		if ( pev->iuser1 != OBS_CHASE_FREE )
			Observer_FindNextPlayer();

		if (m_hObserverTarget)
		{
			pev->iuser1 = OBS_CHASE_LOCKED;
			ClientPrint( pev, HUD_PRINTCENTER, "Switched to LOCKED chase mode" );
		}
		else
		{
			ClientPrint( pev, HUD_PRINTCENTER, "No valid targets\nCan not switch to CHASE MODE"  );
		}

		return;
	}

	// Changing to Chase Freelook?
	if ( iMode == OBS_CHASE_FREE )
	{
		// If changing from Roaming, or starting observing, make sure there is a target
		if ( pev->iuser1 != OBS_CHASE_LOCKED )
			Observer_FindNextPlayer();

		if (m_hObserverTarget)
		{
			pev->iuser1 = OBS_CHASE_FREE;
			ClientPrint( pev, HUD_PRINTCENTER, "Switched to FREELOOK chase mode" );
		}
		else
		{
			ClientPrint( pev, HUD_PRINTCENTER, "No valid targets\nCan not switch to CHASE MODE"  );
		}

		return;
	}
}