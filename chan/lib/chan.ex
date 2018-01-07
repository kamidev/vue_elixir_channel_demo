defmodule Chan do
  @moduledoc """
  Simple example of Phoenix and Vue.js integration


  1. Phoenix 'app.js' to create Vue instances

  2. Standard Phoenix templates, such as 'index.html.eex', use ordinary Vue markup

  3. Server and browser communicate via Phoenix channels (websocket transport protocol)  


  ## Screen shots

  A browser somewhere joined our Phoenix channel

  ![Connecting to channel](doc_images/vuechannel_terminal.png) 

  It's a Phoenix app with an integrated Vue view.

  ![Phoenix displays Vue data](doc_images/vuechannel_1.png) 

  Here is browser code calling the channel.

  ![Here is the JS-code](doc_images/vuechannel_2.png) 

  It's a Phoenix app. But Vue debugging tools work, too.

  ![Vue debugging tools work, too](doc_images/vuechannel_3.png) 
  """
end