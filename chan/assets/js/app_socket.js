import { Socket } from "phoenix"

export default class AppSocket {
    constructor(content) {
        this.content = content
        this.socket = new Socket("/socket", {})
        this.socket.connect()
    }

    connect_to_server() {
        this.setup_channel();
        this.channel.
        join()
            .receive("ok", resp => {
                console.log("Joined successfully", resp)
                    //this.new_word()
            })
            .receive("error", resp => {
                alert("Unable to join", resp)
                throw (resp)
            })
    }

    setup_channel() {
        this.channel = this.socket.channel("dictionary:content", {})
        this.channel.on("content", (content) => {
            this.copy_content(content)
        })
    }

    copy_content(from) {
        for (let k in from) {
            this.content[k] = from[k]
        }
    }

    new_word() {
        this.channel.push("new_word", {})
    }
    disconnect() {
        this.channel.push("disconnect", {})
    }

    reconnect() {
        this.channel.connect()
    }
}