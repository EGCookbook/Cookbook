# Рецепты

Приложение агрегатор-рецептов

## Инструкция по установке

Для для скачивания проекта воспользуйтесь терминалом и введите команду:

```
git clone --recurse-submodules https://github.com/iCookbook/Cookbook
```

Больше вам ничего делать не нужно

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
