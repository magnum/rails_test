class Api::DocumentsController < Api::ApiController

  def index
    @documents = Document.all
    render json: @documents
  end

end
