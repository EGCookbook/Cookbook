# Рецепты

Приложение агрегатор-рецептов

## Инструкция по установке

Для для скачивания проекта воспользуйтесь терминалом и введите команду:

```
git clone --recurse-submodules https://github.com/iCookbook/Cookbook
```

Больше вам ничего делать не нужно

## Скриншоты

| Онбоардинг | Цели | Тёмная тема |
| ------------- |:-------------|:-------------:|
| ![Онбоардинг](https://user-images.githubusercontent.com/60363270/177568629-ef977243-7976-42ee-be0b-23f41688ffb9.png) | ![Цели](https://user-images.githubusercontent.com/60363270/171424937-f63ab329-0195-4cf9-a449-f16d62ae1d50.png) | ![тёмная тема ru](https://user-images.githubusercontent.com/60363270/172214231-d1667a36-55ce-4d65-8b9e-d142e0b8ded4.png) |
| Добавление цели | Подробнее | Удаление цели |
| ![Добавление цели](https://user-images.githubusercontent.com/60363270/171424969-ef70a26b-fc87-421e-85a5-41b48b58a807.png) | ![Подробнее](https://user-images.githubusercontent.com/60363270/171424993-47660cce-ca7b-49cc-9002-abc63ce51af3.png) | ![Удаление цели](https://user-images.githubusercontent.com/60363270/172214034-b2d0d7ab-6ff4-4a66-a852-7a1824d1568d.png) |
| Переупорядочивание целей | История | Удаление месяца |
| ![Переупорядочивание целей](https://user-images.githubusercontent.com/60363270/177569847-e9609bca-9e4c-4c59-89c7-0c3f0ded8b1a.png) | ![История](https://user-images.githubusercontent.com/60363270/171425024-024a5cd9-5df5-4a9f-be34-f85b4ee146d5.png) | ![Удаление месяца](https://user-images.githubusercontent.com/60363270/177569787-88365f2c-8845-489e-a0ab-5ca012ea6bbe.png) |
| Подробнее (месяц) | Обзор | Графики |
| ![Подробнее (месяц)](https://user-images.githubusercontent.com/60363270/171425054-55563c52-2660-4ea4-9b2c-52d82be94921.png) | ![Обзор](https://user-images.githubusercontent.com/60363270/171425121-e92ce776-9314-48c8-b1f3-c76daacfc035.png) | ![Графики](https://user-images.githubusercontent.com/60363270/177569646-2951e34f-a805-4c09-9562-563388f2530b.png) |

## Описание

В [документации проекта](https://github.com/iCookbook/Cookbook/wiki) расписано более подробно, здесь же я остановлюсь на ключевых моментах:

| Theme | Technology |
|---|---|
| 🧱 Архитектура | VIPER, модульная |
| 🌐 Работа с сетью | URLSession |
| 🗄 Хранение данных | CoreData, UserDefaults |
| ⛓ Многопоточность | Grand Central Dispatch |
| 🛠 Тестирование | XCTest |
| 📱 Версия iOS | iOS 12.0 |

Также стоит упомянуть о некоторых деталях реализации проекта:

1. Соблюдены все принципы SOLID. Подробнее почитать об этом можно [здесь](https://github.com/iCookbook/Cookbook/wiki/SOLID)
2. Полная локализация и плюризация
3. Пагинация и pull-to-refresh

Более того, каждый модуль приложения имеет свою страницу на [GitHub Wiki](https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis) с его документацией.

# Решение проблем

Одно или несколько из нижеприведённых действий должно вам помочь. Если всё равно что-то идёт не так, свяжитесь со мной через Telegram: [@egbad](https://t.me/egbad)

- Clear `DerivedData`
- Clear `Build foler`
- Reload Xcode
- Install latest versions of modules (pods):
    
    ```bash
    pod install
    ```

---
