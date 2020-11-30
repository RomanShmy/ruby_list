class ListController < ApplicationController
  def list
    @lists = List.all
  end

  def listById
    @list = List.find(params[:id])
    @tasks = Task.where(lists_id: params[:id])
  end
end
