
function sendEmail(){
    let firstname = document.getElementById("firstname").value;
    let lastname = document.getElementById("lastname").value;
    let email = document.getElementById("email").value;
    let phone = document.getElementById("phonenumber").value;
    let message = document.getElementById("message").value;
   
    Email.send({
        SecureToken : "923c4b85-5eeb-4d3c-89dc-b556a1596e16",
        To : 'ellie.li201607@gmail.com',
        From : email,
        Subject : "Message from " + firstname +" "+ lastname,
        Body : `<h4>The phone number is ${phone}</h4><h4>The message is: </h4><p>${message}</p>`
    }).then(
    res => alert(res)
    );
}
