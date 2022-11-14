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

    def current_time
        @current_time = Time.zone.now
    end

    private
    helper_method :daytime?

    def daytime?
        hour = Time.zone.now.hour

        (hour < 20 && hour > 8)
    end
end
