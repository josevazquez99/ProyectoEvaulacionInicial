window.addEventListener('DOMContentLoaded', event => {

    
    var navbarShrink = function () {
        const navbarCollapsible = document.body.querySelector('#mainNav');
        if (!navbarCollapsible) {
            return;
        }
        if (window.scrollY === 0) {
            navbarCollapsible.classList.remove('navbar-shrink')
        } else {
            navbarCollapsible.classList.add('navbar-shrink')
        }

    };

    
    navbarShrink();

    
    document.addEventListener('scroll', navbarShrink);

    
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            offset: 74,
        });
    };

    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
        document.querySelectorAll('#navbarResponsive .nav-link')
    );
    responsiveNavItems.map(function (responsiveNavItem) {
        responsiveNavItem.addEventListener('click', () => {
            if (window.getComputedStyle(navbarToggler).display !== 'none') {
                navbarToggler.click();
            }
        });
    });

    new SimpleLightbox({
        elements: '#portfolio a.portfolio-box'
    });

});
function Añadir(){
    let tabla = document.getElementById("tabla");

    texto1=prompt("Sugerencia");
    c1= document.createElement("td");
    c2= document.createElement("td");
    f1= document.createElement("tr");
    text1= document.createTextNode(texto1);
    c1.appendChild(text1);
    f1.appendChild(c1);
    tabla.appendChild(f1);

}

function Borrar(){
    let tabla=document.getElementById("tabla");
    let filas = tabla.getElementsByTagName("tr");
    r=parseInt(prompt("Seleccione una fila"));
    
    let rowb = filas[r];
    rowb.remove();
}
