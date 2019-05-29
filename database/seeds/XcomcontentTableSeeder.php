<?php
use Illuminate\Database\Seeder;
class XcomcontentTableSeeder extends Seeder
{
    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        
        \DB::table('xcomcontent')->delete();
        
        \DB::table('xcomcontent')->insert(array (
            0 => 
            array (
                'id' => 1,
                'category' => 'PhoneNumber',
                'content' => '+61430429687',
                'section'=> 'info',
                'part'=>'Header'
            ),
            1 => 
            array (
                'id' => 2,
                'category' => 'HeroTitle',
                'content' => 'Experienced IT Specialists',
                'section'=> 'info',
                'part'=>'HeroBanner'
            ),
            2 => 
            array (
                'id' => 4,
                'category' => 'HeroContents',
                'content' => 'With over 15 years of experience, we provide the resources & stability necessary for you to focus your efforts on where they belong.',
                'section'=> 'info',
                'part'=>'HeroBanner'
            ),
            3 => 
            array (
                'id' => 5,
                'category' => 'ServiceTitle',
                'content' => 'Our Services',
                'section'=> 'service',
                'part'=>'servicetitle'
            ),
            4 => 
            array (
                'id' => 6,
                'category' => '01Title',
                'content' => 'Email Hosting and Security',
                'section'=> 'service',
                'part'=>'01'
            ),
        
            5 => 
            array (
                'id' => 7,
                'category' => '01Description',
                'content' => 'Not really up to speed with your IT Infrastructure we can audit your infrastructure and propose technology upgrades that suite your needs and budget. This can be scoped and applied in transitional stages to limit downtime and maximize up-time.',
                'section'=> 'service',
                'part'=>'01'
            ),
            6 => 
            array (
                'id' => 8,
                'category' => '02Title',
                'content' => 'Support Desk',
                'section'=> 'service',
                'part'=>'02'
            ),
            7 => 
            array (
                'id' => 9,
                'category' => '02Description',
                'content' => 'Remote and onsite support from our Sydney based Engineers with guaranteed response and resolution times.',
                'section'=> 'service',
                'part'=>'02'
            ),
            8 => 
            array (
                'id' => 10,
                'category' => '03Title',
                'content' => 'File Sharing',
                'section'=> 'service',
                'part'=>'03'
            ),
            9 => 
            array (
                'id' => 11,
                'category' => '03Description',
                'content' => 'Your data is secure and available across any device. Share files within your organization or externally with a few clicks.',
                'section'=> 'service',
                'part'=>'03'
            ),
            10 => 
            array (
                'id' => 12,
                'category' => '04Title',
                'content' => 'Business Continuity and Disaster Recovery',
                'section'=> 'service',
                'part'=>'04'
            ),
            11 => 
            array (
                'id' => 13,
                'category' => '04Description',
                'content' => 'We provide the tools and assurance that your data is protected and recoverable. 24 x 7 monitoring and management of your networks and servers whether they’re in the cloud or in your office.',
                'section'=> 'service',
                'part'=>'04'
            ),
            12 => 
            array (
                'id' => 14,
                'category' => 'AboutDescription',
                'content' => 'XCOM understands small business because we too are a small business. XCOM Small Business IT Support solutions provide the right people, technology and best practice to deliver an experience which is tailored to small businesses and their budget. Xcom strive to provide simplified and robust IT solutions for all business models. If you are a new and growing company or a well-established business out team can maintain or integrate a system that is Taylor made to your needs.',
                'section'=> 'about',
                'part'=>'about'
            ),
            13 => 
            array (
                'id' => 15,
                'category' => 'Copyright',
                'content' => 'Copyright © 2019 Xcom IT Solution. All rights reserved.',
                'section' => 'info',
                'part'=>'Footer'
            ),
            14 => 
            array (
                'id' => 16,
                'category' => 'HeroBackgroundImage',
                'content' => 'https://xcom-layout.herokuapp.com/images/xcommain.png',
                'section' => 'info',
                'part'=>'HeroBanner'
            ),
            15 => 
            array (
                'id' => 17,
                'category' => 'AboutBackgroundImage',
                'content' => 'https://xcom-layout.herokuapp.com/images/xcomabout.png',
                'section' => 'about',
                'part'=>'about'
            ),
            16 => 
            array (
                'id' => 18,
                'category' => 'LogoImage',
                'content' => 'https://xcom-layout.herokuapp.com/images/xcomlogo.png',
                'section' => 'info',
                'part'=>'Header'
            ),
            17 => 
            array (
                'id' => 19,
                'category' => 'PhoneIconImage',
                'content' => 'https://xcom-layout.herokuapp.com/images/phoneicon.png',
                'section' => 'info',
                'part'=>'Header'
            ),
            18 => 
            array (
                'id' => 20,
                'category' => 'LogoImageUrl',
                'content' => 'https://xcom-layout.herokuapp.com',
                'section' => 'info',
                'part'=>'Header'
            ),
            19 => 
            array (
                'id' => 21,
                'category' => 'FooterLogoImage',
                'content' => 'https://xcom-layout.herokuapp.com/images/Footerlogo.png',
                'section' => 'info',
                'part'=>'Footer'
            ),
            20 => 
            array (
                'id' => 22,
                'category' => 'FooterLogoImageUrl',
                'content' => 'https://xcom-layout.herokuapp.com',
                'section' => 'info',
                'part'=>'Footer'
            ),
            21 => 
            array (
                'id' => 23,
                'category' => 'ToEmail',
                'content' => 'admin@admin.com',
                'section' => 'info',
                'part'=>'toemail'
            ),
            22 => 
            array (
                'id' => 24,
                'category' => 'HeroButton',
                'content' => 'Go Started Now',
                'section' => 'info',
                'part'=>'HeroBanner'
            ),
            23 => 
            array (
                'id' => 25,
                'category' => 'HeroButtonUrl',
                'content' => '#contactform',
                'section' => 'info',
                'part'=>'HeroBanner'
            ),
        ));
        
        
    }
}