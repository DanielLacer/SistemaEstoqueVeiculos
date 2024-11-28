<!-- resources/views/about.blade.php -->
<!doctype html>
<html lang="PT-BR">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Estoque Veiculos</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="{{ asset('css/paginas.css') }}">

    <script defer src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script defer src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>
    <script defer src="https://cdn.datatables.net/2.1.8/js/dataTables.bootstrap5.js"></script>
    <script defer src="{{ asset('js/scriptOpcionais.js') }}"></script>
    
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-body-secondary custom-navbar">
        <div class="container-fluid ms-5">
            <a class="navbar-brand fs-4 lato-regular-italic" href="#">ESTOQUE DE VEÍCULOS</a>
        </div>
    </nav>
    <section class="d-flex justify-content-center align-items-center height-section">
        <div class="container-md container-table">
            <div class="border-bottom pb-2">
                <h7>TABELA DOS OPCIONAIS DE CADA VEÍCULO</h7>
            </div>
            <table id="opcionais" class="table table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>ID do Opcional</th>
                        <th>Nome do Opcional</th>
                        <th>ID do Veículo</th>
                        <th>Modelo</th>
                        <th>Marca</th>
                    </tr>
                </thead>
                <tbody>
                    @if(isset($vehicleOptions))
                        @foreach($vehicleOptions as $option)
                        <tr>
                            <td>{{ $option->opcional_id }}</td>
                            <td>{{ $option->nome }}</td>
                            <td>{{ $option->veiculo_id }}</td>
                            <td>{{ $option->modelo }}</td>
                            <td>{{ $option->marca }}</td>
                        </tr>
                        @endforeach
                    @endif
                </tbody>
            </table> 
        </div>
    </section>
</body>

</html>

