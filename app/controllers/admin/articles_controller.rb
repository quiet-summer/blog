module Admin
  class ArticlesController < AdminController
    before_action :find_article, except: [:index, :new, :create]

    def index
      @q = Article.all.ransack(params[:q])
      @articles = @q.result.page(params[:page]).per(8)
    end

    def new; @article = Article.new; end

    def show; end

    def create
      @article = Article.new(article_param)
      return operate_success if @article.save
      render 'new', alert: '创建失败'
    end

    def edit; end

    def update
      return operate_success if @article.update(article_param)
      render 'index', alert: '删除失败'
    end

    def destroy
      return operate_success if @article.destroy
      render 'index', alert: '删除失败'
    end

    private

    def article_param
      params.required(:article).permit(:title, :content)
    end

    def find_article
      @article = Article.find(params[:id])
    end

    def operate_success
      redirect_to admin_articles_path, notice: '操作成功'
    end

  end
end
