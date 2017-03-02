var myWindow;

function openWin() {
    myWindow = window.open("", "", "width=250, height=250");
}

function resizeWin() {
    myWindow.resizeTo(250, 430);                             // Resizes the new window
    myWindow.focus();                                        // Sets focus to the new window
}
