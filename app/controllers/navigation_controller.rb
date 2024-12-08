class NavigationController < ApplicationController
  def home
    @projects = Post.where(blog_type_id: 1, blog_status_id: 1)
    @articles = Post.where(blog_status_id: 1).where.not(blog_type_id: 1)
  end

  def projects
    @projects = Post.where(blog_type_id: 1, blog_status_id: 1)
  end

  def articles
    @articles = Post.where(blog_status_id: 1).where.not(blog_type_id: 1)
  end
end
