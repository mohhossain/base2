class ImageController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def create
    # Get the uploaded file from the params
    file = params[:image]

    # Create an S3 object
    client = Aws::S3::Client.new(region: 'us-east-1')
    s3 = Aws::S3::Resource.new(client: client)
    obj = s3.bucket('thebase2stuffs').object(file.original_filename)

    # Upload the file to S3
    obj.upload_file(file.tempfile, acl: 'public-read')

    # Return the public URL of the uploaded file
    render json: { url: obj.public_url }
  end
end
