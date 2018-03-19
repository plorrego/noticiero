class ClassNewsController < ApplicationController
  before_action :set_class_news, only: [:show, :edit, :update, :destroy]

  # GET /class_news
  # GET /class_news.json
  def index
    @class_news = ClassNews.order(created_at: :desc).first(10)
  end

  # GET /class_news/1
  # GET /class_news/1.json
  def show
    @coment = Coment.new
  end

  # GET /class_news/new
  def new
    @class_news = ClassNews.new
  end

  # GET /class_news/1/edit
  def edit
  end

  # POST /class_news
  # POST /class_news.json
  def create
    @class_news = ClassNews.new(class_news_params)

    respond_to do |format|
      if @class_news.save
        format.html { redirect_to @class_news, notice: 'Class news was successfully created.' }
        format.json { render :show, status: :created, location: @class_news }
      else
        format.html { render :new }
        format.json { render json: @class_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_news/1
  # PATCH/PUT /class_news/1.json
  def update
    respond_to do |format|
      if @class_news.update(class_news_params)
        format.html { redirect_to @class_news, notice: 'Class news was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_news }
      else
        format.html { render :edit }
        format.json { render json: @class_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_news/1
  # DELETE /class_news/1.json
  def destroy
    @class_news.destroy
    respond_to do |format|
      format.html { redirect_to class_news_index_url, notice: 'Class news was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_news
      @class_news = ClassNews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_news_params
      params.require(:class_news).permit(:title, :drop, :body)
    end
end
