class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @todews = Todew.all
  end

  def update
    # render :text => params.inspect
    # 1. Go over all of your todews
    # 2. Look at if the completed state is different from what is inside of params
    # 3. Change as necessary
    Todew.all.each do |betterit|
      if betterit.completed == true && !params[betterit.id.to_s].present?
        #then betterit.completed = false #don't need then on a sep line
        betterit.completed = false
        betterit.save!
      end
      if (betterit.completed == false || betterit.completed == nil) && params[betterit.id.to_s]=='on' 
        betterit.completed = true
        betterit.save!
      end
    end
    
    if params["new_todew_text"] != "" # OR !params["new_todew_text"].blank? OR params["new_todew_text"].present?
      new_todew = Todew.new
      new_todew.content = params["new_todew_text"]
      new_todew.completed = false
      new_todew.save!
    end
    redirect_to '/'
  end

end