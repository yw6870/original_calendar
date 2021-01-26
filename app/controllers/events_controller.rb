
class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    
    @api_key = ENV['OPEN_WEATHER_MAP_API_KEY']
    @city = current_user.prefecture_id
    @events = Event.all
    @posts = Post.all.order("created_at DESC")
    @post = Post.new

    if @city == 2
      @city_en = "Hokkaido"
      @city = "北海道"
    elsif @city == 3
      @city_en = "Aomori-ken"
      @city = "青森県"
    elsif @city == 4
      @city_en = "Iwate"
      @city = "岩手県"
    elsif @city == 5
      @city_en = "Miyagi-ken"
      @city = "宮城県"
    elsif @city == 6
      @city_en = "Akita"
      @city = "秋田県"
    elsif @city == 7
      @city_en = "Yamagata-ken"
      @city = "山形県"
    elsif @city == 8
      @city_en = "Fukushima-ken"
      @city = "福島県"
    elsif @city == 9
      @city_en = "Ibaraki"
      @city = "茨城県"
    elsif @city == 10
      @city_en = "Tochigi"
      @city = "栃木県"
    elsif @city == 11
      @city_en = "Gunma-ken"
      @city = "群馬県"
    elsif @city == 12
      @city_en = "Saitama-ken"
      @city = "埼玉県"
    elsif @city == 13
      @city_en = "Chiba-ken"
      @city = "千葉県"
    elsif @city == 14
      @city_en = "Tokyo"
      @city = "東京都"
    elsif @city == 15
      @city_en = "Kanagawa"
      @city = "神奈川県"
    elsif @city == 16
      @city_en = "Niigata-ken"
      @city = "新潟県"
    elsif @city == 17
      @city_en = "Toyama-ken"
      @city = "富山県"
    elsif @city == 18
      @city_en = "Ishikawa-ken"
      @city = "石川県"
    elsif @city == 19
      @city_en = "Fukui-shi"
      @city = "福井県"
    elsif @city == 20
      @city_en = "Yamanashi"
      @city = "山梨県"
    elsif @city == 21
      @city_en = "Nagano-ken"
      @city = "長野県"
    elsif @city == 22
      @city_en = "Gifu-shi"
      @city = "岐阜県"
    elsif @city == 23
      @city_en = "Shizuoka"
      @city = "静岡県"
    elsif @city == 24
      @city_en = "Aichi-ken"
      @city = "愛知県"
    elsif @city == 25
      @city_en = "Mie-ken"
      @city = "三重県"
    elsif @city == 26
      @city_en = "Shiga"
      @city = "滋賀県"
    elsif @city == 27
      @city_en = "Kyoto"
      @city = "京都府"
    elsif @city == 28
      @city_en = "Ōsaka-fu"
      @city = "大阪府"
    elsif @city == 29
      @city_en = "Akashi"
      @city = "兵庫県"
    elsif @city == 30
      @city_en = "Nara-ken"
      @city = "奈良県"
    elsif @city == 31
      @city_en = "Wakayama"
      @city = "和歌山県"
    elsif @city == 32
      @city_en = "Tottori"
      @city = "鳥取県"
    elsif @city == 33
      @city_en = "Shimane-ken"
      @city = "島根県"
    elsif @city == 34
      @city_en = "Okayama-ken"
      @city = "岡山県"
    elsif @city == 35
      @city_en = "Hiroshima-ken"
      @city = "広島県"
    elsif @city == 36
      @city_en = "Yamaguchi"
      @city = ""
    elsif @city == 37
      @city_en = "Tokushima-ken"
      @city = "徳島県"
    elsif @city == 38
      @city_en = "Kagawa-ken"
      @city = "香川県"
    elsif @city == 39
      @city_en = "Ehime"
      @city = "愛媛県"
    elsif @city == 40
      @city_en = "Kochi"
      @city = "高知県"
    elsif @city == 41
      @city_en = "Fukuoka"
      @city = "福岡県"
    elsif @city == 42
      @city_en = "Saga-ken"
      @city = "佐賀県"
    elsif @city == 43
      @city_en = "Nagasaki"
      @city = "長崎県"
    elsif @city == 44
      @city_en = "Kumamoto"
      @city = "熊本県"
    elsif @city == 45
      @city_en = "Ōita"
      @city = "大分県"
    elsif @city == 46
      @city_en = "Miyazaki"
      @city = "宮崎県"
    elsif @city == 47
      @city_en = "Kagoshima-ken"
      @city = "鹿児島県"
    elsif @city == 48
      @city_en = "Okinawa"
      @city = "沖縄県"
    end
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :content, :start_time, :end_time).merge(user_id: current_user.id)
  end
end
