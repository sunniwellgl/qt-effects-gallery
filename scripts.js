async function loadGallery() {
    const container = document.getElementById("gallery");
    const resp = await fetch("data.json");
    const effects = await resp.json();

    effects.forEach(e => {
        const div = document.createElement("div");
        div.className = "card";

        div.innerHTML = `
            <img src="${e.img}" data-large="${e.img}">
            <div class="card-content">
                <h3>${e.name}</h3>
                <p>${e.desc}</p>
                <a class="btn" href="${e.url}" target="_blank">查看源码 →</a>
            </div>
        `;

        container.appendChild(div);
    });

    setupLightbox();
}

function setupLightbox() {
    const lightbox = document.getElementById("lightbox");
    const lightboxImg = document.getElementById("lightbox-img");

    // 点击图片打开大图
    document.querySelectorAll(".card img").forEach(img => {
        img.addEventListener("click", () => {
            lightboxImg.src = img.dataset.large;
            lightbox.classList.remove("hidden");
        });
    });

    // 点击遮罩关闭
    lightbox.addEventListener("click", () => {
        lightbox.classList.add("hidden");
    });

    // ESC 关闭
    window.addEventListener("keydown", (e) => {
        if (e.key === "Escape") {
            lightbox.classList.add("hidden");
        }
    });
}

loadGallery();
