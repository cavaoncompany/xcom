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
                'category' => 'Header',
                'content' => json_encode(['phoneNumber'=>'+61430429687',
                                           'phoneIcon'=>'http://localhost/cms/public/storage/XCOMHomePage/phoneicon.png',
                                          'logoImg'=>'http://localhost/cms/public/storage/XCOMHomePage/xcomlogo.png',
                                          'logoUrl'=>'#']),                      
                'section' => 'info',
            ),
            
            1 => 
            array (
                'id' => 2,
                'category' => 'HeroBanner',
                'content' => json_encode(['HeroTitle'=>'Experienced IT Specialists',
                                          'HeroContents'=>'With over 15 years of experience, we provide the resources & stability necessary for you to focus your efforts on where they belong.',
                                          'HeroButton'=>'Go Started Now',
                                          'HeroButtonUrl'=>'#contact',
                                          'HeroImage'=>'http://localhost/cms/public/storage/XCOMHomePage/xcommain.png']),  
                'section' => 'info',
            ),
     
            2 => 
            array (
                'id' => 3,
                'category' => 'ServiceTitle',
                'content' => json_encode(['ServiceTitle'=>'Our Services']),
                'section' => 'service',
            ),
            3 => [
                 'id' => 4,
                 'category' => 'ServiceDetails',
                 'content' =>json_encode([['name'=>'01',
                              'title'=>'Email Hosting and Security',
                              'description'=>'Not really up to speed with your IT Infrastructure we can audit your infrastructure and propose technology upgrades that suite your needs and budget. This can be scoped and applied in transitional stages to limit downtime and maximize up-time.'
                            ],
                            ['name'=>'02',
                              'title'=>'Support Desk',
                              'description'=>'Remote and onsite support from our Sydney based Engineers with guaranteed response and resolution times.'
                            ],
                            ['name'=>'03',
                              'title'=>'File Sharing',
                              'description'=>'Your data is secure and available across any device. Share files within your organization or externally with a few clicks.'
                            ],
                            ['name'=>'04',
                              'title'=>'Business Continuity and Disaster Recovery',
                              'description'=>'We provide the tools and assurance that your data is protected and recoverable. 24 x 7 monitoring and management of your networks and servers whether they’re in the cloud or in your office.'
                            ]]),
                'section' => 'service',
            ],
            
            4 => 
            array (
                'id' => 5,
                'category' => 'about',
                'content' => json_encode(['description'=>'XCOM understands small business because we too are a small business. XCOM Small Business IT Support solutions provide the right people, technology and best practice to deliver an experience which is tailored to small businesses and their budget. Xcom strive to provide simplified and robust IT solutions for all business models. If you are a new and growing company or a well-established business out team can maintain or integrate a system that is Taylor made to your needs.',
                                          'imageUrl'=>'http://localhost/cms/public/storage/XCOMHomePage/xcomabout.png'
                                          ]),
                'section' => 'about',
            ),
        
            5 => 
            array (
                'id' => 6,
                'category' => 'Footer',
                'content' => json_encode(['FooterCopyright'=>'Copyright © 2019 Xcom IT Solution. All rights reserved.',
                'footerLogo'=>'http://localhost/cms/public/storage/XCOMHomePage/xcomlogo.png',
                'footerLogoUrl'=>'http://localhost'
                ]),
                'section' => 'info',
            ),
   
        ));
        
        
    }
}