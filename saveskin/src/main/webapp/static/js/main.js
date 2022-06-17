document.addEventListener("DOMContentLoaded", () => {
  const recall_list = document.querySelector("table.recalls");
  recall_list?.addEventListener("click", (e) => {
    const td = e.target;
    if (td.tagName === "TD") {
      const tr = td.closest("TR");
      const recallSn = tr.dataset.recallsn;
      document.location.href = `${rootPath}/recall/${recallSn}/recall_detail`;
    }
  });

  const info_list = document.querySelector("table.infos");
  info_list?.addEventListener("click", (e) => {
    const td = e.target;
    if (td.tagName === "TD") {
      const tr = td.closest("TR");
      const entp_seq = tr.dataset.entp_seq;
      document.location.href = `${rootPath}/info/${entp_seq}/info_detail`;
    }
  });

  const board_list = document.querySelector("table.board-table");

  board_list?.addEventListener("click", (e) => {
    const td = e.target;
    if (td.tagName === "TD") {
      const tr = td.closest("TR");
      const b_num = tr.dataset.b_num;
      // alert(isbn)
      document.location.href = `${rootPath}/board/${b_num}/board_detail`;
    }
  });
});
