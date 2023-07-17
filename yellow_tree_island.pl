#!/usr/bin/perl

# WARMING HEARTS

# Define an array for each of the inner emotions
my @joy;
my @sorrow;
my @compassion;
my @forgiveness;

# Read the contents of a file containing the emotions
open(my $fp, "<", "emotions.txt") or die $!;
while (<$fp>) {
    chomp;
    my ($emotion, $value) = split;
    if ($emotion eq "joy") {
        push @joy, $value;
    } elsif ($emotion eq "sorrow") {
        push @sorrow, $value;
    } elsif ($emotion eq "compassion") {
        push @compassion, $value;
    } elsif ($emotion eq "forgiveness") {
        push @forgiveness, $value;
    }
}
close($fp);

# Calculate the total of each emotion
my $total_joy = 0;
foreach my $value (@joy) {
    $total_joy += $value;
}

my $total_sorrow = 0;
foreach my $value (@sorrow) {
    $total_sorrow += $value;
}

my $total_compassion = 0;
foreach my $value (@compassion) {
    $total_compassion += $value;
}

my $total_forgiveness = 0;
foreach my $value (@forgiveness) {
    $total_forgiveness += $value;
}

# Calculate the mean of each emotion
my $mean_joy = $total_joy / scalar(@joy);
my $mean_sorrow = $total_sorrow / scalar(@sorrow);
my $mean_compassion = $total_compassion / scalar(@compassion);
my $mean_forgiveness = $total_forgiveness / scalar(@forgiveness);

# Print out the results
print "Joy: $mean_joy\n";
print "Sorrow: $mean_sorrow\n";
print "Compassion: $mean_compassion\n";
print "Forgiveness: $mean_forgiveness\n";

# Calculate the total score
my $total_score = $mean_joy + $mean_sorrow + $mean_compassion + $mean_forgiveness;

# Print out a summary of the score
print "Total score: $total_score\n";

# Generate a response based on the total score
if ($total_score >= 15) {
    print "You have a warm heart!\n";
} elsif ($total_score >= 10) {
    print "You have a warm spot in your heart!\n";
} elsif ($total_score >= 5) {
    print "You have a hint of warmth in your heart!\n";
} else {
    print "Your heart could use a bit of warmth.\n";
}