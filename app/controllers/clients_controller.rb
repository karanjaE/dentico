class ClientsController < ApplicationController
  def show
    @all_clients = Client.all
  end
end
