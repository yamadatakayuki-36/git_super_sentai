class ProductsController < RankingController
  
  def index
    # products テーブルから最新順に作品を取得する
    @products = Product.all
 end
 
  def show
    # products テーブルから該当するidの作品情報を取得し@poductの変数を代入する   
    @product = Product.find(params[:id])
 end
 
  def search
    # 検索フォームをあいまいにする
    @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
end