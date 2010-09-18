$(function() {
  $("span.tags").each(function() {
    $(this).editable($(this).attr('data-url'), {
      method: "PUT",
      name: 'image[tag_names]'
    });
  });
});