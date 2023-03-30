$(DocumentType).ready(function() {
//tab selection buttons
const ingredient_toggle_button = document.querySelector('.ingredient_toggle_button');
const steps_toggle_button = document.querySelector('.steps_toggle_button');
const comments_toggle_button = document.querySelector('.comments_toggle_button');

//toggle ellements
const ingredients_tab = document.querySelector('.ingredients_tab');
const steps_tab = document.querySelector('.steps_tab');
const comments_tab = document.querySelector('.comments_tab');

ingredient_toggle_button.addEventListener('click', function() {
    
    toggle_on(ingredients_tab,ingredient_toggle_button);

    toggle_off(steps_tab,steps_toggle_button);
    toggle_off(comments_tab,comments_toggle_button);
});

steps_toggle_button.addEventListener('click', function() {
    toggle_on(steps_tab,steps_toggle_button);

    toggle_off(ingredients_tab,ingredient_toggle_button);
    toggle_off(comments_tab,comments_toggle_button);
});

comments_toggle_button.addEventListener('click', function() {
    toggle_on(comments_tab,comments_toggle_button);

    toggle_off(ingredients_tab,ingredient_toggle_button);
    toggle_off(steps_tab,steps_toggle_button);
});

function toggle_off(element,button){   
    if(element.classList.contains('hide_tab') == false) {
        element.classList.add('hide_tab');
        button.classList.remove('button_to_front');
    }
}

function toggle_on(element,button){   
    if(element.classList.contains('hide_tab') == true) {
        element.classList.remove('hide_tab');
        button.classList.add('button_to_front');
    }
}
});