//
//  TruthOrDareScreen.swift
//  GameNight
//
//  Created by Fanis Nikolaou on 26/2/25.
//

import SwiftUI

struct TruthOrDareScreen: View {
    let okayTruthQuestions = [
        "Truth: What's your most embarrassing moment?",
            "Truth: Have you ever had a crush on someone in this room?",
            "Truth: What is the most childish thing you still do?",
            "Truth: Have you ever kept a big secret from your best friend?",
            "Truth: What's the most awkward text you've ever sent?",
            "Truth: Have you ever cheated on a test?",
            "Truth: What's the weirdest thing you've ever eaten?",
            "Truth: What's the most trouble you've ever been in?",
            "Truth: If you could swap lives with someone for a day, who would it be?",
            "Truth: What's the worst gift you've ever received?",
            "Truth: Have you ever been caught lying?",
            "Truth: What’s the biggest secret you’ve ever kept?",
            "Truth: Have you ever stalked someone on social media?",
            "Truth: If you had to delete one app from your phone forever, which one would it be?",
            "Truth: What’s the most awkward thing you’ve said to a crush?",
            "Truth: Have you ever sent a text to the wrong person?",
            "Truth: What’s the most embarrassing nickname you’ve ever had?",
            "Truth: Have you ever pretended to like a gift you actually hated?",
            "Truth: If you could erase one thing from your past, what would it be?",
            "Truth: Have you ever laughed at an inappropriate time?",
            "Truth: What's the worst lie you've ever told?",
            "Truth: Have you ever snooped through someone's phone?",
            "Truth: If you could trade lives with a celebrity, who would it be?",
            "Truth: Have you ever been rejected?",
            "Truth: What’s the most childish thing you still do?",
            "Truth: If you had to be handcuffed to someone for 24 hours, who would you choose?",
            "Truth: Have you ever had a wardrobe malfunction?",
            "Truth: What’s the worst haircut you’ve ever had?",
            "Truth: What’s something silly you’re still afraid of?",
            "Truth: Have you ever broken something and blamed someone else?",
            "Truth: If you had to marry one person in this room, who would it be?",
            "Truth: Have you ever skipped school or work without a real reason?",
            "Truth: Have you ever been caught talking to yourself?",
            "Truth: If you could live in any movie, which one would it be?",
            "Truth: Have you ever Googled yourself?",
            "Truth: What’s the weirdest thing you've ever done in front of a mirror?",
            "Truth: What’s one thing you’ve done that you would never admit to your parents?",
            "Truth: Have you ever eaten something off the floor?",
            "Truth: Have you ever made a prank call?",
            "Truth: What’s the longest you’ve gone without showering?",
            "Truth: Have you ever faked being sick to skip something?",
            "Truth: What’s the worst excuse you’ve ever used?",
            "Truth: If you could switch lives with one person here, who would it be?",
            "Truth: What’s your most embarrassing social media post?",
            "Truth: What’s the weirdest dream you’ve ever had?",
            "Truth: Have you ever laughed so hard you peed yourself?",
            "Truth: Have you ever told a secret you promised to keep?",
            "Truth: If you could only eat one food for the rest of your life, what would it be?",
            "Truth: What’s your guilty pleasure?",
            "Truth: Have you ever had a paranormal experience?",
            "Truth: If you could have any superpower, what would it be?",
            "Truth: Have you ever laughed so hard you snorted?",
            "Truth: What's the weirdest thing you've ever searched on Google?",
            "Truth: Have you ever sent a message and immediately regretted it?",
            "Truth: What’s the most embarrassing thing your parents have caught you doing?",
            "Truth: If you could relive any day of your life, which one would it be?",
            "Truth: What’s the strangest thing you've ever bought online?",
            "Truth: What’s one thing you’ve done that you still can’t believe you did?",
            "Truth: Have you ever had a dream that felt too real?",
            "Truth: Have you ever copied someone else’s homework?",
            "Truth: What’s the worst fashion trend you’ve ever followed?",
            "Truth: Have you ever accidentally sent a text to the wrong person?",
            "Truth: What’s the most ridiculous rumor you’ve heard about yourself?",
            "Truth: If you had to eat one weird food combination forever, what would it be?",
            "Truth: Have you ever fake-cried to get out of trouble?",
            "Truth: What’s the worst thing you’ve done while sleep-deprived?",
            "Truth: If you could change your first name, what would you pick?",
            "Truth: Have you ever tried to impress someone and totally failed?",
            "Truth: What’s the worst advice you’ve ever given someone?",
            "Truth: Have you ever had an imaginary friend?",
            "Truth: What’s the most awkward encounter you’ve had with a stranger?",
            "Truth: What’s the longest amount of time you’ve stayed awake?",
            "Truth: What’s something you love but feel embarrassed to admit?",
            "Truth: Have you ever talked in your sleep?",
            "Truth: If you had to describe yourself using only three words, what would they be?",
            "Truth: Have you ever overheard someone talking about you?",
            "Truth: Have you ever pretended not to see someone to avoid talking to them?",
            "Truth: If you had to swap lives with one of your friends, who would it be?",
            "Truth: What’s the weirdest thing you’ve ever done in public?",
            "Truth: Have you ever said “you too” when it didn’t make sense?",
            "Truth: What’s the cringiest thing you’ve ever posted online?",
            "Truth: What’s something you’ve never told your best friend?",
            "Truth: If you could erase one thing from your memory, what would it be?",
            "Truth: Have you ever re-worn dirty clothes because you were too lazy to wash them?",
            "Truth: What’s the worst joke you’ve ever told?",
            "Truth: Have you ever been so scared that you screamed out loud?",
            "Truth: If you could swap voices with anyone for a day, who would it be?",
            "Truth: Have you ever been caught dancing when you thought nobody was watching?",
            "Truth: What’s the silliest reason you’ve ever gotten mad at someone?",
            "Truth: If you had to delete all but one app from your phone, which one would stay?",
    ]
    
    let okayDareQuestions = [
        "Dare: Do 10 push-ups.",
            "Dare: Let someone send a text from your phone.",
            "Dare: Dance with no music for 1 minute.",
            "Dare: Try to lick your elbow.",
            "Dare: Speak in an accent for the next 5 minutes.",
            "Dare: Let another player style your hair.",
            "Dare: Eat a spoon full of mustard.",
            "Dare: Sing a song loudly in a funny voice.",
            "Dare: Do your best impression of a celebrity.",
            "Dare: Walk like a duck until your next turn.",
            "Dare: Let the person to your left draw something on your arm with a pen.",
            "Dare: Talk in a robot voice until your next turn.",
            "Dare: Call a random contact and sing 'Happy Birthday' to them.",
            "Dare: Let someone post a silly selfie on your social media.",
            "Dare: Try to juggle three random objects.",
            "Dare: Do an impression of another player.",
            "Dare: Do 20 jumping jacks while saying the alphabet.",
            "Dare: Let someone write a word of their choice on your forehead.",
            "Dare: Say the alphabet backward as fast as you can.",
            "Dare: Hold your breath for 15 seconds.",
            "Dare: Eat a spoonful of hot sauce.",
            "Dare: Let someone tickle you for 30 seconds.",
            "Dare: Do your best animal impression.",
            "Dare: Try to keep a straight face while someone tells you jokes for one minute.",
            "Dare: Wear socks on your hands for the next three rounds.",
            "Dare: Say three nice things about the person sitting across from you.",
            "Dare: Put an ice cube in your mouth and keep it there until it melts.",
            "Dare: Give your best evil laugh.",
            "Dare: Talk like a baby for the next two rounds.",
            "Dare: Eat a raw onion slice.",
            "Dare: Let someone redo your hairstyle.",
            "Dare: Act like a monkey until your next turn.",
            "Dare: Let someone pick a random YouTube video for you to dance to.",
            "Dare: Walk backward everywhere you go for the next three rounds.",
            "Dare: Let another player send an emoji-only text to someone in your contacts.",
            "Dare: Try to balance a spoon on your nose for 30 seconds.",
            "Dare: Speak only in rhymes until your next turn.",
            "Dare: Try to do a handstand or a cartwheel.",
            "Dare: Dance with a broom for one minute.",
            "Dare: Hold a funny pose for 30 seconds.",
            "Dare: Make a funny face and keep it for the next two rounds.",
            "Dare: Walk around the room like a crab.",
            "Dare: Do your best superhero pose.",
            "Dare: Call a random number and try to have a conversation.",
            "Dare: Hug the person to your right for 10 seconds.",
            "Dare: Try to lick your nose.",
            "Dare: Act like a chicken until someone guesses what you're doing.",
            "Dare: Talk in slow motion for the next three turns.",
            "Dare: Try to spin around 10 times and walk in a straight line.",
            "Dare: Do a funny dance every time someone says your name for the next five minutes.",
            "Dare: Wear socks on your hands for the next three rounds.",
            "Dare: Let someone put makeup on you.",
            "Dare: Close your eyes and let someone give you a mystery snack.",
            "Dare: Talk like a pirate for the next three turns.",
            "Dare: Take a silly picture and set it as your profile photo for the rest of the night.",
            "Dare: Pretend to be a waiter and take everyone’s “order.”",
            "Dare: Walk around the room like a robot.",
            "Dare: Do your best impression of a crying baby.",
            "Dare: Let the group choose a random emoji and text it to a random contact.",
            "Dare: Stand on one leg for the next two rounds.",
            "Dare: Wear your clothes backward for the rest of the game.",
            "Dare: Let someone tickle you for 20 seconds.",
            "Dare: Hold a cup of water on your head for one minute.",
            "Dare: Say a tongue twister three times fast without messing up.",
            "Dare: Act like a cat until your next turn.",
            "Dare: Try to balance a book on your head while walking around.",
            "Dare: Try to do a handstand against the wall.",
            "Dare: Sing everything you say for the next two rounds.",
            "Dare: Let someone send a random GIF from",
            "Dare: Let someone draw on your face with a washable marker.",
            "Dare: Do your best impression of a famous celebrity until your next turn.",
            "Dare: Try to lick your elbow.",
            "Dare: Take a sip of water and try to gargle a song.",
            "Dare: Spin around 10 times and then try to walk in a straight line.",
            "Dare: Let someone redo your hairstyle however they want.",
            "Dare: Text your last-used emoji to the third person in your contact list.",
            "Dare: Speak in an accent for the next three rounds.",
            "Dare: Act like a chicken for one full minute.",
            "Dare: Wear a blanket like a superhero cape for the rest of the game.",
            "Dare: Swap one shoe with someone else for the next two rounds.",
            "Dare: Go to the fridge and take a bite of the first thing you see.",
            "Dare: Make up a short song about the person sitting next to you.",
            "Dare: Let someone mix three random drinks together and take a sip.",
            "Dare: Call a random contact and sing “Happy Birthday” to them.",
            "Dare: Try to make the group laugh while keeping a straight face.",
            "Dare: Walk across the room like a model on a runway.",
            "Dare: Let someone take a funny picture of you and post it to your story.",
            "Dare: Try to do five cartwheels in a row (or at least try).",
            "Dare: Balance a spoon on your nose for 10 seconds.",
    ]
    
    let extremeTruthQuestions = [
        "Truth: What's the craziest thing you've ever done?",
            "Truth: Have you ever fantasized about someone in this room? Who?",
            "Truth: What's the wildest place you've ever had sex or wanted to?",
            "Truth: Have you ever cheated on someone? If yes, why and how did you cover it up?",
            "Truth: What’s a secret you’ve kept from your current or last partner?",
            "Truth: If you had to hook up with one person in this room right now, who would it be?",
            "Truth: Have you ever had a one-night stand? Spill the details.",
            "Truth: What’s the most embarrassing thing that’s ever happened to you during an intimate moment?",
            "Truth: If you had to kiss someone of the same gender here, who would you pick?",
            "Truth: Have you ever been caught in the act? Who caught you and what happened?",
            "Truth: Who in this room do you think is secretly into you?",
            "Truth: Have you ever had a secret friends-with-benefits situation? Who was it?",
            "Truth: If you had to swap partners with someone in this room for a night, who would you choose?",
            "Truth: Have you ever had a crush on a best friend’s partner? Did you act on it?",
            "Truth: What’s the dirtiest dream you’ve ever had about someone in this room?",
            "Truth: Have you ever faked an orgasm? If yes, why and when?",
            "Truth: Have you ever had a hookup so bad you ghosted the person afterward? What happened?",
            "Truth: If you had to let someone in this room watch your last intimate moment on video, who would you pick?",
            "Truth: What’s the most scandalous text you’ve ever sent someone?",
            "Truth: If you could sleep with any celebrity for one night, who would it be?",
            "Truth: Have you ever had a sneaky link? If yes, who was it?",
            "Truth: Who in this room do you think has the best skills in bed?",
            "Truth: Have you ever flirted with someone to make another person jealous?",
            "Truth: What’s something kinky you’ve always wanted to try but haven’t yet?",
            "Truth: Have you ever made out with someone and regretted it immediately? Who?",
            "Truth: Who in this room do you think is secretly into you but won’t admit it?",
            "Truth: Have you ever caught someone else in the act? What did you do?",
            "Truth: What’s the longest you’ve gone without any “action,” and why?",
            "Truth: Have you ever led someone on just for attention?",
            "Truth: What’s the most scandalous thing you’ve done while drunk?",
            "Truth: Have you ever flirted with someone’s partner behind their back?",
            "Truth: What’s the most embarrassing thing that’s happened to you while undressed?",
            "Truth: Have you ever had an unexpected guest walk in during an intimate moment? Who?",
            "Truth: If you had to sleep with one person in this room or never again in your life, who would you pick?",
            "Truth: Have you ever gotten caught sending spicy texts or pictures? By who?",
            "Truth: Have you ever wanted to break up a couple because you liked one of them?",
            "Truth: What’s a secret you’re keeping from someone in this room?",
            "Truth: Have you ever hooked up with someone and immediately regretted it? Who?",
            "Truth: Have you ever been caught checking someone out in public? What happened?",
            "Truth: Have you ever pretended to like someone just to get something from them?",
            "Truth: Have you ever talked badly about someone in this room behind their back?",
            "Truth: Have you ever kissed someone just because you were bored?",
            "Truth: Have you ever gotten involved in a love triangle?",
            "Truth: What’s the most embarrassing thing someone has seen on your phone?",
            "Truth: Have you ever given someone a fake number because you didn’t want to reject them?",
            "Truth: If you had to reveal one person you’ve fantasized about, who would it be?",
            "Truth: Have you ever had a situation where two people you were seeing found out about each other?",
            "Truth: What’s the most toxic thing you’ve done in a relationship?",
            "Truth: Have you ever sent a message about someone and accidentally sent it to that person?",
            "Truth: What’s a fantasy you’ve never told anyone about?",
            "Truth: Have you ever had a secret fling with someone who was already taken?",
            "Truth: Who in this room would you most want to see completely undressed?",
            "Truth: Have you ever sent a spicy photo to the wrong person? Who?",
            "Truth: What’s the wildest place you’ve ever hooked up?",
            "Truth: Have you ever had a crush on someone in this room? If yes, who?",
            "Truth: If you could have a one-night stand with anyone here, who would it be?",
            "Truth: What’s the most shocking thing you’ve ever been caught doing?",
            "Truth: Have you ever been someone’s side piece?",
            "Truth: What’s the most forbidden fantasy you’ve had about someone you shouldn’t?",
            "Truth: Have you ever been jealous of a friend because of who they were dating?",
            "Truth: Have you ever had an attraction to a friend’s sibling or parent?",
            "Truth: Have you ever hooked up with an ex of a friend?",
            "Truth: Who in this room do you think would be the best in bed?",
            "Truth: Have you ever been in love with two people at the same time?",
            "Truth: What’s the most toxic thing you’ve done in a situationship?",
            "Truth: Have you ever told someone you loved them just to get what you wanted?",
            "Truth: Have you ever fantasized about cheating on a partner?",
            "Truth: What’s the biggest age gap you’ve had in a romantic relationship?",
            "Truth: Have you ever lied about your body count?",
            "Truth: Have you ever regretted hooking up with someone? Who?",
            "Truth: Have you ever tried to make an ex jealous? How?",
            "Truth: What’s the most dramatic reason you’ve broken up with someone?",
            "Truth: If you had to spend the night with someone in this room, who would you pick?",
            "Truth: What’s the biggest lie you’ve ever told in a relationship?",
            "Truth: What’s the dirtiest text message you’ve ever sent?",
            "Truth: Have you ever done something wild on vacation that you’ve never told anyone?",
            "Truth: Who in this room do you think has the highest body count?",
            "Truth: Have you ever been caught in the middle of an intimate moment?",
            "Truth: Have you ever hooked up with someone and never told a soul?",
            "Truth: Have you ever sent a text while drunk and regretted it the next day?",
            "Truth: What’s the most awkward thing that’s ever happened to you in bed?",
            "Truth: Have you ever lied about your relationship status to hook up with someone?",
            "Truth: If you could steal someone’s partner for one night, who would it be?",
            "Truth: What’s the most scandalous thing you’ve done that nobody knows about?",
            "Truth: Have you ever been ghosted? By who and why?",
            "Truth: Have you ever used someone just for fun?",
            "Truth: Have you ever started drama just because you were bored?",
            "Truth: Who in this room do you think would be the worst in bed?",
            "Truth: Have you ever been part of a love triangle? Did you win?",
            "Truth: Have you ever caught feelings for a hookup?",
            "Truth: Have you ever talked badly about a friend behind their back?",
            "Truth: Have you ever had a forbidden office or school romance?",
            "Truth: What’s the longest time you’ve gone without any action?",
            "Truth: Have you ever told someone you missed them when you really didn’t?",
            "Truth: Have you ever had a “revenge” hookup?",
            "Truth: What’s the most embarrassing DM you’ve ever sent?",
            "Truth: If you had to swap love lives with someone in this room, who would it be?",
            "Truth: Have you ever left someone on read on purpose to mess with them?",
            "Truth: Who in this room do you think is the biggest flirt?",
            "Truth: Have you ever ruined a friendship over a crush?",
            "Truth: Have you ever hooked up with someone just because you were bored?",
            "Truth: What’s the most forbidden place you’ve ever done something intimate?",
            "Truth: Have you ever been in love with two people at the same time?",
            "Truth: What’s a secret you’ve kept from your partner that would shock them?",
            "Truth: Have you ever had a romantic dream about someone in this room?",
            "Truth: Have you ever lied about your relationship status to hook up?",
            "Truth: If your partner asked you to let them hook up with someone else, would you agree?",
            "Truth: Have you ever hooked up with someone you weren’t attracted to?",
            "Truth: What’s the most embarrassing thing that has happened to you while getting intimate?",
            "Truth: If you had to delete one ex from your memory, who would it be?",
            "Truth: Have you ever had feelings for someone who was already in a relationship?",
            "Truth: Have you ever caught someone cheating and kept it a secret?",
            "Truth: What’s the worst thing someone has ever called you during an argument?",
            "Truth: Have you ever gone through someone’s phone without their permission?",
            "Truth: If your partner cheated, would you rather know or stay blissfully unaware?",
            "Truth: Have you ever been the person someone cheated with?",
            "Truth: Have you ever been caught in the act by someone unexpected?",
            "Truth: Who in this room do you think would be the most fun in bed?",
            "Truth: Have you ever sent a scandalous photo and regretted it later?",
            "Truth: What’s the most desperate thing you’ve done for attention?",
            "Truth: Have you ever ruined a friendship over a hookup?",
            "Truth: What’s the worst excuse you’ve given to get out of a date?",
            "Truth: Have you ever lied about your feelings to avoid hurting someone?",
            "Truth: Who in this room do you think is the best at flirting?",
            "Truth: Have you ever had an “almost” relationship that still haunts you?",
            "Truth: If you could be a fly on the wall in someone’s bedroom, who would it be?",
            "Truth: What’s the biggest lie you’ve ever told to get away with something?",
            "Truth: Have you ever wanted to hook up with a teacher or boss?",
            "Truth: Have you ever been in love but never told the person?",
            "Truth: What’s one thing you’ve done in the past that you would never do again?",
            "Truth: Have you ever lied about liking something in bed just to please someone?",
            "Truth: If you had to be in a relationship with someone in this room, who would it be?",
            "Truth: Have you ever had a “friend with benefits” situation go wrong?",
            "Truth: Have you ever been the reason for someone else’s breakup?",
            "Truth: What’s the meanest thing you’ve done after a breakup?",
            "Truth: If you had to send a risky text to your ex right now, what would it say?",
            "Truth: Have you ever flirted with someone’s significant other just to test them?",
            "Truth: What’s the most insane thing you’ve done to get someone’s attention?",
            "Truth: Have you ever had a relationship just for revenge or status?",
            "Truth: What’s the most manipulative thing you’ve ever done in a relationship?",
            "Truth: Have you ever led someone on just because you enjoyed the attention?",
            "Truth: If you could get back with any of your exes, who would it be?",
            "Truth: Have you ever been attracted to a close friend’s sibling?",
            "Truth: What’s the most expensive thing you’ve ever done for love?",
            "Truth: Have you ever had a crush on someone much older than you?",
            "Truth: Have you ever felt chemistry with someone but never acted on it?",
            "Truth: Have you ever broken up with someone just to see how they’d react?",
            "Truth: Have you ever ghosted someone and then regretted it?",
            "Truth: If someone paid you $10,000 to spill all your secrets, would you do it?",
            "Truth: What’s one thing you wish you could say to an ex but never did?",
            "Truth: Have you ever faked being in love to get something?",
            "Truth: Have you ever had a one-night stand that you regret?",
            "Truth: What’s the dirtiest thought you’ve had about someone in this room?",
            "Truth: Have you ever gotten with two people in the same friend group?",
            "Truth: Have you ever lied about how many people you’ve been with?",
            "Truth: If you had to pick someone in this room to make out with, who would it be?",
            "Truth: What’s the most scandalous text you’ve ever sent?",
            "Truth: Have you ever had feelings for your best friend’s partner?",
            "Truth: Have you ever cheated or been tempted to cheat?",
            "Truth: Have you ever used someone just for a hookup?",
            "Truth: What’s your biggest bedroom fantasy that you’ve never told anyone?",
            "Truth: Have you ever been caught watching something you shouldn’t have?",
            "Truth: What’s the naughtiest thing you’ve ever done while at work or school?",
            "Truth: What’s the pettiest reason you’ve ever ghosted someone?",
            "Truth: Have you ever broken someone’s heart and not cared?",
            "Truth: Have you ever gotten revenge on an ex?",
            "Truth: Have you ever wanted to hook up with one of your friend’s exes?",
            "Truth: Who’s the most unexpected person that’s ever hit on you?",
            "Truth: If you could swap lives with anyone in this room for a day, who would it be and why?",
            "Truth: Have you ever had an “almost” situation with a friend but never acted on it?",
            "Truth: Have you ever used someone to make another person jealous?",
            "Truth: What’s the most manipulative thing you’ve ever done in a relationship?",
            "Truth: Have you ever gotten into a relationship just for attention or status?",
            "Truth: Have you ever had a crush on someone you absolutely shouldn’t have?",
            "Truth: What’s the wildest thing you’ve ever done at a party?",
            "Truth: Have you ever had a dream about someone in this room? Spill details.",
            "Truth: Have you ever flirted with someone’s sibling or parent?",
            "Truth: What’s the most embarrassing thing that has happened to you in bed?",
            "Truth: Have you ever had an ex try to get back with you after a long time?",
            "Truth: If you could erase one person from your dating history, who would it be?",
            "Truth: Have you ever sent a text meant for someone else to the wrong person?",
            "Truth: Have you ever had a crush on a friend’s parent?",
            "Truth: What’s the biggest age gap you’ve had with someone romantically?",
            "Truth: Have you ever hooked up with someone and regretted it immediately?",
            "Truth: Have you ever been involved in a messy love triangle?",
            "Truth: Have you ever had a crush on a teacher or professor?",
            "Truth: What’s the worst lie you’ve ever told in a relationship?",
            "Truth: Have you ever flirted with someone just to get something from them?",
            "Truth: What’s the wildest thing you’ve ever done just because of a dare?",
            "Truth: Have you ever been caught making out in a public place?",
            "Truth: Have you ever thought about cheating but didn’t act on it?",
            "Truth: If you had to date one of your exes again, who would it be?",
            "Truth: Have you ever led two people on at the same time?",
            "Truth: What’s the most embarrassing thing someone has said to you in bed?",
            "Truth: Have you ever been turned down in the most humiliating way?",
            "Truth: Have you ever made a move on someone who was already taken?",
            "Truth: What’s the most intense argument you’ve ever had with a partner?",
            "Truth: Have you ever had to end a friendship because of a love interest?",
            "Truth: Have you ever done something scandalous at a wedding or party?",
            "Truth: Have you ever made a move on someone just because you were dared to?",
    ]
    
    let extremeDareQuestions = [
        "Dare: Sing a song out loud.",
            "Dare: Whisper something dirty into the ear of the person to your right.",
            "Dare: Send an “I miss you 😘” text to an ex or crush. No explanations.",
            "Dare: Let someone in the group go through your last three DMs.",
            "Dare: Call your crush and confess your feelings right now.",
            "Dare: Kiss the person across from you or take a shot.",
            "Dare: Give someone in the group a seductive lap dance for 30 seconds.",
            "Dare: Swap shirts with the person next to you for the next three rounds.",
            "Dare: Read out loud the last flirty text you sent or received.",
            "Dare: Blindfold yourself and let someone in the group kiss you anywhere they choose.",
            "Dare: Show the group your last five Google searches—no deleting allowed!",
            "Dare: Text your ex, “I still think about you…” and don’t explain.",
            "Dare: Send the third picture in your camera roll to the group—no matter what it is.",
            "Dare: Let someone in the group send any message they want from your phone.",
            "Dare: French kiss the person to your left or take a shot.",
            "Dare: Take off one piece of clothing every time you refuse a dare.",
            "Dare: Read your last five text messages out loud.",
            "Dare: Give a sexy lap dance to the person of your choice for 30 seconds.",
            "Dare: Go through your search history and read the last three searches.",
            "Dare: Let the group decide someone for you to send a risky text to.",
            "Dare: Kiss the person in the group who looks the best tonight.",
            "Dare: Let someone take control of your phone for the next five minutes.",
            "Dare: Swap an article of clothing with someone in the room.",
            "Dare: Show the group the last photo you took.",
            "Dare: Whisper a dirty secret to the person on your right.",
            "Dare: Let someone draw something on your body with a marker.",
            "Dare: Let someone go through your Tinder or dating app messages.",
            "Dare: Dance sensually with the first person you make eye contact with.",
            "Dare: Let the group pick a person for you to give a lingering hug to.",
            "Dare: Kiss the last person you texted on the cheek.",
            "Dare: Call your crush and say, “I have a confession…” then hang up.",
            "Dare: Send a spicy text to a random contact without context.",
            "Dare: Take a body shot off the person of your choice.",
            "Dare: Let someone choose a number in your contacts, and you have to call them and moan.",
            "Dare: Put on a blindfold and let someone give you a mystery kiss.",
            "Dare: Go live on social media and say, “I have a big announcement.” Then end it.",
            "Dare: Let someone send a flirty message to your last matched person on a dating app.",
            "Dare: Reenact your last kiss with someone in the group.",
            "Dare: Blindfold yourself and let someone place a mystery object in your mouth.",
            "Dare: Sit on the lap of the person across from you for the next round.",
            "Dare: Show the group your last three Snapchats or Instagram DMs.",
            "Dare: Smell someone’s neck and describe what they smell like in a seductive voice.",
            "Dare: Reveal a personal confession to the group.",
            "Dare: Let the group vote on someone for you to dance with for one minute.",
            "Dare: Post “I’m in love)” on your social media story without explaining.",
            "Dare: Call someone and tell them you have feelings for them—whether it’s true or not.",
            "Dare: Let the person to your right style your hair however they want.",
            "Dare: Let someone look through your DMs and read one out loud.",
            "Dare: Close your eyes and let someone place a kiss anywhere they want.",
            "Dare: Take a selfie with the person you think is the most attractive in the room.",
            "Dare: Show the group the last five people you searched on social media.",
            "Dare: Call your crush and confess your feelings right now.",
            "Dare: Give someone in this room a 30-second seductive whisper in their ear.",
            "Dare: Let someone go through your messages and read one aloud.",
            "Dare: Send an anonymous flirty message to someone in this room.",
            "Dare: Let the group pick someone for you to send a risky text to.",
            "Dare: Take off one piece of clothing or take a shot.",
            "Dare: Whisper a fantasy into the ear of the person to your right.",
            "Dare: Let the person to your left write a flirty text and send it to someone.",
            "Dare: Let someone post something risky on your social media.",
            "Dare: Kiss the person in the group you think is the best kisser.",
            "Dare: Let someone lick whipped cream off your body.",
            "Dare: Reveal a secret that would shock the group.",
            "Dare: Describe your last hookup in detail.",
            "Dare: Blindfold yourself and let someone kiss you anywhere they want.",
            "Dare: Send a DM to your last match on a dating app.",
            "Dare: Let someone pick a song for you to dance seductively to.",
            "Dare: Show the group the most embarrassing photo in your phone.",
            "Dare: Take a sip of your drink for every ex you’ve had.",
            "Dare: Call someone and ask them what they think of you romantically.",
            "Dare: Let the person of your choice give you a love bite.",
            "Dare: Let someone blindfold you and feed you a mystery food.",
            "Dare: Swap phones with someone and let them do whatever they want for one minute.",
            "Dare: Kiss the person you find most attractive in the room.",
            "Dare: Post 'I have a confession...' on your Instagram story.",
            "Dare: Let someone take a peek at your search history.",
            "Dare: Let the group decide someone for you to send a spicy voice note to.",
            "Dare: Take a selfie with the person you’d most want to wake up next to.",
            "Dare: Let someone pick a DM for you to respond to flirtatiously.",
            "Dare: Put your hand on someone’s thigh for the next three rounds.",
            "Dare: Reenact your last kiss with someone in the room.",
            "Dare: Let the group pick a romantic dare for you.",
            "Dare: Let someone change your dating app bio.",
            "Dare: Call someone and tell them you’re thinking about them in a special way.",
            "Dare: Let the person of your choice give you a back massage.",
            "Dare: Tell the group your biggest romantic regret.",
            "Dare: Let someone go through your last three text conversations.",
            "Dare: Call a random contact and ask them on a date.",
            "Dare: Lick something off someone’s neck.",
            "Dare: Let someone pick an item of clothing for you to remove.",
            "Dare: Reveal the name of your last fling.",
            "Dare: Act out your favorite fantasy with someone in the group.",
            "Dare: Let someone tickle you for 30 seconds.",
            "Dare: Send “I miss you” to the last person you hooked up with.",
            "Dare: Let someone whisper something naughty in your ear.",
            "Dare: Let the group pick a number, and call that contact to flirt with them.",
            "Dare: Show the group your last sent text.",
            "Dare: Let someone play with your hair for a minute.",
            "Dare: Let someone write something on your body.",
            "Dare: Tell the group who in the room you’d want to spend a night with.",
            "Dare: Let the group pick someone for you to send a flirty text to.",
            "Dare: Call your crush and confess something spicy.",
            "Dare: Post an Instagram story saying, “I have a huge crush on someone right now.”",
            "Dare: Let someone in the group send an embarrassing DM from your phone.",
            "Dare: Kiss the back of the person’s neck to your right.",
            "Dare: Whisper something naughty to the person of your choice.",
            "Dare: Send your last saved meme to your ex.",
            "Dare: Take off one piece of clothing for every dare you refuse.",
            "Dare: Let someone blindfold you and guide your hand somewhere unexpected.",
            "Dare: Call your ex and ask for advice about your love life.",
            "Dare: Swap shirts with someone in the group for the next 5 minutes.",
            "Dare: Lick your own lips slowly while making eye contact with someone.",
            "Dare: Let the group pick someone to give you a slow back massage.",
            "Dare: Take a suggestive selfie and let the group decide who to send it to.",
            "Dare: Post “I’m single now” on social media for five minutes.",
            "Dare: Let the group scroll through your search history.",
            "Dare: Change your phone wallpaper to the last person you texted.",
            "Dare: Pretend to be a couple with someone for the next 10 minutes.",
            "Dare: Let the group read a random text message from your phone.",
            "Dare: Describe in detail your last spicy dream.",
            "Dare: Show the last five emojis you used.",
            "Dare: Stare into someone’s eyes for 30 seconds without laughing.",
            "Dare: Let someone tickle you for 10 seconds without fighting back.",
            "Dare: Act out your best “seductive” walk across the room.",
            "Dare: Let the group pick someone to send a risky text to.",
            "Dare: Flirt with the person to your left for 30 seconds.",
            "Dare: Let someone look through your private photos for 10 seconds.",
            "Dare: Let the group pick a random number, and you must text that contact.",
            "Dare: Pretend to be on a fake romantic phone call for one minute.",
            "Dare: Try to make someone blush in under 10 seconds.",
            "Dare: Record yourself saying something extremely flirty and post it.",
            "Dare: Swap one social media profile with someone for 10 minutes.",
            "Dare: DM your crush and ask them to go on a date.",
            "Dare: Fake propose to someone in the group.",
            "Dare: Let someone send a heart emoji to a random contact on your phone.",
            "Dare: Try to turn someone on with just one whisper.",
            "Dare: Send a random flirty text to the first person in your DMs.",
            "Dare: Reveal the most unexpected person you've ever had a crush on.",
            "Dare: Let the group dare you to do one thing in public.",
            "Dare: Whisper something seductive in the ear of the person next to you.",
            "Dare: Send your most recent selfie to your crush with no context.",
            "Dare: Let someone in the group pick a risky text for you to send to an ex.",
            "Dare: Post a suggestive poll on your Instagram story.",
            "Dare: Kiss someone’s hand slowly while making eye contact.",
            "Dare: Let the group choose a number, and you must call that contact and say, “I miss you.”",
            "Dare: Remove one piece of clothing every time you refuse a dare.",
            "Dare: Let the group decide who you should text “I have a confession...”",
            "Dare: Do your best flirty dance for 30 seconds.",
            "Dare: Lick something off someone’s finger.",
            "Dare: Let someone scroll through your last 10 messages.",
            "Dare: Put an ice cube in your mouth and pass it to the next person.",
            "Dare: Flirt with the person across from you for one minute straight.",
            "Dare: Call your ex and ask them for a date as if nothing ever happened.",
            "Dare: Post “I’m back on the market” on your social media for 10 minutes.",
            "Dare: Describe in detail your last intimate experience.",
            "Dare: Let someone blindfold you and feed you something.",
            "Dare: Stare into someone’s eyes and bite your lip seductively.",
            "Dare: Call someone and say, “I can’t stop thinking about you.”",
            "Dare: Let the group pick a song, and you must send it to your last Tinder match.",
            "Dare: Lick someone’s neck.",
            "Dare: Flirt with someone using only emojis for five minutes.",
            "Dare: Scroll through your DMs and let someone choose one to read out loud.",
            "Dare: Give someone a lap dance (clothes stay on 😉).",
            "Dare: Read out your last steamy text message.",
            "Dare: Let someone go through your recent call history.",
            "Dare: Send a message to your crush saying, “We need to talk.”",
            "Dare: Let someone make a fake flirty tweet from your phone.",
            "Dare: Do a fake proposal to someone in the group.",
            "Dare: Whisper something dirty to the person on your left.",
            "Dare: Act out your best pickup line on someone in the group.",
            "Dare: Let someone give you a fake hickey using makeup.",
            "Dare: Send a voice note saying “I want you” to someone random.",
            "Dare: Let the group choose a word you must text to your last match.",
            "Dare: Text “I have feelings for you” to the last person you called.",
            "Dare: Fake cry and say “I still love you” to someone on the phone.",
            "Dare: Let someone post a random letter on your Instagram story.",
            "Dare: Flirt with a total stranger and record it.",
            "Dare: DM a celebrity and ask for a date."

    ]
    
    @State private var currentQuestionIndex = 0
    @State private var isExtremeSelected: Bool? = nil
    @State private var isGameSelected = false
    @State private var isTruthSelected: Bool? = nil
    @State private var shuffledQuestions: [String] = []
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    
    var body: some View {
        ZStack {
            Image("background copy 4")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Truth or Dare")
                    .font(.system(size: 28))
                    .foregroundColor(.pink)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                    .shadow(color: .white.opacity(0.7), radius: 11)
                
                if !isGameSelected {
                    Button(action: {
                        isGameSelected = true
                    }) {
                        Text("Start Game")
                            .font(.title2)
                            .foregroundColor(.orange)
                            .padding()
                    }
                } else if isExtremeSelected == nil {
                    VStack {
                        Button(action: {
                            selectGame(isExtreme: false)
                        }) {
                            Text("Standard")
                                .font(.title2)
                                .foregroundColor(.blue)
                                .padding()
                        }
                        Button(action: {
                            selectGame(isExtreme: true)
                        }) {
                            Text("Extreme")
                                .font(.title2)
                                .foregroundColor(.red)
                                .padding()
                        }
                    }
                } else if isTruthSelected == nil {
                    VStack {
                        Button(action: {
                            selectTruthOrDare(isTruth: true)
                        }) {
                            Text("Truth")
                                .font(.title2)
                                .foregroundColor(.blue)
                                .padding()
                        }
                        Button(action: {
                            selectTruthOrDare(isTruth: false)
                        }) {
                            Text("Dare")
                                .font(.title2)
                                .foregroundColor(.pink)
                                .padding()
                        }
                    }
                } else {
                    VStack {
                        ScrollView {
                            Text(shuffledQuestions[currentQuestionIndex])
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(maxWidth: 300)
                                .minimumScaleFactor(0.7)
                                .lineLimit(4)
                        }
                        .frame(height: 200)
                        .padding(.vertical, 20)
                        
                        HStack {
                            Button(action: nextQuestion) {
                                Text("Next Question")
                                    .font(.title2)
                                    .foregroundColor(.blue)
                                    .padding()
                            }
                            Button(action: skipQuestion) {
                                Text("Skip Question")
                                    .font(.title2)
                                    .foregroundColor(.pink)
                                    .padding()
                            }
                        }
                    }
                }
            }
            .padding()
            .alert(isPresented: $showAlert) {
                Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    private func selectGame(isExtreme: Bool) {
        isExtremeSelected = isExtreme
        isTruthSelected = nil
    }
    
    private func selectTruthOrDare(isTruth: Bool) {
        isTruthSelected = isTruth
        currentQuestionIndex = 0
        shuffledQuestions = shuffleQuestions(questions: getQuestionArray())
    }
    
    private func getQuestionArray() -> [String] {
        if let isExtreme = isExtremeSelected, let isTruth = isTruthSelected {
            return isExtreme ? (isTruth ? extremeTruthQuestions : extremeDareQuestions) : (isTruth ? okayTruthQuestions : okayDareQuestions)
        }
        return []
    }
    
    private func shuffleQuestions(questions: [String]) -> [String] {
        return questions.shuffled()
    }
    
    private func nextQuestion() {
        if currentQuestionIndex < shuffledQuestions.count - 1 {
            currentQuestionIndex += 1
        } else {
            showAlertWith(title: "End of questions", message: "You've reached the end of the questions.")
            currentQuestionIndex = 0
        }
    }
    
    private func skipQuestion() {
        let randomSips = Int.random(in: 1...4)
        showAlertWith(title: "Skip Question", message: "You have to drink \(randomSips) sips!")
    }
    
    private func showAlertWith(title: String, message: String) {
        alertTitle = title
        alertMessage = message
        showAlert = true
    }
}

struct TruthOrDareScreen_Previews: PreviewProvider {
    static var previews: some View {
        TruthOrDareScreen()
    }
}
