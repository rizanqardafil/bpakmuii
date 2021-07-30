function date(){
    var date = new Date();
    var fromDate;
    var toDate;
    var tdate = date.getDate();
    var month = date.getMonth() + 1;
    if (date < 10) {
        tdate = '0' + tdate;
    }
    if (month < 10) {
        month = '0' + month;
    }
    var year = date.getUTCFullYear();
    var minDate = year + "-" + month + "-" + tdate;
    document.getElementById("tanggalPeminjaman").setAttribute('min', minDate);
    document.getElementById("tanggalPengembalian").setAttribute('min', minDate);

    $('#tanggalPeminjaman').on('change', function () {
        fromDate = $(this).val();
        $('#tanggalPengembalian').prop('min', function () {
            return fromDate;
        })
    });

    $('#tanggalPengembalian').on('change', function () {
        toDate = $(this).val();
        $('#tanggalPeminjaman').prop('max', function () {
            return toDate;
        })
    });
}


function xzoom() {
    $(document).ready(function () {
        $('.xzoom, .xzoom-gallery').xzoom({
            zoomWidth: 500,
            title: false,
            tint: '#333',
            Xoffset: 15
        });
    });
}