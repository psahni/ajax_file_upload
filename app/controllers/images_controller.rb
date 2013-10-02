class ImagesController < ApplicationController

  def index
    @image = Image.new
  end


  def create
    #@image = Image.new
    #@image.image = params[:file]
     temp_image = ImageUploader.new
     temp_image.cache!(params[:image][:file])                   #Store this image in cache dir - see ImageUploader class
     logger.info temp_image.url
     render :text =>  temp_image.url
  end


  def show
  end

end


# To store permanently

#MyUploader.enable_processing = true

#@uploader = MyUploader.new(@user, :avatar)

#@uploader.store!(File.open(path_to_file))

#

#class User < ActiveRecord::Base

#  mount_uploader :avatar, AvatarUploader

#end