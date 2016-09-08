window.onload = function(){
    var i, p, text;
    var js = document.getElementById("js");
    for(i = 0; i < 10; i++){
        p = document.createElement("p");
        text = document.createTextNode("Hello, world! :" + (i + 1));
        p.appendChild(text);
        js.appendChild(p);
    }
};
