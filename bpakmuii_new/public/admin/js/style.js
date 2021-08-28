function datePemesanan(){
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