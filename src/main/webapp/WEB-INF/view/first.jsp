<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dream Team</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url(https://thumb.tildacdn.com/tild3831-6461-4937-b432-396366393039/-/resize/760x/-/format/webp/7-min.jpg) no-repeat center center fixed;
            background-size: cover;
            background-color: #f4f4f4;
            color: #f4f4f4; /* Основной цвет текста */
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.6); /* Полупрозрачный слой для лучшей читаемости текста */
            min-height: 100vh;
        }

        .header {
            background-color: #222;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Легкая тень для заголовка */
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .team-container {
            position: relative;
            margin-bottom: 50px;
        }

        .team {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .team-member {
            background-color: rgba(255, 255, 255, 0.1); /* Полупрозрачный белый фон */
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3); /* Легкая тень */
            transition: transform 0.3s ease;
        }

        .team-member:hover {
            transform: scale(1.05); /* Легкий эффект увеличения при наведении */
        }

        .team-member img {
            width: 100%;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        .team-member h3 {
            margin-bottom: 10px;
            font-size: 18px;
            color: #f4f4f4; /* Цвет заголовков */
        }

        .team-member p {
            color: #ddd; /* Цвет описания */
        }

        .projects {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        .project {
            background-color: rgba(255, 255, 255, 0.1); /* Полупрозрачный белый фон для проектов */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Легкая тень для блоков проектов */
        }

        .project h4 {
            margin-bottom: 10px;
            color: #f4f4f4; /* Цвет заголовков проектов */
        }

        .project p {
            color: #ddd; /* Цвет описания проектов */
        }

        .chat-btn, .skills-btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 20px 0;
            background-color: #555;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .chat-btn:hover, .skills-btn:hover {
            background-color: #777;
        }

        .skills-content, .contact-content {
            display: none;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            margin-top: 20px;
        }

        .skills-content.active, .contact-content.active {
            display: block;
        }

        .skills-content {
            background-color: rgba(255, 255, 255, 0.1); /* Легкий прозрачный фон для разделов */
        }

        .contact-content {
            background-color: rgba(255, 255, 255, 0.1);
        }

        .skills-content h3, .contact-content h3 {
            color: #f4f4f4; /* Цвет заголовков */
        }

        .skills-content p, .contact-content p {
            color: #ddd; /* Цвет текста */
        }

        ul {
            list-style: none;
            padding-left: 0;
        }

        ul li {
            color: #ddd;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<div class="overlay">
    <div class="header">
        <h1>Dream Team</h1>
    </div>

    <div class="container">

        <!-- Блок с представлением команды -->
        <div class="team-container">
            <section class="team" id="team">
                <div class="team-member">
                    <p>First team member</p>
                    <h3>Дворников Владислав</h3>
                    <p>Дизайнер</p>
                </div>
                <div class="team-member">
                    <p>Second team member</p>
                    <h3>Колотилин Семен</h3>
                    <p>Системный аналитик</p>
                </div>
                <div class="team-member">
                    <p>Third team member</p>
                    <h3>Дубинкин Данила</h3>
                    <p>Разработчик</p>
                </div>
                <div class="team-member">
                    <p>Fourth team member</p>
                    <h3>Щелкунов Александр</h3>
                    <p>Тестировщик</p>
                </div>
            </section>
        </div>

        <!-- Примеры проектов -->
        <section class="projects">
            <div class="project">
                <h4>Telegram-Bot</h4>
                <p>Студенты пишут боту, выбирают предмет, тему, и тренируются на тестах, которые выдаёт им бот</p>
            </div>
            <div class="project">
                <h4>Site "Малина"</h4>
                <p>Сайт для ознакомления покупателей с магазином "малина", на котором можно найти расположение точек магазина, ассортимент продуктов и время работы</p>
            </div>
            <div class="project">
                <h4>Конфигурация 1с для хоз.учёта "леруа мерлен"</h4>
                <p>Разработали программный продукт 1с на основе 1С:Розница для ведения хоз.учёта в компании "леруа мерлен"</p>
            </div>
        </section>

        <!-- Кнопка с чатом -->
        <a href="#" class="chat-btn" onclick="toggleContact()">Чат с нами</a>

        <!-- Кнопка "Что мы умеем" -->
        <a href="#" class="skills-btn" onclick="toggleSkills()">Что мы умеем</a>

        <!-- Скрытый блок с информацией о навыках -->
        <div class="skills-content" id="skillsContent">
            <h3>Наши навыки</h3>
            <p>Мы владеем разнообразными навыками, включая разработку веб-приложений, проектирование интерфейсов, аналитику и многое другое.</p>
        </div>

        <!-- Скрытый блок с контактной информацией -->
        <div class="contact-content" id="contactContent">
            <h3>Контактные данные</h3>
            <p>Вы можете связаться с нами по следующим каналам:</p>
            <ul>
                <li>Email: OurPsutiProject@gmail.com</li>
                <li>Телефон: +7 777 777-77-77</li>
                <li>Адрес: г. Самара, ул. Льва Толстого, 23</li>
            </ul>
        </div>

    </div>
</div>

<script>
    function toggleSkills() {
        var skillsContent = document.getElementById('skillsContent');
        skillsContent.classList.toggle('active');
    }

    function toggleContact() {
        var contactContent = document.getElementById('contactContent');
        contactContent.classList.toggle('active');
    }
</script>

</body>
</html>
