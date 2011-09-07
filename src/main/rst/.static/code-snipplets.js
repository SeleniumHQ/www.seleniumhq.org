var preferenceFollower;

$(document).ready(function() {
    //Hide the introductory text (which is useful in the pdf version)
    $(".toggled p").hide();

    //Hide the code and insert a button before it with the value equals to the class of the code
    languages = {'java':false,'csharp':false,'python':false,'ruby':false,'php':false,'perl':false}
    if (cookieSet("langPref")) {
        var set = getCookie("langPref").split(",");
        for (var i=0; i<set.length; i++) {
            languages[set[i]] = true;
        }
    } else {
        // default to java being enabled
        languages['java'] = true;
        cookieCache['langPref'] = 'java';
    }
    for (language in languages) {
        $(".highlight-" + language).each(function(){
            //$('h3, p', this.parentNode).hide();
            $(this).before("<input type='image' class='toggler toggler-"+language+"' value='"+language+"' src='/images/icons/" +language+ ".png'/>");
            if (!languages[language]) $(this).hide();
            else {
                $(this).prev()[0].src = "/images/icons/highlight-" +language+ ".png";
            }
        });
    }
    $("#codeLanguagePreference input").each(togglePrefernce);
    //Make the button toggle the code display
    $(".toggler").bind("click", function(){
        if (this.src.indexOf("highlight") != -1) {
            this.src = this.src.replace("highlight-", "");
        } else {
            this.src = this.src.replace("icons/", "icons/highlight-");
        }
        $(this).next().slideToggle();
    }).css({"padding":"3px"});

    if (getCookie("LF") != "n") {
        $(window).scroll(function(){
            if ($(window).scrollTop() > 120) {
                if (preferenceFollower) {
                    $(preferenceFollower).removeClass("hidden");
                } else {
                    var c = $("#codeLanguagePreference");
                    preferenceFollower = c.parent()[0].insertBefore(document.createElement("div"), c[0])
                    preferenceFollower.id = c[0].id;
                    preferenceFollower.className = "follow";
                    preferenceFollower.innerHTML = c[0].innerHTML + 
                       "<a href=\"javascript:$(preferenceFollower)[0].style.visibility='hidden';" + 
                       "$(preferenceFollower)[0].innerHTML='';setCookie('LF','n');\">stop following me!</a>";
                    $("input", preferenceFollower).each(togglePrefernce);
                }
            } else {
                if (preferenceFollower) $(preferenceFollower).addClass("hidden");
            }
        
        });

    }
});

function togglePrefernce() {
    $(this).click(function(){
        if (this.src.indexOf("highlight") != -1) {
            $(".toggler-" + this.value).each(function(){
                this.src = this.src.replace("highlight-", "");
                $(this).next().hide();
            });
            this.src = this.src.replace("highlight-", "");
            removeLangCookie(this.value);
        } else {
            $(".toggler-" + this.value).each(function(){
                if (this.src.indexOf("highlight")==-1) this.src = this.src.replace("icons/", "icons/highlight-");
                $(this).next().show();
            });
            this.src = this.src.replace("icons/", "icons/highlight-");
            setLangCookie(this.value);
        }
    })
    if (languages[this.value]) this.src = "/images/icons/highlight-" +this.value+ ".png";
}

function setLangCookie(lang) {
    var cur = getCookie("langPref");
    if (cur.indexOf(lang) == -1) {
        if (cur.length) cur += ",";
        cur += lang;
        setCookie("langPref", cur);
    }
}
function removeLangCookie(lang) {
    var cur = getCookie("langPref");
    if (cur.indexOf(lang) != -1) {
        cur = cur.replace(lang, "").replace(",,", ",");
        if (cur[0] == ",") cur = cur.substring(1);
        if (cur[cur.length-1] == ",") cur = cur.substring(0, cur.length-1);
        setCookie("langPref", cur);
    }
}
function setCookie(name, value) {
    var date = new Date();
    date.setTime(date.getTime()+(365*24*60*60*1000));
    document.cookie = name+"="+value+"; expires="+date.toGMTString()+"; path=/";
    cookieCache[name] = value;
}

function cookieSet(name) {
    return document.cookie.indexOf(name + "=") != -1;
}

function getCookie(name) {
    if (typeof cookieCache[name] == "string") return cookieCache[name];
    var nameEQ = name+"=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) {
            cookieCache[name] = c.substring(nameEQ.length,c.length);
            return cookieCache[name];
        }
    }
    return "";
}
var cookieCache = {};

