jQuery ->
    $('#book_author_tokens').tokenInput '/authors.json'
    theme: "facebook"
    preventDuplicates: true,
    tokenLimit: 5,
    hintText: null,
    animateDropdown: false
    prePopulate: $('#book_author_tokens').data('load')