$answer = MsgBox(4, "AutoIt Example (中文)", "此程式會打開小算盤並鍵入 2 x 4 x 8 x 16 後離開，要執行嗎?")

; 若在 MsgBox 中選「NO」會傳回 7
If $answer = 7 Then
MsgBox(0, "AutoIt", "OK. Bye!")
Exit
EndIf

; Run the calculator
Run("calc.exe")

;等待有「小算盤」字串為標題的視窗出現
WinWaitActive("小算盤")

;設定按鍵的間隔時間
AutoItSetOption("SendKeyDelay", 400)
;送出「2*4*8*16=」，並停住2秒
Send("2*4*8*16=")
Sleep(2000)

;將「小算盤」關掉
WinClose("小算盤")