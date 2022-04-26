//========= Copyright � 1996-2001, Valve LLC, All rights reserved. ============
//
// Purpose: 
//
// $NoKeywords: $
//=============================================================================

#ifndef VGUI_RADIOBUTTON_H
#define VGUI_RADIOBUTTON_H

#include<VGUI.h>
#include<VGUI_ToggleButton.h>

namespace vgui
{

class VGUIAPI RadioButton : public ToggleButton
{
public:
	RadioButton(const char* text,int x,int y,int wide,int tall);
	RadioButton(const char* text,int x,int y);
protected:
	virtual void paintBackground();
};

}

#endif

