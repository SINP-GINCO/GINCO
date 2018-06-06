<?php
namespace Ign\Bundle\GincoBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class ProviderSearchType extends AbstractType {

	/**
	 * Build the provider form.
	 *
	 * @param FormBuilderInterface $builder        	
	 * @param array $options        	
	 */
	public function buildForm(FormBuilderInterface $builder, array $options) {
		$builder->add('label', TextType::class, array(
			'label' => 'Providers.add.label'
		))->add('submit', SubmitType::class, array(
			'label' => 'Validate'
		));
	}

	/**
	 *
	 * @param OptionsResolver $resolver        	
	 */
	public function configureOptions(OptionsResolver $resolver) {
		$resolver->setDefaults(array());
	}
}
