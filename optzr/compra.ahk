; Declaração de variáveis globais
global savedX := 0
global savedY := 0

; Pressione J para salvar a posição atual do mouse
j::
    MouseGetPos, savedX, savedY
    Tooltip, Posição salva: %savedX%, %savedY%
    Sleep, 1000  ; Tooltip será exibido por 1 segundo
    Tooltip  ; Remove o tooltip
return

; Pressione B para clicar na posição salva e voltar à posição original
b::
    if (savedX != 0) && (savedY != 0)
    {
        ; Salva a posição atual do mouse
        MouseGetPos, currentX, currentY

        ; Move para a posição salva e clica
        MouseMove, %savedX%, %savedY%, 0  ; 0 = movimento instantâneo
        MouseClick, left

        ; Volta para a posição original
        MouseMove, %currentX%, %currentY%, 0
    }
    else
    {
        Tooltip, Nenhuma posição salva ainda!
        Sleep, 1000  ; Tooltip será exibido por 1 segundo
        Tooltip  ; Remove o tooltip
    }
return