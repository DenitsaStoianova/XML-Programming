function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

// game catalog
    let game_catalog = doc.createElement("game_catalog");
    doc.appendChild(game_catalog);

// series
    let series = doc.createElement("series");
    series.setAttribute("srsId","M5");
    game_catalog.appendChild(series);

// series basic info
    let series_basic_info = doc.createElement("basic_info");
    series.appendChild(series_basic_info);

    let series_title = doc.createElement("title");
    series_basic_info.appendChild(series_title);
    series_title.appendChild(doc.createTextNode("Minecraft"));

    let series_release_year = doc.createElement("release_year");
    series_basic_info.appendChild(series_release_year);
    series_release_year.appendChild(doc.createTextNode("2009"));

// series developer info
    let series_developer = doc.createElement("developer");
    series_basic_info.appendChild(series_developer);

    let series_studio_name = doc.createElement("studio_name");
    series_developer.appendChild(series_studio_name);
    series_studio_name.appendChild(doc.createTextNode("Mojang Studios"));

    let series_nationality = doc.createElement("nationality");
    series_nationality.setAttribute("code","SE");
    series_developer.appendChild(series_nationality);
    series_nationality.appendChild(doc.createTextNode("Шведски разработчик"));

    let series_founder = doc.createElement("founder");
    series_developer.appendChild(series_founder);
    series_founder.appendChild(doc.createTextNode("Маркус Персон"));

// games
    let games = doc.createElement("games");
    series.appendChild(games);

    let game = doc.createElement("game");
    game.setAttribute("code","86622d87");
    game.setAttribute("category","Излезли Игри");
    games.appendChild(game);

// game basic info
    let game_basic_info = doc.createElement("basic_info");
    game.appendChild(game_basic_info);

    let game_title = doc.createElement("title");
    game_basic_info.appendChild(game_title);
    game_title.appendChild(doc.createTextNode("Minecraft: Windows 10 Edition"));

    let game_release_year = doc.createElement("release_year");
    game_basic_info.appendChild(game_release_year);
    game_release_year.appendChild(doc.createTextNode("2015"));

// series developer info
    let game_developer = doc.createElement("developer");
    game_basic_info.appendChild(game_developer);

    let game_studio_name = doc.createElement("studio_name");
    game_developer.appendChild(game_studio_name);
    game_studio_name.appendChild(doc.createTextNode("EA Gothenburg"));

    let game_nationality = doc.createElement("nationality");
    game_nationality.setAttribute("code","SE");
    game_developer.appendChild(game_nationality);
    game_nationality.appendChild(doc.createTextNode("Шведски разработчик"));

    let game_founder = doc.createElement("founder");
    game_developer.appendChild(game_founder);
    game_founder.appendChild(doc.createTextNode("Бен Уолк"));

// game other info
    let price = doc.createElement("price");
    price.setAttribute("currency", "лв");
    game.appendChild(price);
    price.appendChild(doc.createTextNode("75.27"));

    let language = doc.createElement("language");
    game.appendChild(language);
    language.appendChild(doc.createTextNode("Английски"));

    let image = doc.createElement("image");
    game.appendChild(image);
    image.appendChild(doc.createTextNode("Minecraft_10.jpg"));

// game system requirements
    let system_requirements = doc.createElement("system_requirements");
    game.appendChild(system_requirements);

    let processor = doc.createElement("processor");
    system_requirements.appendChild(processor);
    processor.appendChild(doc.createTextNode("Intel Core i3-3210 3.2 GHz / AMD A8-7600 APU 3.1 GHz или по-добър"));

    let os = doc.createElement("os");
    os.setAttribute("bits", "64-bit");
    system_requirements.appendChild(os);
    os.appendChild(doc.createTextNode("Windows 10"));

    let sound_card = doc.createElement("sound_card");
    sound_card.setAttribute("has", "Да");
    system_requirements.appendChild(sound_card);

    let available_space = doc.createElement("available_space");
    available_space.setAttribute("unit", "гигабайта");
    system_requirements.appendChild(available_space);
    available_space.appendChild(doc.createTextNode("2"));

// game descriptions
    let descriptions = doc.createElement("descriptions");
    game.appendChild(descriptions);

// description part1 1
    let description1 = doc.createElement("description");
    descriptions.appendChild(description1);

    let part_number1 = doc.createElement("part_number");
    description1.appendChild(part_number1);
    part_number1.appendChild(doc.createTextNode("Част 1"));

    let part_title1 = doc.createElement("part_title");
    description1.appendChild(part_title1);
    part_title1.appendChild(doc.createTextNode("Основно"));

    let text1 = doc.createElement("text");
    description1.appendChild(text1);
    text1.appendChild(doc.createTextNode("Повечето от геймърите са истински запалени фенове на Майнкрафт, а ако не се причисляваш към тях, то със сигурност поне си чувал за съществуването на играта, с която можеш да построиш всичко."));

// description part 2
    let description2 = doc.createElement("description");
    descriptions.appendChild(description2);

    let part_number2 = doc.createElement("part_number");
    description2.appendChild(part_number2);
    part_number2.appendChild(doc.createTextNode("Част 2"));

    let part_title2 = doc.createElement("part_title");
    description2.appendChild(part_title2);
    part_title2.appendChild(doc.createTextNode("Геймплей"));

    let text2 = doc.createElement("text");
    description2.appendChild(text2);
    text2.appendChild(doc.createTextNode("Играта като цяло има няколко режима – survival (играчът трябва да събира ресурси и да строи сгради с цел оживяване), creative (основен режим, наподобяващ „оцеляване“, но с повече възможности за строене), hardcore (най-трудният от всички), adventure (без възможност за директно разрушаване, играчът трябва да произвежда различни неща) ,spectator (можете да летите наоколо) ,demo (демо режим за потребители, които не са купили играта)."));

// description part 3
    let description3 = doc.createElement("description");
    descriptions.appendChild(description3);

    let part_number3 = doc.createElement("part_number");
    description3.appendChild(part_number3);
    part_number3.appendChild(doc.createTextNode("Част 3"));

    let part_title3 = doc.createElement("part_title");
    description3.appendChild(part_title3);
    part_title3.appendChild(doc.createTextNode("Графика и звук"));

    let text3 = doc.createElement("text");
    description3.appendChild(text3);
    text3.appendChild(doc.createTextNode("Добавени са и други интересни функции, като например по-разширен контрол и възможността за записване и споделяне на всичко, което се случва в играта чрез game DVR. Също както предшествениците си тази версия има много елементи на оцеляване."));

    return doc;
}
