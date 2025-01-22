<?php

namespace App\DataFixtures;

use App\Entity\Categories;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\String\Slugger\SluggerInterface;

class CategoriesFixtures extends Fixture
{

    public function __construct(private SluggerInterface $slugger){}  //ajouté pour avoid repetation or setSlug(informatique)
    
    public function load(ObjectManager $manager): void
    {
         $parent = $this->createCategory('Informatique', null, $manager); //name:'Informatique',manager: $manager c paramettre nommé ça nous évite d'avoir à mettre un null au millieu on nomme directement les parametres
     

         $this->createCategory('Ordinateurs portables', $parent, $manager); //cette category enfant
          $this->createCategory('Ecrans', $parent, $manager);
         $this->createCategory('Souris', $parent, $manager);
   
         $parent = $this->createCategory('Mode', null, $manager);
         $this->createCategory('Homme', $parent, $manager); 
         $this->createCategory('Femme', $parent, $manager);
        $this->createCategory('Enfant', $parent, $manager);

        $manager->flush();
    }
    public function createCategory(string $name, Categories $parent = //ajouté cette lign et au sous
     null, ObjectManager $manager) 
     {

        $category = new Categories();
             $category->setName($name);
             $category->setSlug($this->slugger->slug($category->getName())
             ->lower ());                                                       //ajouté lower pour miniscule
       
             $category->setParent($parent);
             $manager->persist($category);
             return $category;
             
     }       
}

