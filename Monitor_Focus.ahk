#Requires AutoHotkey v2.0
#SingleInstance Force

^!1::FocusMonitor(1)
^!2::FocusMonitor(2)

FocusMonitor(monitorNum) {
    MonitorGet(monitorNum, &left, &top, &right, &bottom)

    centerX := (left + right) // 2
    centerY := (top + bottom) // 2

    ; Move mouse instantly to the target monitor
    MouseMove(centerX, centerY, 0)

    ; Activate the window under the mouse
    hwnd := MouseGetPos(,, &win)
    if win
        WinActivate(win)
}
