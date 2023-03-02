import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-pets"
export default class extends Controller {
  static targets = ["total", "start", "end", "price"]
  connect() {
    console.log(this.element.dataset.price)
  }

  calculate() {
    const start = new Date(this.startTarget.value)
    const end = new Date(this.endTarget.value)
    const number_days = (Math.abs(end - start))/(1000 * 3600 * 24)
    const price = Number.parseInt(`${this.element.dataset.price}`, 10)


    console.log(this.startTarget.value === "");
    if (this.startTarget.value === "" || this.endTarget.value === "") {
      this.totalTarget.innerHTML = 'Calcul en cours' ;
    } else {
      this.totalTarget.innerHTML = `${number_days} jours x ${price}€ par jour = <strong>${number_days * price}€</strong>`;
    }

  }
}
