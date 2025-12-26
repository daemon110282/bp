# Создание структуры папок Promts
$folders = @(
    "prompts/00_general",
    "prompts/01_requirements",
    "prompts/02_processes",
    "prompts/03_integrations",
    "prompts/04_data",
    "prompts/05_design",
    "prompts/06_dev_prompts",
    "prompts/07_testing",
    "prompts/08_special"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path $folder | Out-Null
}

# ===== Функция для записи файлов =====
function Write-File($path, $content) {
    Set-Content -Path $path -Value $content -Encoding UTF8
}

# ===== 00_general =====

Write-File "prompts/00_general/task_brief.md" @"
# PROMPT: Сформировать краткое описание задачи

Сформируй краткое, структурированное описание задачи по следующему тексту:

---
{вставь описание задачи}
---

Опиши:
- бизнес‑цель
- проблему
- целевую аудиторию
- ожидаемый результат
- ключевые ограничения
- критерии успеха
"@

Write-File "prompts/00_general/clarify_questions.md" @"
# PROMPT: Уточняющие вопросы по задаче

Сформируй список уточняющих вопросов по задаче:

---
{описание задачи}
---

Разбей вопросы на категории:
- бизнес‑требования
- пользовательские сценарии
- данные
- интеграции
- ограничения
- риски
- нефункциональные требования
"@

Write-File "prompts/00_general/business_goals.md" @"
# PROMPT: Определение бизнес‑целей

Определи бизнес‑цели задачи на основе описания:

---
{описание задачи}
---

Сформируй:
- 3–5 ключевых бизнес‑целей
- связь целей с метриками
- возможные KPI
"@

Write-File "prompts/00_general/glossary.md" @"
# PROMPT: Глоссарий терминов

Сформируй гллоссарий терминов по следующему описанию:

---
{описание системы}
---

Для каждого термина укажи:
- определение
- контекст использования
- связанные сущности
"@

# ===== 01_requirements =====

Write-File "prompts/01_requirements/functional_requirements.md" @"
# PROMPT: Функциональные требования

Сформируй список функциональных требований на основе описания:

---
{описание задачи}
---

Требования должны быть:
- атомарными
- проверяемыми
- без технических деталей
- в формате: 'Система должна ...'

Разбей по модулям.
"@

Write-File "prompts/01_requirements/nonfunctional_requirements.md" @"
# PROMPT: Нефункциональные требования

Сформируй список НФТ для системы:

---
{описание системы}
---

Категории:
- производительность
- безопасность
- доступность
- UX
- логирование
- интеграции
- масштабируемость
- отказоустойчивость
"@

Write-File "prompts/01_requirements/constraints_and_risks.md" @"
# PROMPT: Ограничения и риски

На основе описания:

---
{описание задачи}
---

Сформируй:
- список ограничений
- список рисков
- предположения
- зависимости
"@

Write-File "prompts/01_requirements/acceptance_criteria.md" @"
# PROMPT: Критерии приёмки

Сформируй критерии приёмки для задачи:

---
{описание задачи}
---

Формат:
- Given
- When
- Then
"@

Write-File "prompts/01_requirements/gherkin_templates.md" @"
# PROMPT: Gherkin сценарии

Сформируй Gherkin‑сценарии для функции:

---
{описание функции}
---

Используй:
Feature:
Scenario:
Given / When / Then
"@

# ===== 02_processes =====

Write-File "prompts/02_processes/use_cases.md" @"
# PROMPT: Use Case

Сформируй Use Case для функции:

---
{описание функции}
---

Структура:
- Название
- Акторы
- Цель
- Preconditions
- Postconditions
- Основной сценарий
- Альтернативные сценарии
- Исключения
"@

Write-File "prompts/02_processes/user_stories.md" @"
# PROMPT: User Stories

Сформируй User Stories по шаблону:

Как {роль}  
Я хочу {цель}  
Чтобы {ценность}

Добавь Acceptance Criteria.
"@

Write-File "prompts/02_processes/bpmn_generation.md" @"
# PROMPT: BPMN описание

Сформируй текстовое BPMN‑описание процесса:

---
{описание процесса}
---

Укажи:
- события
- задачи
- шлюзы
- роли
- потоки
"@

Write-File "prompts/02_processes/sequence_diagrams.md" @"
# PROMPT: Sequence Diagram

Сформируй текстовое описание последовательности взаимодействий:

---
{описание сценария}
---

Укажи:
- участников
- шаги
- сообщения
- альтернативные ветки
"@

# ===== 03_integrations =====

Write-File "prompts/03_integrations/api_requirements.md" @"
# PROMPT: Требования к API

Сформируй требования к API для функции:

---
{описание функции}
---

Опиши:
- эндпоинты
- методы
- параметры
- ответы
- ошибки
"@

Write-File "prompts/03_integrations/data_contracts.md" @"
# PROMPT: Контракты данных

Сформируй контракты данных:

---
{описание интеграции}
---

Для каждого объекта укажи:
- поля
- типы
- обязательность
- правила валидации
"@

Write-File "prompts/03_integrations/integration_scenarios.md" @"
# PROMPT: Сценарии интеграций

Сформируй сценарии интеграции между системами:

---
{описание}
---

Укажи:
- инициатор
- шаги
- формат данных
- ошибки
"@

Write-File "prompts/03_integrations/error_handling.md" @"
# PROMPT: Обработка ошибок

Сформируй правила обработки ошибок:

---
{описание системы}
---

Укажи:
- типы ошибок
- коды
- сообщения
- поведение системы
"@

# ===== 04_data =====

Write-File "prompts/04_data/entities_and_attributes.md" @"
# PROMPT: Сущности и атрибуты

Сформируй список сущностей и атрибутов:

---
{описание системы}
---

Для каждой сущности:
- название
- атрибуты
- типы
- связи
"@

Write-File "prompts/04_data/database_structure.md" @"
# PROMPT: Структура БД

Сформируй структуру БД на основе описания:

---
{описание}
---

Укажи:
- таблицы
- поля
- связи
- индексы
"@

Write-File "prompts/04_data/validation_rules.md" @"
# PROMPT: Правила валидации

Сформируй правила валидации данных:

---
{описание}
---

Укажи:
- обязательность
- форматы
- диапазоны
- зависимости
"@

# ===== 05_design =====

Write-File "prompts/05_design/ui_prompts.md" @"
# PROMPT: UI‑описание

Сформируй описание интерфейса:

---
{описание функции}
---

Укажи:
- экраны
- элементы
- состояния
- ошибки
"@

Write-File "prompts/05_design/ux_scenarios.md" @"
# PROMPT: UX‑сценарии

Сформируй UX‑сценарии:

---
{описание}
---

Опиши:
- мотивацию пользователя
- шаги
- точки боли
- улучшения
"@

Write-File "prompts/05_design/wireframe_generation.md" @"
# PROMPT: Генерация вайрфреймов (текстово)

Сформируй текстовое описание вайрфрейма:

---
{описание экрана}
---

Укажи:
- блоки
- расположение
- взаимодействия
"@

# ===== 06_dev_prompts =====

Write-File "prompts/06_dev_prompts/backend_prompts.md" @"
# PROMPT: ТЗ для backend

Сформируй техническое описание для backend:

---
{описание задачи}
---

Укажи:
- API
- бизнес‑логику
- модели данных
- интеграции
- ошибки
"@

Write-File "prompts/06_dev_prompts/frontend_prompts.md" @"
# PROMPT: ТЗ для frontend

Сформируй техническое описание для frontend:

---
{описание задачи}
---

Укажи:
- экраны
- состояния
- API‑вызовы
- обработку ошибок
"@

Write-File "prompts/06_dev_prompts/architecture_prompts.md" @"
# PROMPT: Архитектурное описание

Сформируй архитектурный контекст:

---
{описание системы}
---

Укажи:
- компоненты
- связи
- потоки данных
- ограничения
"@

# ===== 07_testing =====

Write-File "prompts/07_testing/test_cases.md" @"
# PROMPT: Тест‑кейсы

Сформируй тест‑кейсы:

---
{описание функции}
---

Формат:
- ID
- Название
- Предусловия
- Шаги
- Ожидаемый результат
"@

Write-File "prompts/07_testing/bug_report_templates.md" @"
# PROMPT: Баг‑репорт

Сформируй баг‑репорт по описанию:

---
{описание бага}
---

Формат:
- Описание
- Окружение
- Шаги
- Фактический результат
- Ожидаемый результат
- Логи
"@

Write-File "prompts/07_testing/qa_checklists.md" @"
# PROMPT: Чек‑лист тестирования

Сформируй чек‑лист тестирования:

---
{описание функции}
---

Разбей на:
- функциональные проверки
- UX
- ошибки
- интеграции
- безопасность
"@

# ===== 08_special =====

Write-File "prompts/08_special/security_prompts.md" @"
# PROMPT: Требования безопасности

Сформируй требования безопасности:

---
{описание системы}
---

Укажи:
- аутентификация
- авторизация
- шифрование
- аудит
- хранение данных
"@

Write-File "prompts/08_special/performance_prompts.md" @"
# PROMPT: Производительность

Сформируй требования к производительности:

---
{описание}
---

Укажи:
- SLA
- SLO
- нагрузку
- лимиты
"@

Write-File "prompts/08_special/ai_agent_prompts.md" @"
# PROMPT: Промты для AI‑агента

Сформируй промты для работы аналитика с AI‑агентом:

---
{контекст}
---

Категории:
- анализ требований
- генерация сценариев
- подготовка документации
- проверка логики
- поиск ошибок в требованиях
"@

Write-Host "Готово! Библиотека промтов создана." -ForegroundColor Green