function wish() {
  var wishes = ['were younger.',
                'could take bigger bong hits.',
                'could think faster and be sharper.'];
  var index = 0;

  function showMessage() {
    $('#message').text(wishes[index]).show();

    setTimeout(hideMessage, 380)
  };

  function hideMessage() {
    $('#message').hide();

    updateMessage()
  };

  function updateMessage() {
    index += 1;

    if (index > 2) {
      index = 0;
    }

    showMessage();
  };

  showMessage();
};
