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

| Тема | Технология |
|---|---|
| 🧱 Архитектура | VIPER, модульная |
| 🌐 Работа с сетью | URLSession |
| 🗄 Хранение данных | Core Data, UserDefaults |
| ⛓ Многопоточность | Grand Central Dispatch |
| 🛠 Тестирование | XCTest |
| 📱 Платформа | iOS 12.0 |

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
| 🧱 Architecture | VIPER, модульная |
| 🌐 Networking | URLSession |
| 🗄 Persistence | Core Data, UserDefaults |
| ⛓ Multithreading | Grand Central Dispatch |
| 🛠 Testing | XCTest |
| 📱 Platform | iOS 12.0 |

It is also worth mentioning some details of the project implementation:

1. All SOLID principles are observed. You can read more about it [here](https://github.com/cookbook/Cookbook/wiki/SOLID )
2. Full localization and polarization
3. Pagination and pull-to-refresh

More detailed technical information and implementation details are described in the [project documentation](https://github.com/iCookbook/Cookbook/wiki )

Each application module also has its own page on the [GitHub Wiki](https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis ) with its documentation.

## Troubleshooting

One or more of the following actions should help you. If something goes wrong anyway, contact me via Telegram: [@egbad](https://t.me/egbad)

- Clear `DerivedData`
- Clear `Build foler`
- Reload Xcode
- Install latest versions of modules (pods):
    
    ```bash
    pod install
    ```

---
