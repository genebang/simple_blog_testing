Fabricator(:article) do
  title { sequence {|i| "#{Faker::Lorem.sentence} (#{i})" }}
  body { Faker::Lorem.paragraphs(3).join("\n") }
end

Fabricator(:comment) do
  body { Faker::Lorem.paragraphs(3).join("\n") }
end

Fabricator(:article_with_comments, :from => :article) do
  comments(:count => 3)# { |attrs, index| Fabricate(:comment, ) }
end