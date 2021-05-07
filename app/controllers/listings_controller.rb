class ListingsController < ApplicationController
    def index
        listings = Listing.all 
        render json: listings
    end

    def show
        listing = Listing.find(params[:id])
        if listing
            render json: listing
        else
            render json: { error: "Not found!" }, status: 404
        end
    end

    def create 
        listing = Listing.create(listing_params)
        render json: listing
    end

    def update
        listing = Listing.find(params[:id])
        listing.update(listing_params)
    end

    def destroy
        listing = Listing.find(params[:id])
        listing.destroy
    end

# private
    def listing_params
        params.require(:listing).permit(:price, :title, :description, :user_id, :category, :barter, :for_sale, :barter_description, :image, :location)
    end


end
