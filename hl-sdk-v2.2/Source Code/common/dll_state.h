//========= Copyright ? 1996-2001, Valve LLC, All rights reserved. ============
//
// Purpose: 
//
// $NoKeywords: $
//=============================================================================

//DLL State Flags

#define DLL_INACTIVE 0		// no dll
#define DLL_ACTIVE   1		// dll is running
#define DLL_PAUSED   2		// dll is paused
#define DLL_CLOSE    3		// closing down dll
#define DLL_TRANS    4 		// Level Transition

// DLL Pause reasons

#define DLL_NORMAL        0   // User hit Esc or something.
#define DLL_QUIT          4   // Quit now

// DLL Substate info ( not relevant )
#define ENG_NORMAL         (1<<0)
