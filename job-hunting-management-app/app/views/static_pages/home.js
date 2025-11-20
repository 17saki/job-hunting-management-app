<script>
  // ▼ 絞り込み（リアルタイム）
  document.getElementById("search-box").addEventListener("input", function() {
    const keyword = this.value.toLowerCase();
    document.querySelectorAll(".company-card").forEach(card => {
      const name = card.dataset.name.toLowerCase();
      card.style.display = name.includes(keyword) ? "block" : "none";
    });
  });

  // ▼ 並び替え（名前 A→Z → Z→A）
  let asc = true;
  document.querySelector(".sort-btn").addEventListener("click", function() {
    const list = document.getElementById("company-list");
    const cards = Array.from(document.querySelectorAll(".company-card"));

    cards.sort((a, b) => {
      const aName = a.dataset.name;
      const bName = b.dataset.name;
      return asc ? aName.localeCompare(bName) : bName.localeCompare(aName);
    });

    asc = !asc;
    cards.forEach(card => list.appendChild(card));
  });
</script>
