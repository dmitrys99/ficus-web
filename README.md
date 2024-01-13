## Пример web-приложения на Ficus

1. Клонируем https://github.com/CrowCpp/Crow.git
```
$ git clone https://github.com/CrowCpp/Crow.git
```

2. Ставим Boost::ASIO
```
# Mac
$ sudo port install asio

# Linux
$ sudo apt install asio
```

3. Собираем
```
$ ./crow.sh
```

4. Запускаем
```
$ ./__fxbuild__/crow/crow
# или 
$ ./__fxbuild__/crow/crow Russia
```

5. Проверяем
В браузере запускам http://localhost:18080/
Должна появиться страница с текстом
```
Hello, xxx
```
в первом случае и
```
Hello, Russia
```
во втором.

