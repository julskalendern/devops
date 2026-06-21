<h1>СПРИНТ 3</h1>
<i>Были сделаны следующие корректировки в спринт 2 для этого спринта:
<ul>
   <li>Github Actions - добавлена установка helm-чарта grafana и promtail для сбора логов приложений;</li>
  <li>Добавлен конфиг promtail-values.yaml для того же helm-чарта из пункта выше</li>
</ul>
<h2>Мониторинг</h2>
<p>Для решения задачи использовались: <b>Loki, Promtail, Prometheus, Node Exporter, Blackbox Exporter</b></p>
<p>Для визуализации  - <b>Grafana</b></p>
  
<p><i> Трудности, с которыми я столкнулась:<br>
Локи и прометеус запускались не в одной локали, поэтому не "видели" друг друга, не сразу вспомнила про то, что можно использовать networks. <br>
Локи упорно "натыкался" на permission denied, поэтому в docker-compose исползовала    user: "0:0"</i><br>
<p> На ВМ srv для "поднятия" локи/прометеуса</p>
<pre>
  cd sprint3/monitoring/loki && docker compose up -d
  cd sprint3/monitoring/prometheus && docker compose up -d
</pre>
В дашборде графаны импортируем дашборды с id 1860 и 7587:<br>
<img src="images/prometheus_logs.png"><br>
<img src="images/node_exporter_logs.png"><br>
Проверяем логи Loki через Explore:<br>
<img src="images/loki_logs.png"><br>
<h2>Алертинг</h2>
<p>Для алертинга я решила использовать графановский модуль, с отправкой письма на email.</p>
Настроенные правила:<br>
<img src="images/alert-rules.png"><br>
Имитация "падения" и получение письма:
<img src="images/alert.png"><br>
