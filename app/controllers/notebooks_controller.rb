class NotebooksController < ApplicationController
  def index
    @notebooks = Notebook.all
  end

  def show
    @notebook = Notebook.find_by(id: params[:id])
  end

  def new
    @notebook = Notebook.new
  end

  def create
    Notebook.create(notebook_params)

    redirect_to root_path
  end

  private

  def notebook_params
    params.require(:notebook).permit(:name, :content)
  end
end
