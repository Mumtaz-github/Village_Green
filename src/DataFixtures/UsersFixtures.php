<?php

namespace App\DataFixtures;

use App\Entity\Users;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\String\Slugger\SluggerInterface;
use Faker;

class UsersFixtures extends Fixture
{
    public function __construct(   //ajouté cette proprieté pour mot de passe hacher
        private UserPasswordHasherInterface $passwordEncoder,
        private SluggerInterface $slugger

    ) {} // Fixed the constructor definition

    public function load(ObjectManager $manager): void
    {
     $admin = new Users();
     $admin->setEmail('admin@demo.fr');
     $admin->setLastname('ali');
     $admin->setFirstname('mumtaz');
     $admin->setAddress('2 allee rollin');
     $admin->setZipcode('80000');
     $admin->setCity('Amiens');
     $admin->setPassword(
        $this->passwordEncoder->hashPassword($admin, 'admin')  //ici j'ai donné user c admin et mot de passe admin
     );
   $admin->setRoles(['ROLE_ADMIN']);  //DONNÉ ROLE
   $manager->persist($admin);  //on peut cree d'autres utlisateur ici

   $faker = Faker\Factory::create('fr_FR'); //il va donner des information en français
   for($usr = 1; $usr<=5; $usr++){   //cree utilisateur
     $user = new Users();
     $user->setEmail($faker->email);
     $user->setLastname($faker->lastName);
     $user->setFirstname($faker->firstName);
     $user->setAddress($faker->streetAddress);
     $user->setZipcode($faker->postcode);
     $user->setCity($faker->city);
     $user->setPassword(
        $this->passwordEncoder->hashPassword($user, 'secret')  //ici j'ai donné user c admin et mot de passe admin
     );
   dump($user);  //cette fucntion montre user sur pendent lance commande migration
   $manager->persist($user);

   }

        $manager->flush();
    }
}