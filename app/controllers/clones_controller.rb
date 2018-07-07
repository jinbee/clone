class ClonesController < ApplicationController
  
  before_action :find_content,only:[:edit,:update,:destroy]
  def index

  end

  def list
    @clone = Clone.all
  end

  def new
    @clone = Clone.new
  end

  def edit

  end
  
  
  def update
    if @clone.update(clone_params)
     redirect_to list_clones_path,notice:"編集しました"
    else
     render 'edit'
    end
    
    
  end
  def destroy
    @clone.destroy
    redirect_to list_clones_path,notice:"削除しました"
  end

  def create
    @clone = Clone.new(clone_params)
    
    if params[:back]
      render 'new'
      return
    end
    
    if @clone.save
     redirect_to list_clones_path , notice: '書き込みました'
      
    else
      render 'new'
    end  
  
  end

  def confirm

    if !params[:commit]
      redirect_to new_clone_path
      return
    end


    @clone = Clone.new(clone_params)
    render :new if @clone.invalid?
  end
  
  def show
    
  end

  private
  
  def find_content
    @clone = Clone.find(params[:id])
  end
  
  def clone_params
    params.require(:clone).permit(:content)
  end
  

end
