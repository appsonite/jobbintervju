//
//  FirstViewController.m
//  jobbintervju
//
//  Created by Robin Grønvold on 3/26/13.
//  Copyright (c) 2013 appsonite. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize pageControl, scrollView1, questionText, questionArray, answerArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    self.questionArray=[[NSArray alloc] initWithObjects:@"Hvilke karakterer fikk du og var du fornøyd med dem?",
                        @"Var du involvert i andre aktiviteter utenfor skolen?",
                        @"Kan du forklare hva du gjorde i din siste jobb?",
                        @"Hva synes du er din beste egenskap?",
                        @"Hva er din svakhet?",
                        @"Hva er din plan for å forberede din svakhet?",
                        @"Hvordan håndterer du høyt arbeidspress?",
                        @"Har du erfaring med å jobbe mot deadlines?",
                        @"Hva gjør deg stresset?",
                        @"Hvordan reagerer du når du er stresset?",
                        @"Er du fornøyd med karrieren din så langt?",
                        @"Fortell meg om en suksess som du har opnådd i din karriere?",
                        @"Fortell meg om en gang du gjorde en feil og hvordan du håndterte det?",
                        @"Fortell meg om en utfordring som du har møtt?",
                        @"Hva er din karrieplan for de neste fem årene?",
                        @"Liker du å jobbe best i team eller alene, og forklar hvorfor?",
                        @"Når du jobber i team er du komfortabel med en leder rolle?",
                        @"Fortell meg om den beste sjefen du har hatt og hvorfor du synes han eller hun var så bra?",
                        @"Hva vil du bringe til denne stillingen?",
                        @"Hvorfor vil du jobbe for dette firmaet?",
                        @"Hva synes du er den beste delen med denne stillingen?",
                        @"Fortell meg om deg selv?",
                        @"Beskriv deg selv som person?",
                        @"Hvordan tror du vennene dine vil beskrive deg?",
                        @"Hvordan tror du kollegaene dine vil beskrive deg?",
                        @"Hva motiverer deg til å gjøre en god jobb?",
                        @"Hva synes du er demotiverende?",
                        @"Er du en leder, hvis så; hvorfor?",
                        @"Fortell meg om en gang du måtte ta en leder rolle?",
                        @"Fortell meg om en gang du måtte ta en vanskelig avgjørelse?",
                        @"Fortell meg om en gang du måtte være kreativ?",
                        @"Hva vet du om dette firmaet?",
                        @"Hvorfor tror du at du er en god kandidat for denne jobben?",
                        @"Når du skal søke på en jobb, hva er viktigst for deg?",
                        @"Hvorfor skal vi ansette deg?",
                        @"Hvorfor vil du slutte i din nåværende jobb?",
                        @"Hva forventer du fra denne jobben?", nil];
    
    
    self.answerArray=[[NSArray alloc] initWithObjects:@"Forklar med eksempler hvorfor du valgte din retning. Nevn spesielle egenskaper eller ferdigheter som påvirket ditt valg.",
                      @"Fortell åpent om dine karakterer og hvordan du gjorde det i studiene dine. Spesifiser hvilke fag som du gjorde det bra i og hvilke du gjorde det mindre bra i. Hvis du syntes karakterene dine ikke var så veldig gode, fortell om det og hvorfor de ble slik.",
                      @"Fortell om det du gjorde utenfor skolen og hvordan du jonglerte dette med skolearbeidet. Selv om aktivitetene dine ikke direkte relaterer seg til jobb en du søker kan du forklare hvordan dette påvirket deg sosialt.",
                      @"Fortell om det som var dine arbeidsoppgaver på et høyt nivå. Fokuser på de som relaterer seg mest til jobben du intervjuer for.",
                      @"Tenk på den egenskapen du tror gjør deg til en bedre kandidat enn andre som søker. Det kan være en erfaring fra tidligere jobb eller en personlig egenskap som gjør deg vel egnet til jobben du søker.  ",
                      @"Lag en liste med to eller tre svakheter som du forbereder deg på å prate om. Dette spørsmålet er det svært sannsynlig at du får. ",
                      @"Dette er en vanlig oppfølger til forrige spørsmål. Vær forberedt med å si litt om hvordan du kan forbedre deg.  ",
                      @"Dette handler om prioriteringer. Forklar hvordan du prioriterer arbeidsoppgaver. Ha gjerne et eksmpel klart på hvordan du har håndtert høyt arbeidspress i tidligere jobber.",
                      @"Dette er et enkelt ja eller nei spørsmål, men følg opp med et eksempel.",
                      @"Dette kan være en lang list, men focuser på none få som dårlig kommunikasjon, deadlines, dårlig oppfølging far ledere etc.",
                      @"Dette er et veldig vanlig spørmål. Vær tydelig og forklar hvordan du som person reagerer.",
                      @"Dette er et selv-innsikt spørsmål.  Hvis du ikke er fornøyd, si så, men uten å være bitter. Du kan si du er fornøyd med den jobben du har gjort, men for ulike årsaker har dette ikke ført karrieren den veien du ønsket.",
                      @"Her er en mulighet til å imponere. Bruk et eksempel fra en tidligere jobb der du gjorde noe ekstra som førte til at du oppnådde et bra resultat.",
                      @"Hvis du har gjort en stor tabbe eller feil, si så, men fokuser på hva du lærte av det og ikke hvor dårlig du gjorde det. ",
                      @"En utfordring i denne settingen menes et problem eller en hindring som du har møtt og hvordan du løste den. Igjen, bruk eksempler og hvis at du kan håndtere problemer. ",
                      @"Dette er et spørsmål som stills for å forstå dine ambisjoner. Forklar dine mål og hvordan du had tenkt å nå dem. ",
                      @"Hva du svarer her vil si nye om din personlighet. Hvis du sier alene kan du bli oppfattet som en ensom ulv. Hvis du sier team, kan du oppfattes som en som liker å gjemme seg bort i grupper. Du kan være diplomatisk og si at du er komfortabel med begge metoder og at det gir deg forskjellig motivasjon.",
                      @"Hvis du er en leder, si det, og følg opp med et eksempel. Men vær ydmyk nok til å si at du ikke trenger å være i fokus hele tiden og at du gladelig støtter et team gjennom å jobbe som vanlig medarbeider.",
                      @"Dette er et enkelt spørsmål. Husk tilbake og forklar hvorfor? Dette blir spurt for å se hvordan du vil gå overens med den fremtidige sjefen i jobben du søker.",
                      @"Dette kan være din personlighet, din arbeidserfaring eller din utdannele. Fokuser på styrkene dine og prøv å forklar hvordan disse kan hjelpe bedriften nå sine mål.",
                      @"Her er en mulighet til å skryte om firmaet. De som intervjuer deg liker å here gode ting om sitt selskap. Gjør research først, så du er forberedt. Forklar hvorfor du mener dette firmaet ser bra ut for deg og din karriere.",
                      @"Vær spesifikk når du svarer på dette spørsmålet. Bruk elementer i jobb beskrivelsen til å formulere svaret ditt. ",
                      @"Fortell hvor du er fra, hvilken familiesituasjon du er i, hva du liker å gjøre, hva du har gjort yrkesmessig og hva ønsker for fremtiden. ",
                      @"Nå skal du beskrive din karakter som person. Du kan si at du er rolig, har godt humør, er tålmodig osv. Finn de adjektivene som du synes beskriver deg best.",
                      @"Dette svaret blir forhåpentligvis ganske likt som forrige spørsmål. Tenk bare på vennene dine og forestill deg hva de ville sagt om deg.",
                      @"Fokuser på hvordan du er på jobben. Du kan feks si at de ser deg som ambisiøs, er en initiative taker etc.  ",
                      @"Ikke si penger her, motivasjon kommer fra indre ting som; ‘Følelsen av å gjøre en god jobb’, eller ‘Jobbe i et miljø der du blir satt pris på´…etc.",
                      @"Vanlige ting som er demotiverende er; uklar jobb beskrivelse og ansvar, konflikter og at sjefen ikke prater med deg.",
                      @"En måte å svare dette spørsmålet på er; “Jeg er en leder ford jeg liker å løse vanskelige situasjoner, jeg liker å ha innflytelse og ikke være prisgitt andre, og jeg kan motivere og lede andre personer.” ",
                      @"Bruk eksempler hvor du har måtte utøve lederskap. Det trendier ikke å være i en jobb situasjon. Kanskje det var sports relatert, eller du har vært leder i en forening etc. Hvis det er arbeidsrelatert er det selvfølgelig det beste.",
                      @"Å ta vanskelige beslutninger skjer hele tiden, ikke bare i jobb sammenheng. Intervjueren vil høre ditt eksempel og hvordan du løste problemet.",
                      @"Dette handler om problem løsning. Hvordan du løser problemer når det ikke er mange gode alternativer. Bruk eksempel på hvordan du har vært kreativ i din problem løsning.",
                      @"Pass på at du had gjort bra research om formaet. Tenk på det store bildet: hva driver de med, hvor er de lokalisert, hvor nye omsetning har de, hvor mange ansatte etc.. ",
                      @"Dette er et spørsmål som du vet svaret på. Vanlige svar er; muligheten for å tilføre noe, mulighet til å avansere karrieremessig, eller muligheten til å ta i bruk tidligere erfaring og utdannelse. ",
                      @"Intervjuere vil alltid lure på hvorfor du ønsker å slutte i din nåværende stilling. Det vanligste svaret er; Nye utfordringer. Men dette er veldig vanlig, så ta litt tid til å lage ditt get svar. Prøv å være litt ambisiøs i svaret ditt. ",
                      @"Dette spørsmålet er for å se om dine forventninger matcher deres forventninger. Som alltid vær ærlig og bruk jobb beskrivelsen som utgangspunkt.", nil];
      
  // UIScrollView *scrollView1 = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 500, 600)];
    int numberofQuestions = [questionArray count];
    int width = numberofQuestions * 320;
    self.scrollView1.contentSize = CGSizeMake(width, 250);
    self.scrollView1.scrollEnabled = YES;
    //int y=0;
    for(int i=0;i<[questionArray count];i++)
    {
        
        CGRect frame;
        frame.origin.x = self.scrollView1.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView1.frame.size;
        
        questionText.text=[questionArray objectAtIndex:i];
        NSLog(@"array objectat index is @%@",[questionArray objectAtIndex:i]);
        questionText.font=[UIFont systemFontOfSize:12.0];
        questionText.backgroundColor=[UIColor clearColor];
        

        UITextView *subview = [[UITextView alloc] initWithFrame:frame];
        subview.text = [questionArray objectAtIndex:i];
        [scrollView1 addSubview:subview];
        //  [languageScrollView addSubview:languageLabel];
        //y+=90;
        //y+=languageLabel.frame.size.height;
        //[languageLabel release];
        
    }
    
    self.scrollView1.contentSize = CGSizeMake(self.scrollView1.frame.size.width * questionArray.count, self.scrollView1.frame.size.height);
   /*
    questionText.text = [questionArray objectAtIndex:0];
    for (int i = 0; i < questionArray.count; i++) {
        questionText.text = [questionArray objectAtIndex:i];
        [scrollView1 addSubview:questionText];
    } */
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.scrollView1.frame.size.width;
    int page = floor((self.scrollView1.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
