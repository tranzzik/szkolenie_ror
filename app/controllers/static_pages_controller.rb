class StaticPagesController < ApplicationController
    def privacy
        if params[:lang] == 'pl'
            render "privacy_pl"
        elsif params[:lang] == 'es'
            render "privacy_es"
        else
            @privacy_text = Faker::Lorem.paragraphs(number: 6)
            # render "privacy"
        end
    end
end
