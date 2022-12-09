import { Controller } from "@hotwired/stimulus"
// Import flatpickr function
import flatpickr from "flatpickr"
// The range plugin is also needed in order to use two inputs
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  // retrieve the targets from the DOM
  static targets = [ 'dateInput']

  connect() {
    // console.log(this.dateInputTarget)
    flatpickr(this.dateInputTarget, {
      mode: 'single',
      enableTime: true,
      // time_24hr: true,
      dateFormat: "m-d H:i",
    })
  }
}
