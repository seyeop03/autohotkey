
#IfWinActive ahk_exe Typora.exe
{
         ; Ctrl + Alt + O orange
    ^!o::addFontColor("orange")

         ; Ctrl + Alt + R red
    ^!r::addFontColor("red")

         ; Ctrl + Alt + B blue
    ^!b::addFontColor("blue")

         ; Ctrl + Alt + P purple
    ^!p::addFontColor("purple")
}


addFontColor(color){

    Send {ctrl down} c {ctrl up}
    SendInput {TEXT}<span style="color: %color%">

         Sendinput {ctrl down} v {ctrl up}
    If(clipboard = ""){
                 Sendinput {text}</ font>
    }else{
                 Sendinput {text}</
    }
}

addBackgroundColor(color){

    Send {ctrl down} c {ctrl up}
    SendInput {TEXT}<span style="background-color: %color%">

         Sendinput {ctrl down} v {ctrl up}
    If(clipboard = ""){
                 Sendinput {text}</ font>
    }else{
                 Sendinput {text}</
    }
}


{
  
    !1::addBackgroundColor("yellow")

    !2::addBackgroundColor("aqua") 

    !3::addBackgroundColor("lime")

}