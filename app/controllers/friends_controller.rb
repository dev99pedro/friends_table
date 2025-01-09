class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :destroy, :update, :edit]


  def index
    @friend = Friend.all  
    # aqui eu to pegando todos
  end

  def show
    # aqui eu to só criando o metodo pra poder criar uma pagina show.html.erb na view
    # @friend = Friend.find(params[:id]) é como se tivesse isso aqui
    # o set_friend ali de baixo ta fazendo a mao de passar o id aqui
  end

  def set_friend
    @friend = Friend.find(params[:id])
    # aqui eu to achando o id de cada elemento clicado e dai isso automaticamente é passado pra os outros metodos
  end

  def destroy
    @friend.destroy
    redirect_to root_path, notice: 'post apagado'
  end


  def create
    @friend= Friend.new(friend_params)
    if @friend.save
      redirect_to root_path, notice: 'friend create'
    else 
      redirect_to root_path, notice: 'error to create friend'
    end
  end

  
  def new
    @friend = Friend.new
  end

  def edit
    
  end

  def update 
    @friend.update(friend_params)
    redirect_to root_path, notice: 'atualizado'
  end

    
  def friend_params
    params.require(:friend).permit(:firstname, :secondname, :email, :phone, :twitter)
    # aqui eu to pegando os valores do input
  end






end