$(function () {
  city = $('.city').val();
  API_KEY = (process.env.OPEN_WEATHER_MAP_API_KEY);

  var url = 'https://api.openweathermap.org/data/2.5/forecast?q=' + city + ',jp&units=metric&APPID=' + API_KEY ;

  $.ajax({
      url: url,
      dataType: 'json',
      type: 'GET',
    })
    .done(function (data) {
      var insertHTML = '';
      var cityName = data.city.name;
      $('#city-name').html(cityName);

      // デフォルトでは3時間ごとの天気を取得するため、
      // 8の倍数でデータを取得することにより、24時間ごとの天気を取得する
      for (var i = 0; i <= 32; i = i + 8) {
        insertHTML += buildHTML(data, i);
      }
      $('#weather').html(insertHTML);
    })
    .fail(function (data) {
      alert('天気予報取得に失敗しました');
    });
});

function buildHTML(data, i) {
  var Week = new Array('(日)', '(月)', '(火)', '(水)', '(木)', '(金)', '(土)');
  var date = new Date(data.list[i].dt_txt);
  date.setHours(date.getHours() + 9);
  var month = date.getMonth() + 1;
  var day = month + '/' + date.getDate() + Week[date.getDay()];
  var icon = data.list[i].weather[0].icon;
  var html =
    '<div class="weather-report">' +
      '<img class="weather-icon" src="https://openweathermap.org/img/w/' + icon + '.png">' +
      '<p class="weather-date">' + day + "</p>" +
      '<p class="weather-temp-max">' + '最高：' + Math.round(data.list[i].main.temp_max) + "℃</p>" +
      '<p class="weather-temp-min">' + '最低：' + Math.floor(data.list[i].main.temp_min) + "℃</p>" +
    '</div>';
  return html
}