document.getElementById('sort-btn').addEventListener('click', () => {
  // 並び替え処理（例：会社名でソート）
});

document.getElementById('search-btn').addEventListener('click', () => {
  const keyword = document.getElementById('search-input').value.toLowerCase();
  document.querySelectorAll('.company-card').forEach(card => {
    const text = card.innerText.toLowerCase();
    card.style.display = text.includes(keyword) ? 'block' : 'none';
  });
});
