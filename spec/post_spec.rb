require 'spec_helper'

describe Post do
    describe '#content_keywords' do
        it 'returns an array of :count: elements' do
            my_content = Faker::Lorem.paragraphs(number: 10).join(' ')
            post = Post.new(content: my_content)

            expect(post.content_keywords(4).length).to eq(4)
        end

        it 'returns an array of words that exist in #content attribute' do
            my_content = Faker::Lorem.paragraphs(number: 10).join(' ')
            post = Post.new(content: my_content)

            expect(my_content.split(' ')).to include(*post.content_keywords(4))
        end
    end
end