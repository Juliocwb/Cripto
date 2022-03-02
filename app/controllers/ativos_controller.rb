class AtivosController < ApplicationController
    
  def index
    @ativos = Ativo.all 
  end

  def new
    @ativo = Ativo.new
  end

  def create
    @ativo = Ativo.new(params.require(:ativo).permit(:name, :qtd, :valor))
    if @ativo.save
      flash[:notice] = 'Salvo com sucesso'
      redirect_to ativos_path
    else
      flash[:alert] = 'Nao registrado'
      render :new
    end
  end

  def show
    @ativo = Ativo.find(params[:id])
  end
  
  def edit
    @ativo = Ativo.find(params[:id])
  end

  def update
    @ativo = Ativo.find(params[:id])
    if @ativo.update(params.require(:ativo).permit(:name, :qtd, :valor))
      redirect_to ativos_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    ativo = Ativo.find(params[:id])
    ativo.destroy
    redirect_to ativos_path
  end
  
  def calculate
    @ativo = Ativo.find(params[:id])
  end
end