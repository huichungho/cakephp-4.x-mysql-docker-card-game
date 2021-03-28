<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <div class="text-center">
            <div class="col-sm-12">
                <h3>Card Game</h3><br>
            </div>
        </div>
        <div class="text-center">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <?php echo $this->Form->create(NULL, ['name'=>'new_game', 'class'=>'was-validated', 'autocomplete'=>'off', 'action'=>'/game']) ?>
                <div class="form-group">
                    <?php echo $this->Form->control('players', ['type'=>'text', 'class'=>'form-control','placeholder'=>'Enter # of players','required'=>true, 'label'=>false]);?>
                </div>
                <button type="submit" class="btn btn-danger" style="float: right;">Play</button>
                <?php echo $this->Form->end() ?>
            </div>
        </div>
    </div>

    <br>
    <div class="container">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
        <?php
            $player_and_cards = $this->request->getSession()->read('cards');
            if (isset($player_and_cards)) {
                echo '<table id="cardTable" class="table table-bordered table-striped table-hover">';
            }
            foreach ($player_and_cards as $player) {
                echo '<tr>';
                foreach ($player as $id => $cards) {
                    echo '<td>'.implode(',',$cards) . '</td>';
                }
                echo '</tr>';
            }
            
        ?>
        </div>
    </div>
    <script>
        // $(document).ready( function () {
        //     $('#cardTable').DataTable();
        // } );
    </script>
</body>
</html>