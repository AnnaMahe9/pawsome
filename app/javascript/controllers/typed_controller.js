import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js'

// Connects to data-controller="typed"
export default class extends Controller {
  connect() {
    typed = new Typed('.element', {
      strings: ["Envie d'exotisme dans votre vie ?", "Louez vos animaux entre amateurs passionnés"],
      typeSpeed: 30,
      backSpeed: 10,
      loop: true
    });
  }

}
