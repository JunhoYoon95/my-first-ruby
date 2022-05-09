class HomeController < ApplicationController
    def index
        @posts = Post.all
        # Post 한 모든 모델을 불러오는 것 여러개를 한번에 가져오는거임
        # 인덱스 페이지에서 정보가 보이도록 할 것임.
    end
    def write

    end
    def create
        post = Post.new
        post.title = params[:title]
        post.content = params[:content]
        post.save
        redirect_to '/index'
    end

    def modify
        @post = Post.find(params[:post_id])
        # db에서 그 id 를 갖는 녀석을 가져와주겠지
        # Post.all 과 다른거는 얘는 하나만 가져옵니다
    end

    def update
        post = Post.find(params[:post_id])
        post.title = params[:title]
        post.content = params[:content]
        post.save
        redirect_back(fallback_location: '/index')
        # redirect_to '/index'

    end

    def delete
        Post.destroy(params[:post_id])

        redirect_back fallback_location: '/index'
    end

end
