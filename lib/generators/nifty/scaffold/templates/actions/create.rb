  def create
    @client.build_<%= instance_name %>(params[:<%= instance_name %>])

    respond_to do |format|
      if @client.save
        format.html { redirect_to polymorphic_path([<%= nested_route_model_name_list %>:<%= instances_name %>], load_style: :partial), notice: '<%= class_name.underscore.humanize.downcase %> was successfully created.' }
        format.json { render json: @<%= instance_name %>, status: :created, location: @<%= instance_name %> }
      else
        format.html { render action: "new" }
        format.json { render json: @<%= instance_name %>.errors, status: :unprocessable_entity }
      end
    end
  end
