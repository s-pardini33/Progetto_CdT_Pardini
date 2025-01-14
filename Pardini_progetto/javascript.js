document.addEventListener("DOMContentLoaded", () => {
    const navItems = document.querySelectorAll("#navbar li");

    const divs = document.querySelectorAll("#bellearti, #intendio, #manzoni, #poesia, #notizie");

    const infoDivs = document.querySelectorAll(".info");

    // Funzione per mostrare un div e nascondere gli altri
    const showDiv = (index) => {
        divs.forEach((div, i) => {
            if (i === index) {
                div.style.display = "block";
            } else {
                div.style.display = "none";
            }
        });

        infoDivs.forEach((info, i) => {
            if (i === index) {
                info.style.display = "block";
            } else {
                info.style.display = "none";
            }
        });
    };

    showDiv(0);

    // Aggiungo l'evento click a ciascun <li>
    navItems.forEach((li, index) => {
        li.addEventListener("click", () => {
            showDiv(index);
        });
    });

    //se cambio articolo si resettano i fenomeni notevoli
    const tuttiLi = document.querySelectorAll("li");
    tuttiLi.forEach(function(li) {
        li.addEventListener("click", function() {
            const spans = document.querySelectorAll("span");
            for (let i = 0; i < spans.length; i++) {
                spans[i].style.backgroundColor = "";
            }

            const expanElements = document.querySelectorAll("#expan");
            for (let i = 0; i < expanElements.length; i++) {
                expanElements[i].style.display = "none";
            }
    });

    //Id degli elementi da nascondere
    const hideMap = {
        0: ["occupazioni", "titolo", "regioni", "cit", "org", "continenti", "q", "bibl", "glosse", "note"], // Primo <li>
        1: ["occupazioni", "nazionalita", "quadri", "q", "regioni", "org", "nazioni", "straniera", "continenti"],
        2: ["occupazioni", "nazionalita", "quadri", "straniera", "org", "continenti", "abbr", "note"],
        3: ["occupazioni", "nazionalita", "quadri", "straniera", "org", "continenti", "q", "bibl", "glosse", "note"],
        4: ["nazionalita", "quadri", "straniera", "term", "cit", "q", "regioni", "glosse", "note"],
    };

    const listItems = document.querySelectorAll("li");

    const allIds = ["persone", "titolo", "cit", "nazioni", "term", "citta", "regioni", "date", "abbr", "occupazioni", "nazionalita", "quadri", "straniera", "org", "continenti", "q", "bibl", "glosse", "note"];

        function hideElements(ids) {
            ids.forEach(id => {
                const element = document.getElementById(id);
                if (element) {
                    element.style.display = "none";
                }
            });
        }
    
        function showElements(ids) {
            ids.forEach(id => {
                const element = document.getElementById(id);
                if (element) {
                    element.style.display = "block";
                }
            });
        }
    
        hideElements(hideMap[0]);
    
        listItems.forEach((li, index) => {
            li.addEventListener("click", function () {
                showElements(allIds);
    
                hideElements(hideMap[index] || []);
            });
        });
});
});

window.onload = function() {
    let on_date;
    document.getElementById("date").addEventListener("click", function() {
        if (on_date=="no" || on_date== null) {
            const elements = document.getElementsByClassName("ev_date");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#FBF8CC";
            }
            on_date="yes";
        } else {
            const elements = document.getElementsByClassName("ev_date");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_date="no";
        };
    });

    let on_citta;
    document.getElementById("citta").addEventListener("click", function() {
        if (on_citta=="no" || on_citta== null) {
            const elements = document.getElementsByClassName("ev_citta");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#FDE4CF";
            }
            on_citta="yes";
        } else {
            const elements = document.getElementsByClassName("ev_citta");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_citta="no";
        };
    });

    let on_regioni;
    document.getElementById("regioni").addEventListener("click", function() {
        if (on_regioni=="no" || on_regioni== null) {
            const elements = document.getElementsByClassName("ev_regioni");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#9ef1f6";
            }
            on_regioni="yes";
        } else {
            const elements = document.getElementsByClassName("ev_regioni");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_regioni="no";
        };
    });

    let on_nazioni;
    document.getElementById("nazioni").addEventListener("click", function() {
        if (on_nazioni=="no" || on_nazioni== null) {
            const elements = document.getElementsByClassName("ev_nazioni");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#FFCFD2";
            }
            on_nazioni="yes";
        } else {
            const elements = document.getElementsByClassName("ev_nazioni");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_nazioni="no";
        };
    });

    let on_continenti;
    document.getElementById("continenti").addEventListener("click", function() {
        if (on_continenti=="no" || on_continenti== null) {
            const elements = document.getElementsByClassName("ev_continenti");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#F1C0E8";
            }
            on_continenti="yes";
        } else {
            const elements = document.getElementsByClassName("ev_continenti");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_continenti="no";
        };
    });

    let on_org;
    document.getElementById("org").addEventListener("click", function() {
        if (on_org=="no" || on_org== null) {
            const elements = document.getElementsByClassName("ev_org");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#CFBAF0";
            }
            on_org="yes";
        } else {
            const elements = document.getElementsByClassName("ev_org");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_org="no";
        };
    });

    let on_persone;
    document.getElementById("persone").addEventListener("click", function() {
        if (on_persone=="no" || on_persone== null) {
            const elements = document.getElementsByClassName("ev_persone");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#A3C4F3";
            }
            on_persone="yes";
        } else {
            const elements = document.getElementsByClassName("ev_persone");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_persone="no";
        };
    });

    let on_occupazioni;
    document.getElementById("occupazioni").addEventListener("click", function() {
        if (on_occupazioni=="no" || on_occupazioni== null) {
            const elements = document.getElementsByClassName("ev_occupazioni");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#A3C4F3";
            }
            on_occupazioni="yes";
        } else {
            const elements = document.getElementsByClassName("ev_occupazioni");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_occupazioni="no";
        };
    });

    let on_nazionalita;
    document.getElementById("nazionalita").addEventListener("click", function() {
        if (on_nazionalita=="no" || on_nazionalita== null) {
            const elements = document.getElementsByClassName("ev_nazionalita");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#8EECF5";
            }
            on_nazionalita="yes";
        } else {
            const elements = document.getElementsByClassName("ev_nazionalita");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_nazionalita="no";
        };
    });

    let on_quadri;
    document.getElementById("quadri").addEventListener("click", function() {
        if (on_quadri=="no" || on_quadri== null) {
            const elements = document.getElementsByClassName("ev_quadri");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#98F5E1";
            }
            on_quadri="yes";
        } else {
            const elements = document.getElementsByClassName("ev_quadri");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_quadri="no";
        };
    });

    let on_straniera;
    document.getElementById("straniera").addEventListener("click", function() {
        if (on_straniera=="no" || on_straniera== null) {
            const elements = document.getElementsByClassName("ev_straniera");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#B9FBC0";
            }
            on_straniera="yes";
        } else {
            const elements = document.getElementsByClassName("ev_straniera");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_straniera="no";
        };
    });

    let on_abbr;
    document.getElementById("abbr").addEventListener("click", function() {
        if (on_abbr=="no" || on_abbr== null) {
            const elements = document.getElementsByClassName("ev_abbr");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#7bf1a8";
            }

            // Rendi visibili gli elementi con id "expan"
            const expanElements = document.querySelectorAll("#expan");
            for (let i = 0; i < expanElements.length; i++) {
                expanElements[i].style.display = "inline";
            }
            on_abbr="yes";
        } else{
            const elements = document.getElementsByClassName("ev_abbr");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }

            // Rendi visibili gli elementi con id "expan"
            const expanElements = document.querySelectorAll("#expan");
            for (let i = 0; i < expanElements.length; i++) {
                expanElements[i].style.display = "none";
            }
            on_abbr="no";
        }
    });

    let on_term;
    document.getElementById("term").addEventListener("click", function() {
        if (on_term=="no" || on_term== null) {
            const elements = document.getElementsByClassName("ev_term");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#f08080";
            }
            on_term="yes";
        } else {
            const elements = document.getElementsByClassName("ev_term");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_term="no";
        };
    });

    let on_cit;
    document.getElementById("cit").addEventListener("click", function() {
        if (on_cit=="no" || on_cit== null) {
            const elements = document.getElementsByClassName("ev_cit");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#d5bdaf";
            }
            on_cit="yes";
        } else {
            const elements = document.getElementsByClassName("ev_cit");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_cit="no";
        };
    });

    let on_titolo;
    document.getElementById("titolo").addEventListener("click", function() {
        if (on_titolo=="no" || on_titolo== null) {
            const elements = document.getElementsByClassName("ev_titolo");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#ff8fab";
            }
            on_titolo="yes";
        } else {
            const elements = document.getElementsByClassName("ev_titolo");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_titolo="no";
        };
    });

    let on_q;
    document.getElementById("q").addEventListener("click", function() {
        if (on_q=="no" || on_q== null) {
            const elements = document.getElementsByClassName("ev_q");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#84dcc6";
            }
            on_q="yes";
        } else {
            const elements = document.getElementsByClassName("ev_q");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_q="no";
        };
    });

    let on_bibl;
    document.getElementById("bibl").addEventListener("click", function() {
        if (on_bibl=="no" || on_bibl== null) {
            const elements = document.getElementsByClassName("ev_bibl");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#ffdc5e";
            }
            on_bibl="yes";
        } else {
            const elements = document.getElementsByClassName("ev_bibl");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_bibl="no";
        };
    });

    let on_glosse;
    document.getElementById("glosse").addEventListener("click", function() {
        if (on_glosse=="no" || on_glosse== null) {
            const elements = document.getElementsByClassName("ev_glosse");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#d8e2dc";
            }
            on_glosse="yes";
        } else {
            const elements = document.getElementsByClassName("ev_glosse");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_glosse="no";
        };
    });

    let on_note;
    document.getElementById("note").addEventListener("click", function() {
        if (on_note=="no" || on_note== null) {
            const elements = document.getElementsByClassName("ev_note");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "#c1d3fe";
            }
            on_note="yes";
        } else {
            const elements = document.getElementsByClassName("ev_note");
            for (let i = 0; i < elements.length; i++) {
                elements[i].style.backgroundColor = "";
            }
            on_note="no";
        };
    });
};
