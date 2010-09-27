$(function() {
  $("span.tags").each(function() {
    $(this).editable($(this).attr('data-url'), {
      method: "PUT",
      name: 'image[tag_list]',
      onblur: 'submit'
    });
  });
  
  $("#search").autocomplete({ source: "/tags", dataType: "json" });
});