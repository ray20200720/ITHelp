$answer = MsgBox(4, "AutoIt Example (����)", "���{���|���}�p��L����J 2 x 4 x 8 x 16 �����}�A�n�����?")

; �Y�b MsgBox ����uNO�v�|�Ǧ^ 7
If $answer = 7 Then
MsgBox(0, "AutoIt", "OK. Bye!")
Exit
EndIf

; Run the calculator
Run("calc.exe")

;���ݦ��u�p��L�v�r�ꬰ���D�������X�{
WinWaitActive("�p��L")

;�]�w���䪺���j�ɶ�
AutoItSetOption("SendKeyDelay", 400)
;�e�X�u2*4*8*16=�v�A�ð���2��
Send("2*4*8*16=")
Sleep(2000)

;�N�u�p��L�v����
WinClose("�p��L")