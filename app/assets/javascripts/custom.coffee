# Instant Image Preview
readUploadedPicture = (input, preview) ->
  if input.files and input.files[0]
    reader = new FileReader

    reader.onload = (e) ->
      $(preview).attr 'src', e.target.result
      return

    reader.readAsDataURL input.files[0]
  return
