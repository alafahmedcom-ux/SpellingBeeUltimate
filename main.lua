-- Carl's Spelling Bee Ultimate Auto-Speller (Enhanced v3.1)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local VIM = game:GetService("VirtualInputManager")
local UIS = game:GetService("UserInputService")

-- =============================================
-- SETTINGS & GLOBALS
-- =============================================
local Settings = {
    AutoSpell = false,
    TypingSpeed = 0.05,
    AutoEnter = true,
    SelectedWord = ""
}

-- The database from your original script
local WordDatabase = {
    "llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch",
    "chargoggagoggmanchauggagoggchaubunagungamaugg",
    "lopadotemachoselachogaleokranioleipsanodrimhysphirrhonmilodendron",
    "aekyungjanggokgoeulbeoljipjangtteokbatbongnalgaranggakjibeollimun",
    "aequeosalinocalcalinoceraceoaluminosocupreovitriolic",
    "pneumonoultramicroscopicsilicovolcanoconiosis",
    "methionylthreonylthreonylglutaminylarginyltyrosylglutamylserylleucylphenylalanylalanylglutaminylleuc",
    "bababadalgharaghtakamminarronnkonnbronntonnerronntuonnthunntrovarrhounawnskawntoohoohoordenenthurnuk",
    "taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu",
    "smaismrmilmepoetaleumibunenugttauiras",
    "floccinaucinihilipilification",
    "konstantynopolitanczykowianeczka",
    "informatieverwerkingssamenwerkingsverbanden",
    "bezirksschornsteinfegermeisterprufungsordnung",
    "znajneprekrystalizovavatelnejsievajucimi",
    "kraftfahrzeughaftpflichtversicherung",
    "neprotivokonstitutsionstvuvatelstvuvayte",
    "aktinochrysofaidrovrontolamprofengofotostolistos",
    "nonilfenossipolietilenossietanolo",
    "quinazolinoindolizinoindolizinoquinazoline",
    "eximperituserqethhzebibsiptugakkathsulweliarzaxulum",
    "azpilicuetagaraycosaroyarenberecolarrea",
    "minoritetsladningsbaererdiffusjonskoeffisientmaalingsapparatur",
    "renthenoelektrokardiohrafichnoho",
    "sparvagnsaktiebolagsskensmutsskjutarefackforeningspersonalbekladnadsmagasinsforradsforvaltarens",
    "tetrahydrocannabinol",
    "pinakanakakapagngitngitngitngitangpagsisinungasinungalingan",
    "telekommunikationskundenschutzverordnung",
    "nebeprisikiskiakopustlapiaujanciuosiuose",
    "donaudampfschiffahrtselektrizitatenhauptbetriebswerkbauunterbeamtengesellschaft",
    "speciallaegepraksisplanlaegningsstabiliseringsperiode",
    "inuussutissarsiorsinnaajunnaarnersiutilik",
    "rhabarberbarbarabarbarbarenbartbarbierbier",
    "niiomtplaboparmbetzhelbetrabsbomonimonkonotdtekhstromont",
    "muvaffakiyetsizlestiricilestiriveremeyebileceklerimizdenmissinizcesine",
    "geschwindigkeitsbegrenzung",
    "knickknackatory",
    "seismillonessesentayseismilseiscientossesentayseisphobia",
    "arbeidsongeschiktheidsverzekeringsmaatschappij",
    "lentokonesuihkuturbiinimoottoriapumekaanikkoaliupseerioppilas",
    "vadlaheidarvegavinnuverkfaerageymsluskurslyklakippuhringurinn",
    "nirantarapulakatalayatayauvanavanamalaparimalabharitamandasamiranamangalikrtaprapanganah",
    "hexamethylenetetramine",
    "devedesetdevetogodisnjakinja",
    "menneskerettighetsorganisasjonene",
    "dextrodeorsumversion",
    "oligosaccharide",
    "hottentottensoldatententententoonstellingsbouwterrein",
    "sadyovakritanashanashatasahasranamastotram",
    "vastatykistomaalinosoitustutkakalustojarjestelmainsinoorierikoisupseeri",
    "elektriklashdirdiklarimizdansinizmishjasina",
    "atmosaktikoronersomoysimoboddhotarthiyotarprotibondhitakhoritabishesggan",
    "ferriprotoporphyrin",
    "canaliculodacryocystorhinostomy",
    "agyobarokatugrottalustakutyanillion",
    "miinibaashkiminasiganibiitoosijiganibadagwiingweshiganibakwezhigan",
    "glutathioneperoxidase",
    "nikotynamidadenindynukleotydfosfat",
    "kindercarnavalsoptochtvoorbereidingswerkzaamheden",
    "dziewiecsetdziewiecdziesieciodziewiecionarodowosciowego",
    "lauhpathagaminisuchakdarshkaharitatamralauhpattika",
    "siebenhundertsiebenundsiebzigtausendsiebenhundertsiebenundsiebzig",
    "yksityistaloudellistamattomuudellansakaan",
    "nejnezdevetadevadesateroroznasobovavatelnejsimi",
    "hippopotomonstrosesquipedaliophobia",
    "incomprehensibilities",
    "tridimensionalistically",
    "thekidswhopoptodaywillrocktomorrow",
    "megszentsegtelenithetetlensegeskedeseitekert",
    "razvitieelektroenergeticheskoypromyshlennosti",
    "butyrylcholinesteraseinhibitor",
    "kansanelakevakuutuslaitoksenvirkamies",
    "twoallbeefpattiesspecialsaucelettucecheesepicklesonionsonasesameseedbun",
    "graatagoldadusudexichime",
    "triskaidekaphobia",
    "sunnipaevanadalaloppupeoparastlounavasimatus",
    "immunoelectrophoretically",
    "quasurhombicosidodecahedron",
    "hydrochlorofluorocarbons",
    "dichlorodifluoromethanes",
    "bundesausbildungsforderungsgesetz",
    "yttriumbariumcopperoxidesuperconductor",
    "eierschalensollbruchstellenverursacher",
    "zygomaticoauricularis",
    "thalamocorticostriatal",
    "crystalloluminescence",
    "folyamatellenorzesiugyosztalyvezetohelyetteskepesitesvizsgalat",
    "meervoudigepersoonlijkheidsstoornissen",
    "eellogofusciouhipoppokunurious",
    "rindfleischetikettierungsuberwachungsaufgabenubertragungsgesetz",
    "hexakosioihexekontahexaphobia",
    "dimethylamidophenyldimethylpyrazolon",
    "counterrevolutionaries",
    "esophagogastroduodenoscopy",
    "hippopotomonstrosesquipedaliophobia",
    "cyclopentanoperhydrophenanthrene",
    "antidisestablishmentarianism",
    "gargantuuldadusuennexichime",
    "pseudohypoparathyroidism",
    "deoxyribonucleotide",
    "reticuloendothelial",
    "lymphangioleiomyomatosis",
    "sulfamethoxydiazine",
    "agathokakological",
    "lepidolamprologusprofundicola",
    "cholecystoduodenostomy",
    "argentummagnumsecundumspeedster",
    "rotflshtihmhotwvhttwgcathssammrimrtiwdbiwsl",
    "otorhinolaryngologists",
    "psychoneuroimmunology",
    "dermatofibrosarcomaprotuberans",
    "hepatosplenomegaloviruses",
    "hebdomomekontahaheptaheksaphobia",
    "gastroenterologists",
    "neuropsychopharmacology",
    "honorificabilitudinitatibus",
    "spectrophotofluorometrically",
    "paragyratediminishedrhombicosidodecahedron",
    "dolichyldiphosphooligosaccharideproteinglycosyltransferase",
    "quinquagintaquadrigintillion",
    "novemnonagintanongentillion",
    "snubicosidodecahedron",
    "polyphiloprogenitive",
    "allotransplantation",
    "hemisemiquaver",
    "ethylenediaminetetraacetic",
    "xabthokenoergomonocleithrohydrophotophobia",
    "hematospectrophotometrically",
    "supercalifragilisticexpialidocious",
    "quinquagintaquadringentilliard",
    "heterogeneousnesses",
    "dichlorodiphenyltrichloroethane",
    "trinitrophenylmethylnitramine",
    "phosphoribosylaminoimidazolesuccinocarboxamide",
    "chronopsychopharmacology",
    "laryngotracheobronchitis",
    "jurisprudentially",
    "hyperlipoproteinemia",
    "magnetohydrodynamic",
    "toragahitowokamoutosurutokinounarigoe",
    "radioimmunoelectrophoresis"
}
table.sort(WordDatabase) -- Keep it alphabetical

-- =============================================
-- HELPER FUNCTIONS
-- =============================================
local function SimulateType(word)
    local textBox = UIS:GetFocusedTextBox()
    if not textBox then 
        Rayfield:Notify({Title = "Error", Content = "Click the text box first!", Duration = 3})
        return 
    end

    for i = 1, #word do
        if not Settings.AutoSpell then break end
        local char = word:sub(i, i)
        
        -- Simulate actual key press
        VIM:SendKeyEvent(true, char:byte(), false, game)
        task.wait(0.01)
        VIM:SendKeyEvent(false, char:byte(), false, game)
        
        task.wait(Settings.TypingSpeed)
    end
    
    if Settings.AutoEnter and Settings.AutoSpell then
        task.wait(0.1)
        VIM:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
        VIM:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
    end
end

-- =============================================
-- UI SETUP
-- =============================================
local Window = Rayfield:CreateWindow({
    Name = "Carl's Spelling Bee Ultimate",
    LoadingTitle = "Initializing Database...",
    LoadingSubtitle = "v3.1 Enhanced",
    ConfigurationSaving = {Enabled = true, FolderName = "SpellingBee", FileName = "Config"}
})

local MainTab = Window:CreateTab("Main", 4483362458)

MainTab:CreateToggle({
    Name = "Master Toggle (Auto-Spell)",
    CurrentValue = false,
    Callback = function(Value)
        Settings.AutoSpell = Value
    end,
})

local WordDropdown = MainTab:CreateDropdown({
    Name = "Select Word to Type",
    Options = WordDatabase,
    CurrentOption = {""},
    MultipleOptions = false,
    Callback = function(Option)
        Settings.SelectedWord = Option[1]
    end,
})

MainTab:CreateInput({
    Name = "Search / Filter Words",
    PlaceholderText = "Type to filter list...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        local filtered = {}
        for _, word in pairs(WordDatabase) do
            if word:lower():find(Text:lower()) then
                table.insert(filtered, word)
            end
        end
        WordDropdown:Refresh(filtered)
    end,
})

MainTab:CreateSection("Typing Configuration")

MainTab:CreateSlider({
    Name = "Typing Delay",
    Range = {0, 0.5},
    Increment = 0.01,
    Suffix = "s",
    CurrentValue = 0.05,
    Callback = function(Value)
        Settings.TypingSpeed = Value
    end,
})

MainTab:CreateButton({
    Name = "START TYPING SELECTED WORD",
    Callback = function()
        if Settings.SelectedWord ~= "" then
            Settings.AutoSpell = true
            SimulateType(Settings.SelectedWord)
        else
            Rayfield:Notify({Title = "Wait!", Content = "Please select a word first.", Duration = 3})
        end
    end,
})

MainTab:CreateToggle({
    Name = "Auto-Press Enter",
    CurrentValue = true,
    Callback = function(Value)
        Settings.AutoEnter = Value
    end,
})

Rayfield:Notify({
    Title = "Ready!",
    Content = "Select a word and click the text box to start.",
    Duration = 5
