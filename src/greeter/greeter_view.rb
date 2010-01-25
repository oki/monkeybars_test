class GreeterView < ApplicationView
  set_java_class 'greeter.Greeter'

#  map :model => :message, :view => "message.text"
  map :model => :login, :view => "login.text"
  map :model => :status, :view => "status_label.text"
  
end
