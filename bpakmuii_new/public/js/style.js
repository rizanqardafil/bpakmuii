function date(){
    var fromDate;
    var toDate;

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