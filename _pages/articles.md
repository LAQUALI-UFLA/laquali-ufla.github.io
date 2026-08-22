---
layout: single
title: "Publications"
permalink: /articles/
author_profile: false
---

<p>This list is automatically updated from the ORCID profile of <strong>Cleiton Nunes</strong>.</p>

<div id="orcid-loading" style="text-align: center; padding: 20px; font-weight: bold;">
  Loading publications from ORCID...
</div>

<div id="orcid-publications"></div>

<script>
document.addEventListener("DOMContentLoaded", function () {
  const orcidId = "0000-0002-5147-7357";
  const url = `https://pub.orcid.org/v3.0/${orcidId}/works`;

  fetch(url, {
    headers: {
      "Accept": "application/json"
    }
  })
  .then(response => {
    if (!response.ok) {
      throw new Error("Error fetching data from ORCID API");
    }
    return response.json();
  })
  .then(data => {
    const loadingDiv = document.getElementById("orcid-loading");
    const container = document.getElementById("orcid-publications");
    
    loadingDiv.style.display = "none";

    // Extract works summary
    const works = data.group.map(g => g["work-summary"][0]);

    // Filter works from 2020 onwards
    const recentWorks = works.filter(work => {
      const year = work["publication-date"]?.year?.value;
      return year && parseInt(year, 10) >= 2020;
    });

    // Sort most recent first
    recentWorks.sort((a, b) => {
      const yearA = parseInt(a["publication-date"]?.year?.value || 0, 10);
      const yearB = parseInt(b["publication-date"]?.year?.value || 0, 10);
      return yearB - yearA;
    });

    if (recentWorks.length === 0) {
      container.innerHTML = "<p>No publications found from 2020 onwards.</p>";
      return;
    }

    const list = document.createElement("ol");
    list.style.lineHeight = "1.6";

    recentWorks.forEach(work => {
      const title = work.title?.title?.value || "Untitled";
      const year = work["publication-date"]?.year?.value || "";
      const journal = work["journal-title"]?.value || "";
      
      // Find DOI in external IDs
      let doiUrl = "";
      const extIds = work["external-ids"]?.["external-id"] || [];
      const doiObj = extIds.find(id => id["external-id-type"]?.toLowerCase() === "doi");
      
      if (doiObj) {
        doiUrl = doiObj["external-id-url"]?.value || `https://doi.org/${doiObj["external-id-value"]}`;
      }

      const li = document.createElement("li");
      li.style.marginBottom = "15px";

      let content = `<strong>${title}</strong> (${year})`;
      if (journal) {
        content += `<br><em style="color: #555;">${journal}</em>`;
      }
      if (doiUrl) {
        content += `<br><a href="${doiUrl}" target="_blank" rel="noopener noreferrer">DOI: ${doiUrl}</a>`;
      }

      li.innerHTML = content;
      list.appendChild(li);
    });

    container.appendChild(list);
  })
  .catch(error => {
    console.error(error);
    document.getElementById("orcid-loading").innerHTML = 
      "<p style='color: red;'>Unable to load publications at this time.</p>";
  });
});
</script>
