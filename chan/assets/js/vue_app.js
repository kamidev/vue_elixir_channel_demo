window.Vue = require("vue/dist/vue.js")
import AppSocket from "./app_socket"

// Vue app for reactive display of Phoenix channel
let view = function(socket) {
    let app = new Vue({
        el: "#vue_app", // HTML elements with this 'id' become reactive
        data: {
            content: socket.content
        },
        methods: {
            new_word: function() {
                console.log("Called 'new_word' method!")
                socket.new_word()
            }

        }
        //
        // Add more Vue.js stuff here if needed.
        // See documentation at https://vuejs.org/v2/guide/instance.html
        // 
    })
    return app;
}

// Setup Vue and Elixir channel 
window.onload = function() {

    // Initialize content before server has pushed data
    let content = {
        state: "waiting",
        random_server_word: "",
    }

    // Create Vue.js app with Phoenix web socket
    let socket = new AppSocket(content)
    let vue_app = view(socket)

    // Fetch data from server
    socket.connect_to_server()
}