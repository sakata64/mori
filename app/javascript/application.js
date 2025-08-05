// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import Splide from "https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.esm.min.js";

document.addEventListener('DOMContentLoaded', function(){
  new Splide('#splide', {
    type: 'loop',
    autoplay: true,
    interval: 3000,
    pauseOnHover: true,
    arrows: true,
    pagination: true
  }).mount();
});