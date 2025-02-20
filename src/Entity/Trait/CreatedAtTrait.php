<?php

namespace App\Entity\Trait;

use Doctrine\ORM\Mapping as ORM;

trait CreatedAtTrait
{
    #[ORM\Column(options: ['default' =>'CURRENT_TIMESTAMP'])]    /*(options: ['default' =>'CURRENT_TIMESTAMP'])] j'ai coupé en entity coupon et rammené ici pour leger notre site*/ 
    private ?\DateTimeImmutable $created_at = null;


    public function getCreatedAt(): ?\DateTimeImmutable
    {
        return $this->created_at;
    }

    public function setCreatedAt(\DateTimeImmutable $created_at): static
    {
        $this->created_at = $created_at;

        return $this;
    }

}