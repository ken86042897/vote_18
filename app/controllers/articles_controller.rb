class ArticlesController < ApplicationController
	before_action :authenticate_member!,only: [:edit, :update, :destroy, :new, :create]
	before_action :set_article,only: [:show, :edit, :update, :destroy]

	def index
		@articles=Article.all
	end
	def show
		
	end
	def new
		@article=Article.new
	end
	def create
		article=Article.new articles_params
		article.save
		 redirect_to '/articles'
	end
	def edit
		
	end
	def update
		
		@article.update articles_params
		#update不用safe
		redirect_to articles_path
	end
	def destroy
		@article.destroy
		redirect_to articles_path
	end
	def articles_params
		params.require(:article).permit(:title,:date,:description,:body)
	end
	def set_article
		@article=Article.find params[:id]
	end
end
