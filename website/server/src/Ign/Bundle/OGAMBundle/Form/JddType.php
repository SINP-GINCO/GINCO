<?php
namespace Ign\Bundle\OGAMBundle\Form;

use Doctrine\ORM\EntityRepository;
use Ign\Bundle\OGAMBundle\Entity\RawData\Jdd;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class JddType extends AbstractType {

	/**
	 *
	 * @param FormBuilderInterface $builder        	
	 * @param array $options        	
	 */
	public function buildForm(FormBuilderInterface $builder, array $options) {
		$builder
			->add('model', EntityType::class, array(
				'label' => 'Modèle de données',
				'class' => 'OGAMBundle:Metadata\Model',
				'choice_label' => 'name',
				'em' => $options['entity_manager'],
				// Select Models which have an Import Dataset, ie a dataset with at least one FileFormat
				'query_builder' => function (EntityRepository $er) {
					return $er->createQueryBuilder('m')
						->leftJoin('m.datasets', 'd')
						->where('d.id IS NOT NULL')
						->leftJoin('d.files', 'f')
						->where('f.format IS NOT NULL')
						->orderBy('m.name', 'ASC');
				},
			))
			->add('submit', SubmitType::class, array(
				'label' => 'Créer le jeu de données'
			));
	}

	/**
	 *
	 * @param OptionsResolver $resolver        	
	 */
	public function configureOptions(OptionsResolver $resolver) {
		$resolver->setDefaults(array(
			'data_class' => Jdd::class,
		));
		$resolver->setRequired('entity_manager');
	}
}
