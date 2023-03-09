// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

const button = document.querySelector('_form');

button.addEventListener('click', function() {
  button.classList.toggle('_form');
});
