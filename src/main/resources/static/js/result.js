$(function () {
    var userId = $("#userIdInput").val();
    initResultTable();
    initDepartment(userId);
    initBaasicDepart(userId);
})

function initResultTable() {
    $.get("/vote/getStaticsResult?type=1", function(data) {
        var tr = "";
        var list = data.data;
        for (var i = 0; i < list.length; i++) {
            var index = i + 1;
            tr += "<tr><td>" + index + "</td>";
            tr += "<td>" + list[i].depart + "</td>";
            tr += "<td>" + list[i].rank + "</td></tr>";
        }
        $("#resultTable").append(tr);
    });
}

function initDepartment(userId) {
    $.get("/vote/getDepartmentVoteResult?userId=" + userId, function(data) {
        var tr = "";
        var list = data.data;
        for (var i = 0; i < list.length; i++) {
            var index = i + 1;
            tr += "<tr><td>" + index + "</td>";
            tr += "<td>" + list[i].departName + "</td>"
            tr += "<td><input type='checkbox' class='checkItem' onclick='return false' " + isChecked(list[i].voteResult, "1") + "/></td>"
            tr += "<td><input type='checkbox' class='checkItem' onclick='return false' " + isChecked(list[i].voteResult, "2") + "/></td>"
            tr += "<td><input type='checkbox' class='checkItem' onclick='return false' " + isChecked(list[i].voteResult, "3") + "'/></td></tr>"
        }
        $("#department").append(tr);
    });
}
function initBaasicDepart(userId) {
    $.get("/vote//getBasicDepartmentVoteResult?userId=" + userId, function(data) {
        var tr = "";
        var list = data.data;
        for (var i = 0; i < list.length; i++) {
            var index = i + 1;
            tr += "<tr><td>" + index + "</td>";
            tr += "<td>" + list[i].departname + "</td>"
            tr += "<td><input type='checkbox' class='checkItem' onclick='return false' " + isChecked(list[i].voteResult, "1") + "/></td>"
            tr += "<td><input type='checkbox' class='checkItem' onclick='return false' " + isChecked(list[i].voteResult, "2") + "/></td>"
            tr += "<td><input type='checkbox' class='checkItem' onclick='return false' " + isChecked(list[i].voteResult, "3") + "'/></td></tr>"
        }
        $("#baseDepart").append(tr);
    })
}
function isChecked(score, trScore) {
    if (score && score == trScore) {
        return "checked='checked'";
    }
    return "";
}