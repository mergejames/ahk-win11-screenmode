TraySetIcon("Win11-Project.png")
OnMessage(0x404, "AHK_NOTIFYICON")
AHK_NOTIFYICON(wParam, lParam, uMsg, hWnd)
{
	if (lParam = 0x201) ;WM_LBUTTONDOWN := 0x201
	{
		Send #p
	}
}
TraySetIcon(FileName:="", IconNumber:="", Freeze:="")
{
    Menu Tray, Icon, %FileName%, %IconNumber%, %Freeze%
}