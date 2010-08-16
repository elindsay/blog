Factory.define :article do |article|
  article.title { "Super article" }
  article.body { "Stuff stuff stuff" }
end

Factory.define :comment do |comment|
  comment.body { "body body body" }
  comment.association :article
end
