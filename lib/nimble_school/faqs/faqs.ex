defmodule NimbleSchool.Faqs do
alias NimbleSchool.Faqs.Faq
  use NimblePublisher,
    build: Faq,
    from: Application.app_dir(:nimble_school, "priv/faqs/*.md"),
    as: :faqs

  @faqs Enum.sort_by(@faqs, & &1.question)

  def all_faqs, do: @faqs

  def get_post_by_id!(id) do
    Enum.find(all_faqs(), &(&1.id == id)) ||
    raise NotFoundError, "post with id=#{id} not found"
  end
end
