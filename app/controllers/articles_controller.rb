class ArticlesController < ApplicationController

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end
  def new
    @article = Article.new

  end

  def create
    @article = Article.new(article_params)
    @article.user = User.first
   if  @article.save
     flash[:success] = "article successfully created"
    redirect_to article_path(@article)
   else
     render 'new'
   end
  end

  def show
    @article = Article.find(params[:id])
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:danger] = "Article Deleted successfully!"
    redirect_to articles_path
  end
  def edit

    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "Article updated successfully"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end



  private
  def article_params
    params.require(:article).permit(:topic, :description, :city, :country)
  end

end