# Рецепты

Приложение агрегатор-рецептов, в котором пользователь может добавлять свои

## Инструкция по установке

Для для скачивания проекта воспользуйтесь терминалом и введите команду:

```
git clone --recurse-submodules https://github.com/iCookbook/Cookbook
```

Больше вам ничего делать не нужно

## Требования

Проект соответствует всем требованиям, описанным в [техническом задании](https://github.com/iCookbook/Cookbook/wiki/Technical-Requirements)

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

## Решение проблем

Одно или несколько из нижеприведённых действий должно вам помочь. Если всё равно что-то идёт не так, свяжитесь со мной через Telegram: [@egbad](https://t.me/egbad)

- Очистите `DerivedData`
- Очистите `Build foler`
- Перезапустите Xcode
- Установите последнюю версию модулей (подов):
    
    ```bash
    pod install
    ```

---

# Cookbook

Recipes application

## How to install

To download the project, use the terminal and enter the command:

```
git clone --recurse-submodules https://github.com/iCookbook/Cookbook
```

You don't need to do anything else

## Requirements

The project meets all the requirements described in the [terms of reference](https://github.com/iCookbook/Cookbook/wiki/Technical-Requirements)

## Description

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

Более подробная техническая информация и детали реализации описаны в [документации проекта](https://github.com/iCookbook/Cookbook/wiki)

Каждый модуль приложения также имеет свою страницу на [GitHub Wiki](https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis) с его документацией.

## Troubleshooting

Одно или несколько из нижеприведённых действий должно вам помочь. Если всё равно что-то идёт не так, свяжитесь со мной через Telegram: [@egbad](https://t.me/egbad)

- Clear `DerivedData`
- Clear `Build foler`
- Reload Xcode
- Install latest versions of modules (pods):
    
    ```bash
    pod install
    ```

---
