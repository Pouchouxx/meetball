import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { matchId: Number, currentUserId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "MatchChannel", id: this.matchIdValue },
      { received: data => this.#insertMessageAndScrollDown(data)}
    )
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  #insertMessageAndScrollDown(data) {
    const currentUserIsSender = this.currentUserIdValue === data.sender_id;
    const messageElement = this.#buildMessageElement(currentUserIsSender, data.message)

    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  resetForm(event) {
    event.target.reset()
  }

  #buildMessageElement(currentUserIsSender, message) {
    return `
      <div class="message-row d-flex ${this.#justifyClass(currentUserIsSender)}">
        <div class="${this.#userStyleClass(currentUserIsSender)}">
          ${message}
        </div>
      </div>
    `
  }

  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }

  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }
}
