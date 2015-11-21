class TopController < ApplicationController
    def index
      @articles = Article.readable_for(current_member).order(released_at: :desc).limit(5)
    end
    def about
    end
end
