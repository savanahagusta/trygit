  
            var test="TAPP";
            var delay=80;
            var currentChar=1;
            var destination1="[none]";
            function type()
            {
            //if (document.all)
            {
            var dest=document.getElementById(destination1);
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
            test=textParam;
            delay=delayParam;
            currentChar=1;
            destination1=destinationParam;
            type();
            }
   