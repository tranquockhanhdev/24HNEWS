
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.getElementById("main-content").style.marginLeft = "250px";
  document.getElementById("main").style.display = "none";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
  document.getElementById("main").style.display = "block";
}
function deletedanhmuc(dmid) {
  fetch(`/admin/delete_danhmuc/${dmid}`, {
    method: 'delete'
  })
  location.reload();
}
function editdanhmuc(dmid) {
  var form = document.getElementById('editForm');
  form.querySelector('input[name="id"]').value = dmid;
  form.action = `/admin/edit_danhmuc/${dmid}`;
  form.method = 'POST';
}
function deletebaiviet(bvid) {
  fetch(`/admin/delete_baiviet/${bvid}`, {
    method: 'delete'
  })
  location.reload();
}
function editbaiviet(bvid) {
  var form = document.getElementById('editForm');
  form.querySelector('input[name="id"]').value = bvid;
  form.action = `/admin/edit_baiviet/${bvid}`;
  form.method = 'POST';
}
function editcontact(bvid) {
  var form = document.getElementById('editForm');
  form.action = `/admin/edit_contact/${bvid}`;
  form.method = 'POST';
}

function deletelienhe(bvid) {
  fetch(`/admin/delete_lienhe/${bvid}`, {
    method: 'delete'
  })
  location.reload();
}