<?php

namespace App\Entity;

use App\Entity\Trait\CreatedAtTrait;
use App\Repository\OrdersRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: OrdersRepository::class)]
class Orders
{
    use CreatedAtTrait; //ajouté ici pour aller voir createdAtTrait.php
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 20, unique:true)] /*unique:true ajouté ici* */
    private ?string $reference = null;

    /*#[ORM\Column(options: ['default' =>'CURRENT_TIMESTAMP'])]   /*(options: ['default' =>'CURRENT_TIMESTAMP'])] I ADDED THIS HERE*/ 
   /* private ?\DateTimeImmutable $created_at = null; je peux supprimer j'ai laissé juste pour commprendre*/

    #[ORM\ManyToOne(inversedBy: 'orders')]
    private ?Coupons $coupons = null;

    #[ORM\ManyToOne(inversedBy: 'orders')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Users $users = null;

    /**
     * @var Collection<int, OrdersDetails>
     */
    #[ORM\OneToMany(targetEntity: OrdersDetails::class, mappedBy: 'orders', orphanRemoval: true)]
    private Collection $ordersDetails;

    public function __construct()
    {
        $this->ordersDetails = new ArrayCollection();
        $this->created_at = new \DateTimeImmutable(); //cette ligné ajouté ici pour la date
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getReference(): ?string
    {
        return $this->reference;
    }

    public function setReference(string $reference): static
    {
        $this->reference = $reference;

        return $this;
    }

    // public function getCreatedAt(): ?\DateTimeImmutable      je dois supprimé mais j'ai laissé pour commprend
    // {
    //     return $this->created_at;
    // }

    // public function setCreatedAt(\DateTimeImmutable $created_at): static
    // {
    //     $this->created_at = $created_at;

    //     return $this;
    // }

    public function getCoupons(): ?Coupons
    {
        return $this->coupons;
    }

    public function setCoupons(?Coupons $coupons): static
    {
        $this->coupons = $coupons;

        return $this;
    }

    public function getUsers(): ?Users
    {
        return $this->users;
    }

    public function setUsers(?Users $users): static
    {
        $this->users = $users;

        return $this;
    }

    /**
     * @return Collection<int, OrdersDetails>
     */
    public function getOrdersDetails(): Collection
    {
        return $this->ordersDetails;
    }

    public function addOrdersDetail(OrdersDetails $ordersDetail): static
    {
        if (!$this->ordersDetails->contains($ordersDetail)) {
            $this->ordersDetails->add($ordersDetail);
            $ordersDetail->setOrders($this);
        }

        return $this;
    }

    public function removeOrdersDetail(OrdersDetails $ordersDetail): static
    {
        if ($this->ordersDetails->removeElement($ordersDetail)) {
            // set the owning side to null (unless already changed)
            if ($ordersDetail->getOrders() === $this) {
                $ordersDetail->setOrders(null);
            }
        }

        return $this;
    }
}
