class MemesController < ApplicationController
    
    def create
        
        meme = Meme.new
        meme.image = params[:meme][:image]
        meme.save!
        
        p meme.image.file.nil?
        redirect_to :root
    end
    
    def show
        @meme = Meme.all.sample
        p "*" * 99
        if request.xhr? == 0
            render json: {
                url: @meme.image.url
                
            }
        end
        
    end
    
end

