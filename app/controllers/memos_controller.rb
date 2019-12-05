class MemosController < ApplicationController

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    memo = Memo.new(memo_params)
    memo.save!
    redirect_to memos_path, notice: "メモを登録しました"
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update!(memo_params)
    redirect_to memos_path, notice: 'メモを更新しました'
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.delete
    redirect_to memos_path
  end

  def show
    @memo = Memo.find(params[:id])
  end


  private

  def memo_params
    params.require(:memo).permit(:title, :content)
  end
end