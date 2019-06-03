class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    @content.save
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    @content.update(content_params)
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
  end
  private

    def content_params
      params.require(:content).permit(:title, :source, :status, :root, :photo, :content_original, :content_modifi)

    end
  end
end
