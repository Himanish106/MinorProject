const notFound = document.querySelector(".not-found");
const search = () => {
    const searchBox = document
            .getElementById("websiteSearch")
            .value.toUpperCase();
    const footer = document.querySelector("footer");
    const showcases = document.querySelectorAll(".showcase1");

    showcases.forEach((showcase) => {
        const products = showcase.querySelectorAll(".pdt");
        const pdtNames = showcase.querySelectorAll(".website-type");

        let sectionHasMatch = false;

        for (let i = 0; i < pdtNames.length; i++) {
            const match = pdtNames[i];
            const val = match.innerHTML || match.innerText || match.textContent;

            if (val.toUpperCase().indexOf(searchBox) > -1) {
                products[i].style.display = "";
                sectionHasMatch = true;
            } else {
                products[i].style.display = "none";
            }
        }
        showcase.style.display = sectionHasMatch ? "" : "none";
        footer.style.display = sectionHasMatch ? "" : "none";
        if (!sectionHasMatch && footer.style.display === "none") {
            notFound.style.display = "block";
        } else {
            notFound.style.display = "none";
        }
    });
};