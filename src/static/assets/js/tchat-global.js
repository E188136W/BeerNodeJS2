const socket = io();

const app = new Vue({
  el: "#tchat-global",
  vuetify: new Vuetify(),
  data: {
    message: "",
    allMessage: []
  },
  methods: {
    onEditorInput: function() {
      socket.emit("an-editor-input", this.message);
      this.message = "";
    }
  },
  mounted() {
    socket.on("broadcast-data", data => {
      this.allMessage = data;
    });
  }
});

socket.on("init-data", data => {
  app.allMessage = data;
});
