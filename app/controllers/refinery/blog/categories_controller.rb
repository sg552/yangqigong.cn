# -*- encoding : utf-8 -*-
module Refinery
  module Blog
    class CategoriesController < BlogController

      def show
        @category = Refinery::Blog::Category.find(params[:id])
        @posts = @category.posts.live.includes(:comments, :categories).
          page(params[:page]).per_page(30)
      end

    end
  end
end
