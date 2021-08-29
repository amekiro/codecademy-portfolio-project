// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require home

//import Rails, { $ } from "@rails/ujs"
//import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("jquery")

//Rails.start()
//Turbolinks.start()
ActiveStorage.start()

$(window).on("load", function(){
    $(".toggle.show").on("click", function() {
        $("#sketch-frame").show();
        $("#work-cont").hide();
    })

    $(".toggle.hide").on("click", function() {
        $("#sketch-frame").hide();
        $("#work-cont").show();
    })

    // Set up navigation
    const change = ent => {
        let img = $("#sketch .media");
        let nav = $("#sketch .icon");

        for (let i = 0; i < img.length; i++) {
            if ($(nav[i])[0] == ent[0]) {
                // Match found
                $(img[i])[0].outerHTML = $(img[i])[0].outerHTML.replace('none', 'block');
                $(nav[i])[0].className += "select";
            } else {
                // Reset display
                $(img[i])[0].outerHTML = $(img[i])[0].outerHTML.replace('block', 'none');
                $(nav[i])[0].className = "icon ";
            }
        }
    }

    $("#sketch .icon").on("click", function() {
        // Run through each sketch
        change($(this))
    })

    $("#next").on("click", function() {
        // Get next entry
        let counter = 0;
        let id = -1;
        let slide = $("#sketch .icon");

        while (id == -1 && counter < slide.length) {
            if ($(slide[counter])[0].className.trim() != "icon") {
                id = counter
            }
            counter++;
        }

        if (id == (slide.length - 1)) {
            id = 0;
        } else {
            id++;
        }

        change($(slide[id]));
    })

    $("#prev").on("click", function() {
        // Get Previous entry
        let counter = 0;
        let id = -1;
        let slide = $("#sketch .icon");

        while (id == -1 && counter < slide.length) {
            if ($(slide[counter])[0].className.trim() != "icon") {
                id = counter
            }
            counter++;
        }

        if (id == 0) {
            id = slide.length - 1;
        } else {
            id--;
        }

        console.log(id);

        change($(slide[id]));
    })
})