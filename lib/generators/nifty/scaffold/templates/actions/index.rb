  def index
    @<%= instances_name %> = <%= class_name %>.all

    respond_to do |format|
      format.html { render layout: @layout }# index.html.erb
      format.json { render json: @<%= instances_name %> }
    end
  end
