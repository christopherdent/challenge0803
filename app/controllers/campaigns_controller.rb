class CampaignsController < ApplicationController


     

    def index
        campaigns = Campaign.all
        render json: campaigns
    end
      
    def show
        campaign = Campaign.find(params[:id])
        render json: campaign
    end
      
    def create
    end
      
    def update ###  update exists only to increase the amount of the donation.
        campaign = Campaign.update(campaign_params)[0]
             
            if campaign.save
              render json: campaign
            else
              render json: {message: 'not found'}   
            end
             
        end
      
      
     
        
        
          def campaign_params
            params.require(:campaign).permit(:id, :name, :amount, :image_url)
          end
        


end
