$Shift:: ; Quando 'Shift' for pressionada...
    SendInput {Shift Down} ; Mantém 'Shift' pressionada
    Loop ; Inicia um loop contínuo
    {
        Sleep, 10 ; Pequena pausa para não consumir muitos recursos
        If GetKeyState("a", "P") or GetKeyState("s", "P") or GetKeyState("w", "P") or GetKeyState("d", "P") or GetKeyState("t", "P") or GetKeyState("c", "P") or GetKeyState("z", "P") or GetKeyState("Tab", "P") or GetKeyState("m", "P") or GetKeyState("v", "P") ; Se alguma das teclas especificadas for pressionada...
        {
            SendInput {Shift Up} ; Solta 'Shift'
            Break ; Sai do loop
        }
    }
return