  def new
    @<%= instance_name %> = <%= class_name %>.new

    respond_to do |format|
      format.html { render layout: @layout }# new.html.erb
      format.json { render json: @<%= instance_name %> }
    end
  end
