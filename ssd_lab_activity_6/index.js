function sn_check() {
    var sn = document.getElementById("s_uname");
    var upperCaseLetters = /[A-Z]/g;
    if (sn.value.match(upperCaseLetters)) {
        sn.style.border = "5px solid green";
        console.log("Upper");
    }
    else {
        sn.style.border = "5px solid red";
        console.log("Upper red");
    }

    var numbers = /[0-9]/g;
    if (sn.value.match(numbers)) {
        sn.style.border = "5px solid green";
        console.log("number green");
    }
    else {
        sn.style.border = "5px solid red";
        console.log("number red");
    }


}



/////////////

function validatePassword() {


    var password = document.getElementById("psw")
        , confirm_password = document.getElementById("psw-confirm");

    if (password.value != confirm_password.value) {
        confirm_password.setCustomValidity("Passwords Don't Match");
    } else {
        confirm_password.setCustomValidity('');
    }
}


///////////////////////////////////
function dragStartHandler(event) {
    //   e.preventDefault();
    event.dataTransfer.setData('draggedElementId', event.target.id);
    //   console.log(event.target);
}

function dragOverHandler(event) {
    event.preventDefault();
}

function dropHandler(event) {
    event.preventDefault();

    var elementId = event.dataTransfer.getData('draggedElementId');
    event.target.appendChild(document.getElementById(elementId));
}

///////////////

function finalmsg() {

    var name = document.getElementById("mn").value;
    var email = document.getElementById("g_email").value;
    var username = document.getElementById("s_uname").value;
    var teamlead = document.getElementById("TL").value;
    var teammember = document.getElementById("tmm").value;

    alert("Name : " + name + " \n email:   " + email + " \n  username: " + username + " \n teamlead: " + teamlead + " \n team-member:  " + teammember);

}

////////////////

function myFunction() {
    var element = document.body;
    element.classList.toggle("dark-mode");
}

////

window.addEventListener('keypress', (e) => {
    console.log(e)
    if (e.ctrlKey && e.code == 'KeyM') {
        myFunction();
    }
});