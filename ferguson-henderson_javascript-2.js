function init () {
    var bw = document.getElementsByClassName('BobAndWheel');
    for (i = 0; i < lis.length; i++) {
        lis[i].addEventListener('click', highlight, false)
    }
}
function highlight() {
    clearHighlights();
    var section = document.getElementsByClassName("bw");
    for (var i = 0; i < targets.length; i++) {
        targets[i].style.backgroundColor = "yellow";
    }
}

window.onload = init

