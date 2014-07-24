class CachesController < ApplicationController

  # GET /caches
  # GET /caches.json
  def index
    @caches = Cache.all
  end

  # GET /caches/1
  # GET /caches/1.json
  def show
    @cache = Cache.find(2)

  end

  def show_cached 
    # expires_in 1.minutes, public: true
    @cache = Cache.find(1)

    # if stale? (@cache)
    #   respond_to do |format|
    #     format.html
    #   end
    # end
   
   fresh_when(@cache, public: true) 
  end

end
