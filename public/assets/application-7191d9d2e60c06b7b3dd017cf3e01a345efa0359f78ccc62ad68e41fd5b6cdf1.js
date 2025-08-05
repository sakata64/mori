// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import Splide from "@splidejs/splide";

document.addEventListener('turbo:load', function(){
  console.log("splide_started"); //デバッグ
  new Splide('#splide', {
    type: 'loop',
    autoplay: true,
    interval: 3000,
    pauseOnHover: true,
    arrows: true,
    pagination: true
  }).mount();
});
