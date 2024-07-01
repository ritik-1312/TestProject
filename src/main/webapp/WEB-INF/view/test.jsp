<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Form</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Product Form</h2>
    <form id="productForm">
        <div class="row mb-3">
            <label for="name" class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="name">
            </div>
        </div>
        <div class="row mb-3">
            <label for="cost" class="col-sm-2 col-form-label">Cost</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="cost">
            </div>
        </div>
        <div class="row mb-3">
            <label for="quantity" class="col-sm-2 col-form-label">Quantity</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="quantity">
            </div>
        </div>
        <div class="row mb-3">
            <label for="description" class="col-sm-2 col-form-label">Description</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="description">
            </div>
        </div>
        <div class="row mb-3">
            <label for="category" class="col-sm-2 col-form-label">Category</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="category">
            </div>
        </div>
        <div class="center-button">
            <button type="button" class="btn btn-primary" onclick="submitForm()">Submit</button>
        </div>
    </form>
</div>

<script>
function submitForm() {
    // Get form data
    var formData = {
        name: $('#name').val(),
        cost: parseInt($('#cost').val()), // Ensure cost is parsed as integer
        quantity: parseInt($('#quantity').val()), // Ensure quantity is parsed as integer
        description: $('#description').val(),
        category: $('#category').val()
    };

    // Send AJAX request
    $.ajax({
        type: "POST",
        url: 'saveProduct', // Replace with your actual endpoint URL
        data: JSON.stringify(formData),
        contentType: 'application/json',
        success: function(response) {
            console.log('Form submitted successfully:', response);
            alert('Form submitted successfully!');
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.error('Error submitting form:', textStatus, errorThrown);
            alert('Error submitting form: ' + textStatus);
        }
    });
}
</script>

</body>
</html>
