//========= Copyright © 1996-2001, Valve LLC, All rights reserved. ============
//
// Purpose: 
//
// $NoKeywords: $
//=============================================================================

#ifndef VGUI_REPAINTSIGNAL_H
#define VGUI_REPAINTSIGNAL_H



namespace vgui
{

class RepaintSignal
{
public:
	virtual void panelRepainted(Panel* panel)=0;
};

}


#endif