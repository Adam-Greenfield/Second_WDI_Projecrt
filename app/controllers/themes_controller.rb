class ThemesController < ApplicationController

  def index
    @themes = Theme.all
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)

    respond_to do |format|
      if @theme.save
        format.html { redirect_to @theme, notice: 'Theme was successfully created.' }
        format.json { render :show, status: :created, location: @theme }
      else
        format.html { render :new }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_theme
        @theme = Theme.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def theme_params
        params.require(:theme).permit(:name, :description)
      end
  

end