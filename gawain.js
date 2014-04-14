window.onload = init;

//http://www.laurencegellert.com/2012/01/associative-arrays-in-javascript/
var colors = {
};
// denotes an Object is being created
colors.Chivalry = 'green';
colors.Christian = 'blue';
colors.Folklore = 'red';
colors.Nature = 'orange';
colors.Pagan = 'black';
colors.Mythological = 'purple';

function init() {
    var triggers = document.getElementsByClassName('trigger');
    for (var i = 0; i < triggers.length; i++) {
        triggers[i].addEventListener('click', toggle, false);
    }
}
function toggle() {
    var objects = document.getElementsByClassName(this.innerHTML);
    //console.log(colors[this.innerHTML]);
    for (var i = 0; i < objects.length; i++) {
        if (objects[i].getAttribute('stroke') == 'none' || objects[i].getAttribute('fill') == 'none') {
            if (objects[i].hasAttribute('stroke')) {
                objects[i].setAttribute('stroke', colors[this.innerHTML]);
            }
            if (objects[i].hasAttribute('fill')) {
                objects[i].setAttribute('fill', colors[this.innerHTML]);
            }
        } else {
            if (objects[i].hasAttribute('stroke')) {
                objects[i].setAttribute('stroke','none');
            }
            if (objects[i].hasAttribute('fill')) {
                objects[i].setAttribute('fill','none');
            }
        }
    }
}
