  
            var text="Aplikasi TAPP";
            var delay=80;
            var currentChar=1;
            var destination="[none]";
            function type()
            {
            //if (document.all)
            {
            var dest=document.getElementById(destination);
            if (dest)// && dest.innerHTML)
            {
            dest.innerHTML=text.substr(0, currentChar)+"<blink>...</blink>";
            currentChar++;
            if (currentChar>text.length)
            {
            currentChar=1;
            setTimeout("type()", 1000);
            }
            else
            {
            setTimeout("type()", delay);
            }
            }
            }
            }
            function startTyping(textParam, delayParam, destinationParam)
            {
            text=textParam;
            delay=delayParam;
            currentChar=1;
            destination=destinationParam;
            type();
            }
   