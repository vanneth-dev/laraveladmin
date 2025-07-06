
<script>
    $(document).ready(function () {
    const checkAll = $("#checkAll");
    const checkboxes = $(".url-checkbox").not("#checkAll"); // Exclude checkAll from the list
    const checkedCount = $("#checkedCount");

    function updateCheckedCount() {
        const checked = checkboxes.filter(":checked").length;
        checkedCount.text(checked);
        checkAll.prop("checked", checked === checkboxes.length);
    }

    checkAll.on("change", function () {
        checkboxes.prop("checked", this.checked);
        updateCheckedCount();
    });

    checkboxes.on("change", updateCheckedCount);

    // Ensure checkAll is checked if all individual checkboxes are checked initially
    updateCheckedCount();
});

</script>
