# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
        
update_conversion_output = (responseJSON) ->
    console.log responseJSON
    $("#conversion_output").html(responseJSON.conversion_value)

convert = (value) ->
    $.ajax("/conversion/convert", {
    data: {
    'input_value': value
    },
    success: (data) -> update_conversion_output(data)
    })
 


 input_fields_change = $(document).ready ->
   $("#conversion_field").change ->
    console.log("Value changed")
    input_value = $("#conversion_field").val()
    console.log(input_value)
    convert(input_value)