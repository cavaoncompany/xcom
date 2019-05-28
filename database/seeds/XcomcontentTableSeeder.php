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
            ),
            1 => 
            array (
                'id' => 2,
                'category' => 'MainTitle',
                'content' => 'Experienced IT Specialists',
                'section'=> 'info',
            ),
            2 => 
            array (
                'id' => 4,
                'category' => 'MainDescription',
                'content' => 'With over 15 years of experience, we provide the resources & stability necessary for you to focus your efforts on where they belong.',
                'section'=> 'info',
            ),
            3 => 
            array (
                'id' => 5,
                'category' => 'ServiceTitle',
                'content' => 'Our Services',
                'section'=> 'service',
            ),
            4 => 
            array (
                'id' => 6,
                'category' => 'FirstServiceTitle',
                'content' => 'Email Hosting and Security',
                'section'=> 'service',
            ),
            5 => 
            array (
                'id' => 7,
                'category' => 'FirstServiceDescription',
                'content' => 'Not really up to speed with your IT Infrastructure we can audit your infrastructure and propose technology upgrades that suite your needs and budget. This can be scoped and applied in transitional stages to limit downtime and maximize up-time.',
                'section'=> 'service',
            ),
            6 => 
            array (
                'id' => 8,
                'category' => 'SecondServiceTitle',
                'content' => 'Support Desk',
                'section'=> 'service',
            ),
            7 => 
            array (
                'id' => 9,
                'category' => 'SecondServiceDescription',
                'content' => 'Remote and onsite support from our Sydney based Engineers with guaranteed response and resolution times.',
                'section'=> 'service',
            ),
            8 => 
            array (
                'id' => 10,
                'category' => 'ThirdServiceTitle',
                'content' => 'File Sharing',
                'section'=> 'service',
            ),
            9 => 
            array (
                'id' => 11,
                'category' => 'ThirdServiceDescription',
                'content' => 'Your data is secure and available across any device. Share files within your organization or externally with a few clicks.',
                'section'=> 'service',
            ),
            10 => 
            array (
                'id' => 12,
                'category' => 'FourthServiceTitle',
                'content' => 'Business Continuity and Disaster Recovery',
                'section'=> 'service',
            ),
            11 => 
            array (
                'id' => 13,
                'category' => 'FourthServiceDescription',
                'content' => 'We provide the tools and assurance that your data is protected and recoverable. 24 x 7 monitoring and management of your networks and servers whether they’re in the cloud or in your office.',
                'section'=> 'service',
            ),
            12 => 
            array (
                'id' => 14,
                'category' => 'AboutDescription',
                'content' => 'XCOM understands small business because we too are a small business. XCOM Small Business IT Support solutions provide the right people, technology and best practice to deliver an experience which is tailored to small businesses and their budget. Xcom strive to provide simplified and robust IT solutions for all business models. If you are a new and growing company or a well-established business out team can maintain or integrate a system that is Taylor made to your needs.',
                'section'=> 'about',
            ),
            13 => 
            array (
                'id' => 15,
                'category' => 'FooterCopyright',
                'content' => 'Copyright © 2019 Xcom IT Solution. All rights reserved.',
                'section' => 'info',
            ),
            14 => 
            array (
                'id' => 16,
                'category' => 'MainImageUrl',
                'content' => 'https://xcom-layout.herokuapp.com/images/xcommain.png',
                'section' => 'info',
            ),
            15 => 
            array (
                'id' => 17,
                'category' => 'AboutBackgroundImageUrl',
                'content' => 'https://xcom-layout.herokuapp.com/images/xcomabout.png',
                'section' => 'about',
            ),
            16 => 
            array (
                'id' => 18,
                'category' => 'LOGOImageUrl',
                'content' => 'https://xcom-layout.herokuapp.com/images/xcomlogo.png',
                'section' => 'info',
            ),
            17 => 
            array (
                'id' => 19,
                'category' => 'PhoneIconImageUrl',
                'content' => 'https://xcom-layout.herokuapp.com/images/phoneicon.png',
                'section' => 'info',
            ),
        ));
        
        
    }
}