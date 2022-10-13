function display(message){
    var count = 0;
    var printout = "";
    var interval = setInterval(function(){
        printout += message[count];
        document.getElementById("inside-p").textContent = printout;
        count++;
        if (count > message.length - 1){
            clearInterval(interval);
        }
    }, 50);
}

var text = "Has Anyone Really Been Far Even as Decided to Use Even Go Want to do Look More Like?";

display(text);