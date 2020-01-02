class ArticlesController < ApplicationController

    before_action :set_article, only: [:edit, :update, :show, :destroy]

    # Index action
    def index
        @articles = Article.all
    end

    # New action
    def new
        @article = Article.new
    end

    # Create action
    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was successfully created."
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end

    # Show action
    def show
        # @article = Article.find(params[:id])
    end

    # Edit action
    def edit
        # @article = Article.find(params[:id])
    end

    # Update action
    def update
        # @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article was successfully updated."
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end

    def destroy
        # @article = Article.find(params[:id])
        @article.destroy
        flash[:notice] = "Article was successfully destroyed."
        redirect_to articles_path
    end

    private
    def article_params
        params.require(:article).permit(:title, :description)
    end

    def set_article
        @article = Article.find(params[:id])
    end
end