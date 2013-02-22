  def update
    @<%= instance_name %> = <%= class_name %>.find(params[:id])

    respond_to do |format|
      if @<%= instance_name %>.update_attributes(params[:<%= instance_name %>])
        format.html { redirect_to polymorphic_path([@client, :<%= instances_name %>], load_style: :partial), notice: '<%= class_name.underscore.humanize.downcase %> was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @<%= instance_name %>.errors, status: :unprocessable_entity }
      end
    end
  end
