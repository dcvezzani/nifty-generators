  def destroy
    @<%= instance_name %> = <%= class_name %>.find(params[:id])
    @<%= instance_name %>.destroy

    respond_to do |format|
      format.html { redirect_to polymorphic_path([@client, :<%= instances_name %>], load_style: :partial), notice: '<%= class_name.underscore.humanize.downcase %> was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
