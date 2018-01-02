$(function () {
    initDepartment("1");
    initBaasicDepart("1");
})

function initDepartment(userId) {
    $.get("/vote/getDepartmentVoteResult?userId=" + userId, function(data) {
        var tr = "";
        var list = data.data;
        for (var i = 0; i < list.length; i++) {
            var index = i + 1;
            tr += "<tr><td>" + index + "</td>";
            tr += "<td>" + list[i].departName + "</td>"
            tr += "<td><input type='radio' name='radio_" + i + "' "+ isChecked(list[i].voteResult, "5") + "/></td>"
            tr += "<td><input type='radio' name='radio_" + i + "' "+ isChecked(list[i].voteResult, "3") + "/></td>"
            tr += "<td><input type='radio' name='radio_" + i + "' "+ isChecked(list[i].voteResult, "1") + "/></td>"
            tr += "<td><input type='radio' name='radio_" + i + "' "+ isChecked(list[i].voteResult, "0") + "/></td></tr>"
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
            tr += "<td><input type='radio' name='baseRadio_" + i + "' "+ isChecked(list[i].voteResult, "5") + "/></td>"
            tr += "<td><input type='radio' name='baseRadio_" + i + "' "+ isChecked(list[i].voteResult, "3") + "/></td>"
            tr += "<td><input type='radio' name='baseRadio_" + i + "' "+ isChecked(list[i].voteResult, "1") + "/></td>"
            tr += "<td><input type='radio' name='baseRadio_" + i + "' "+ isChecked(list[i].voteResult, "0") + "/></td></tr>"
        }
        $("#baseDepart").append(tr);
    })
}
function isChecked(score, trScore) {
    if (score && score == trScore) {
        return "checked";
    }
    return "";
}