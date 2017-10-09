class ClientsController < ApplicationController
  def index
    @clients = Client.paginate(:page => params[:page], per_page: 10).order('id ASC')
  end

  def show
    @client = Client.find(params[:id])
    not_found unless @client
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to root_path
      flash[:success] = "Client created!"
    end
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to client_path
      flash[:success] = "Updated"
    end
  end

  private

  def client_params
    params.require(:client).permit(
      :first_name,
      :last_name,
      :email,
      :phone_no,
      :gender
    )
  end
end
