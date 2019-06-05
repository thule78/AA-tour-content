class ContentsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :destroy, :update]
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
      if @content.save
        redirect_to contents_path
      else
        render :new
      end
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    @content.update(content_params)
      redirect_to content_path(@content)
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to contents_path
  end
  private

    def content_params
      params.require(:content).permit(:title,
        :source, :status, :root, :photo,
        :content_original, :content_modifi,
        :country, :destination, :activity, :length, :note,
        :code, :provider, :start_finish, :style, :them,
        :comfort, :similar_trip
        )

    end
end
