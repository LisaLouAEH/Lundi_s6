class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception #ligne copié vidéo félix, sert a quoi ?
    include SessionHelper
    def test
        render html: "test RENDER ! dans appcontroller"
    end
end
