defmodule NimbleSchoolWeb.BlogController do
  use NimbleSchoolWeb, :controller
  alias NimbleSchool.Blog
  alias NimbleSchool.Faqs

  def index(conn, _params) do
    render(conn, "index.html", posts: Blog.all_posts(), tags: Blog.all_tags(), newposts: Blog.recent_posts())
  end

  def show(conn, %{"id" => id}) do
    render(conn, "show.html", post: Blog.get_post_by_id!(id))
  end

  def taglist(conn, %{"tag" => tag}) do
    render(conn, "taglist.html", posts: Blog.get_posts_by_tag!(tag), tag: tag)
  end

  def faqindex(conn, _params) do
    render(conn, "faqindex.html", posts: Faqs.all_faqs())
  end

  def faqshow(conn, %{"id" => id}) do
    render(conn, "faqshow.html", post: Faqs.get_post_by_id!(id))
  end
end
