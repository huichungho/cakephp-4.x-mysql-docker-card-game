<?php
declare(strict_types=1);

namespace App\Controller;

use Cake\Validation\Validator;

class GameController extends AppController
{
    private $players;

    public function index()
    {
        if ($this->request->is('post')) {

            $validator = new Validator();
            $validator
                ->requirePresence('players')
                ->add('players', 'validFormat', [
                    'rule' => 'naturalNumber',
                    'message' => 'Players must be valid number (greater than zero)'
                ]);

            $errors = $validator->validate($this->request->getData());
            if (empty($errors)) {
                $request = $this->request->getData();
                $this->players = (int)$request['players'];
                $this->distribute();
            } else {
                $this->Flash->error(__($errors['players']['validFormat']));
                $this->set('validationErrorsArray', $errors);
            }
        }

        $this->redirect(['controller' => 'Pages', 'action' => 'display', 'index']);
    }

    private function distribute()
    {
        // S H D C
        // A,2-9,X,J,Q,K
        $this->loadmodel('Cards');
        $deck = $this->Cards->find();

        $player_and_cards = array();
        foreach($deck as $eachCard) {
            
            // distribute each card to random player
            $player_to_distribute = rand(1,$this->players);
            $card = ($eachCard['suit'].'-'.$eachCard['card_number']);
            if (!isset($player_and_cards[$player_to_distribute]['cards'])) {
                $player_and_cards[$player_to_distribute]['cards'] = array();
            }
            array_push($player_and_cards[$player_to_distribute]['cards'], $card);
        }

        // dd($player_and_cards);
        $this->request->getSession()->write('cards', $player_and_cards);
        $this->redirect(['controller' => 'Pages', 'action' => 'display', 'index']);
        
    }
}