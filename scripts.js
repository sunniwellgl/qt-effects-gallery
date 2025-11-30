async function loadGallery() {
    const container = document.getElementById("gallery");
    const resp = await fetch("data.json");
    const effects = await resp.json();

    effects.forEach(e => {
        const card = document.createElement("div");
        card.className = "card";

        card.innerHTML = `
            <img src="${e.img}" alt="${e.name}">
            <h3>${e.name}</h3>
            <p>${e.desc || ""}</p>
            <a class="btn" href="${e.url}" target="_blank">查看源码 →</a>
        `;

        container.appendChild(card);
    });
}

loadGallery();
