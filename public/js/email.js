
function sendEmail(){
    

    let firstname = document.getElementById("firstname").value;
    let lastname = document.getElementById("lastname").value;
    let email = document.getElementById("email").value;
    let phone = document.getElementById("phonenumber").value;
    let message = document.getElementById("message").value;
    
    let emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
    
    document.getElementById('emailerror').innerHTML = '';
    document.getElementById('firstnameerror').innerHTML = '';
    document.getElementById('lastnameerror').innerHTML = '';

    if (email.length == 0) {
            document.getElementById('emailerror').innerHTML = "Please type in email address";
            return 
        }
    if (firstname == 0) {
            document.getElementById('firstnameerror').innerHTML = "Please type in first name";
            return 
        }

    if (lastname == 0) {
            document.getElementById('lastnameerror').innerHTML = "Please type in last name";
            return 
        }

    if(!emailReg.test( email )){
            document.getElementById('emailerror').innerHTML = "The email address is invalid";
            return
        }
    
    else{
        Email.send({
            SecureToken : "923c4b85-5eeb-4d3c-89dc-b556a1596e16",
            To : 'ellie.li201607@gmail.com',
            From : 'yijv2013@gmail.com',
            Subject : "Message from " + firstname +" "+ lastname,
            Body : `<h4>The phone number is ${phone}</h4><h4>The message is: </h4><p>${message}</p><h4>The email address is : ${email}</h4>`
        }).then(
        res => alert(res)
        );
    }
}
