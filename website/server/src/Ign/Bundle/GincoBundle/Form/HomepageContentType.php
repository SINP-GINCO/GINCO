<?php
namespace Ign\Bundle\GincoBundle\Form;

use Ign\Bundle\GincoBundle\Form\Components\ImageType;
use Ign\Bundle\GincoBundle\Form\Components\LinkFileType;
use Ign\Bundle\GincoBundle\Form\Components\LinkType;
use Ivory\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

/**
 * Class ConfigurationType
 * Configuration parameters form type
 * @package Ign\Bundle\GincoBundle\Form
 */
class HomepageContentType extends AbstractType
{
	public function buildForm(FormBuilderInterface $builder, array $options)
	{
		$builder
			// The homepage intro text field
			->add('homepageIntro', CKEditorType::class, array(
				'required' => false,
				'label' => 'Intro page d\'accueil',
				'attr' => ['data-help'  => 'Bla bla bla'],
				'constraints' => array(
				),
			))
			// The homepage Image
			->add('homepageImage', ImageType::class, array(
				'required' => false,
				'label' => 'Image d\'illustration',
			))
			// The block of public links and documents
			->add('homepagePublicLinksTitle', TextType::class, array(
				'required' => false,
				'label' => 'Titre du bloc de liens publics',
			))
			// The block of private links and documents
			->add('homepagePrivateLinksTitle', TextType::class, array(
				'required' => false,
				'label' => 'Titre du bloc de liens privés',
			))
			->add('submit', SubmitType::class, array(
				'label' => 'Configuration.edit.submit.button'
			))
			->add('homepageLinks', CollectionType::class, array(
				'entry_type' => LinkType::class,
				'entry_options' => array('label' => false, 'required' => false),
				'allow_add' => true,
			))
		;

		/*
		// block of public and private links
		for ($i=1; $i<=10; $i++) {
			$builder
				->add('homepageLink' . $i, LinkType::class, array(
					'required' => false,
					'label' => "Lien $i",
				))
				->add('homepageFile' . $i, LinkFileType::class, array(
					'required' => false,
					'label' => "Fichier $i",
				))
				->add('homepagePrivateLink' . $i, LinkType::class, array(
					'required' => false,
					'label' => "Lien $i",
				))
				->add('homepagePrivateFile' . $i, LinkFileType::class, array(
					'required' => false,
					'label' => "Fichier $i",
				));
		}
		*/
	}

	public function setDefaultOptions(OptionsResolverInterface $resolver)
	{
	}

	public function getName()
	{
		return 'homepage_content_form';
	}
}