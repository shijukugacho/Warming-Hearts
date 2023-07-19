<?php
// Warming Hearts // 

// Function to display random inspiring quote
function randomQuote() {

// Inspirational Quotes
$quoteArray = array(
    '"Carry out a random act of kindness, with no expectation of reward, safe in the knowledge that one day someone might do the same for you" - Princess Diana', 
    '"To give and not expect return, that is what lies at the heart of love" - Unknown', 
    '"Kindness is a language which the deaf can hear and the blind can see" - Mark Twain', 
    '"Try to be a rainbow in someone else\'s cloud" - Maya Angelou', 
    '"The smallest act of kindness is worth more than the grandest intention" - Oscar Wilde', 
    '"What wisdom can you find that is greater than kindness?" - Jean-Jacques Rousseau', 
    '"No act of kindness, no matter how small, is ever wasted" - Aesop', 
    '"Kindness is the language which the deaf can hear and the blind can see" - Mark Twain', 
    '"Wherever there is a human being, there is an opportunity for a kindness" - Seneca', 
    '"Be kind, for everyone you meet is fighting a harder battle" - Plato', 
);

// Get random quote
$randomQuote = array_rand($quoteArray);

// Display random quote
echo $quoteArray[$randomQuote];

}

// Function to display random heartwarming image
function randomImage() {

// Heartwarming Images
$imageArray = array(
    'https://images.unsplash.com/photo-1520598857470-1d5060fcc6b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 
    'https://images.unsplash.com/photo-1529889529738-b934be0d624f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 
    'https://images.unsplash.com/photo-1525161255898-18f651f25f03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 
    'https://images.unsplash.com/photo-1545258680-b04d386cad48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 
    'https://images.unsplash.com/photo-1497436072909-958a5d2e73a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 
    'https://images.unsplash.com/photo-1513420151970-0ce16ff1c609?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 
    'https://images.unsplash.com/photo-1453406297762-2eda60e979db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 
    'https://images.unsplash.com/photo-1494193767684-c0eb4dbf3604?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 
    'https://images.unsplash.com/photo-1512202450630-dec3a52f6eb3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 
    'https://images.unsplash.com/photo-1511228775090-ca73e90c93e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
);

// Get random image
$randomImage = array_rand($imageArray);

// Display random image
echo "<img src='" . $imageArray[$randomImage] . "' alt='Heartwarming image'>";

}

// Display page
?>

<!DOCTYPE html> 
<html> 
    <head> 
        <title>Warming Hearts</title> 
        <style> 
            body { 
                font-family: Arial; 
            }
            h1 { 
                font-size: 28px; 
            }
            p { 
                font-size: 18px; 
            } 
        </style> 
    </head> 
    <body> 
        <h1>Warming Hearts</h1> 
        <p>
            <?php
            // Call random quote function 
            randomQuote();
            ?>
        </p>
        <div>
            <?php
            // Call random image function 
            randomImage();
            ?>
        </div> 
    </body> 
</html>