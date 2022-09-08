function addrec() {
    var table = document.getElementById("tab");
    var row = table.insertRow();
    var rno = row.insertCell();
    var name = row.insertCell();

    var d1 = document.getElementById("d1").value;
    var d2 = document.getElementById("d2").value;
    // console.log(d1);
    // console.log(d2);

    rno.innerHTML = d1;
    name.innerHTML = d2;

    const inputs = document.querySelectorAll('#d1, #d2');
    inputs.forEach(input => {
        input.value = '';
    });

}

function delrec() {
    var t = document.getElementById("tab");
    var rC = t.rows.length;
    t.deleteRow(rC - 1);
    console.log(rC);
}
