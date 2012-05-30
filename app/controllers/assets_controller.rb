class AssetsController < ApplicationController
  def index
  end
  
  def create
    @asset = Asset.new(params[:asset])
    if @asset.save
      respond_to do |format|
        format.html {  
          render :json => [@asset.to_jq_upload].to_json, 
          :content_type => 'text/html',
          :layout => false
        }
        format.json {  
          render :json => [@asset.to_jq_upload].to_json			
        }
      end
    else 
      render :json => [{:error => "custom_failure"}], :status => 304
    end
  end
end
