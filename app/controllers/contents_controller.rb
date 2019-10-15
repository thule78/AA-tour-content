class ContentsController < ApplicationController
  def index
    if params[:query].present?
      contents = policy_scope(Content).order(updated_at: :desc)
      @contents = Content.search_for_content(params[:query]).paginate(page:params[:page], per_page: 20).order(updated_at: :desc)
    else
      @contents = Content.paginate(page:params[:page], per_page: 20).order(updated_at: :desc)
    end
  end

  def show
    @content = Content.friendly.find(params[:id])
    authorize @content
  end

  def new
    @content = Content.new
    authorize @content
  end

  def create
    @content = Content.new(content_params)
    authorize @content
      if @content.save
        redirect_to contents_path
      else
        render :new
      end
  end

  def edit
    @content = Content.find(params[:id])
    authorize @content
  end

  def update
    @content = Content.find(params[:id])
    authorize @content
    @content.update(content_params)
    redirect_to content_path(@content)
  end

  def destroy
    @content = Content.find(params[:id])
    authorize @content
    @content.destroy
    if @content.destroy
      flash[:notice] = "\"#{@content.title}\" was successfully deleted."
      redirect_to contents_path
    else
      flash.now[:alert] = "There was an error deleting the content."
      render :show
    end
  end
  private

    def content_params
      params.require(:content).permit(:title, :new_title,
        :source, :status, :root, :photo,
        :itinerary, :summary, :highlight, :go_next,
        :country, :destination, :activity1, :activity2, :length, :note,
        :code, :provider, :start_finish, :style, :them,
        :comfort, :related_trips
        )

    end
end
