<h1>СПРИНТ 1</h1>
<ul>
  <li>В terraform описать инфраструктуру по созданию 2ВМ для Kubernetes: 1 master и 1 app  и srv для инструментов мониторинга, логгирования и сборок контейнеров</li>
</ul>
Переходим в директорию terraform
<pre>
  cd sprint1/terraform
</pre>
Создаем файл для чувствительных данных  (token, cloud_id, folder_id, ssh_pub_key) и заполняем его 
<pre>
  nano terraform.tfvars
</pre>
Инициируем terraform
<pre>
  terraform init && terraform apply
</pre>
<i>В яндекс облаке добавляем к master и app сервисный аккаунт,т.к. в описании я об этом забыла, добавлю во втором</i><br>
Выводим созданные ip из output, чтобы потом перенести в inventory для ansible
<pre>
  terraform output
</pre>
<ul>
  <li> В ansible описать установку необходимых компонентов для k8s</li>
</ul>

Т.к. на текущем спринте я не знаю что именно требуется установить беру пока минимум: docker, kubectl,kubeadm, kubelet

В inventory.ini заменяем ip на полученные из предыдущего шага.<br>
Далее
<pre>
cd ../ansible && ansible-playbook -i inventory.ini playbook.yml
  </pre>
