
require 'mechanize'

class GreeterController < ApplicationController
  set_model 'GreeterModel'
  set_view 'GreeterView'
  set_close_action :exit


  def logon_button_action_performed
    update_model(view_state.model, :login)

    puts model.login
    
    agent = WWW::Mechanize.new
    
    page = agent.get(model.login)
    model.status = page.content.length.to_s

    # if bot.logon(model.login,model.password)
    #   model.status = "Zalogowany!"
    # else
    #   model.status = "Nie udalo sie zalogować :("
    # end

#    agent = FoxyFox.new
#    page = agent.get("http://www.googele.pl/")
#    puts page.content.length

    update_view
  end


end
