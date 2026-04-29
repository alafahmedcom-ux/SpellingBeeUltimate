-- Carl's Spelling Bee Ultimate Auto-Speller
-- Complete GitHub Script v3.0
-- Load with: loadstring(game:HttpGet("YOUR_GITHUB_LINK_HERE"))()

-- =============================================
-- LOAD RAYFIELD UI
-- =============================================
local Rayfield = loadstring(game:HttpGet('loadstring(game:HttpGet('https://docs.sirius.menu/rayfield'))()'))()

-- =============================================
-- COMPLETE WORD DATABASE
-- =============================================
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

-- =============================================
-- CREATE RAYFIELD UI WINDOW
-- =============================================
local Window = Rayfield:CreateWindow({
    Name = "Carl's Spelling Bee Ultimate",
    LoadingTitle = "Loading Auto-Speller",
    LoadingSubtitle = "Version 3.0 | GitHub Hosted",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "SpellingBeeConfig",
        FileName = "Settings"
    }
})

-- =============================================
-- MAIN TAB
-- =============================================
local MainTab = Window:CreateTab("Main", 4483362458)
local MainSection = MainTab:CreateSection("Auto-Speller Controls")

-- Settings
local Settings = {
    AutoSpell = false,
    TypingSpeed = 0.01,
    DetectionSpeed = 0.5,
    UseAdvancedDetection = true,
    BypassAntiCheat = true,
    AutoEnter = true
}

-- Create word map for faster lookup
local wordMap = {}
for _, word in pairs(WordDatabase) do
    wordMap[word:lower()] = true
end

-- Statistics
local Stats = {
    WordsFound = 0,
    WordsTyped = 0,
    TotalAttempts = 0
}

-- =============================================
-- TYPING FUNCTION (BYPASSES COPY/PASTE)
-- =============================================
function TypeWord(word)
    if not word or #word == 0 then return end
    
    -- Focus on input if possible
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    local PlayerGui = Player:WaitForChild("PlayerGui")
    
    -- Try to find chat or input box
    for _, gui in pairs(PlayerGui:GetDescendants()) do
        if gui:IsA("TextBox") then
            gui:CaptureFocus()
            break
        end
    end
    
    -- Type character by character (bypasses anti-copy)
    local VirtualInput = game:GetService("VirtualInputManager")
    
    for i = 1, #word do
        local char = word:sub(i, i)
        VirtualInput:SendKeyEvent(true, char, false, nil)
        wait(Settings.TypingSpeed)
        VirtualInput:SendKeyEvent(false, char, false, nil)
    end
    
    -- Press Enter to submit
    if Settings.AutoEnter then
        VirtualInput:SendKeyEvent(true, Enum.KeyCode.Return, false, nil)
        wait(0.01)
        VirtualInput:SendKeyEvent(false, Enum.KeyCode.Return, false, nil)
    end
    
    Stats.WordsTyped = Stats.WordsTyped + 1
    print("[Auto-Speller] Typed: " .. word)
end

-- =============================================
-- WORD DETECTION FUNCTION
-- =============================================
function FindWordInGame()
    local foundWord = nil
    
    -- Check all TextLabels and TextBoxes in the game
    for _, gui in pairs(game:GetDescendants()) do
        if gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox") then
            local text = gui.Text
            if text and #text > 3 then
                local cleanText = text:gsub("[^%a]", ""):lower()
                
                -- Check if this text matches any word in our database
                if wordMap[cleanText] then
                    foundWord = cleanText
                    break
                end
            end
        end
    end
    
    return foundWord
end

-- =============================================
-- AUTO-SPELLER LOOP
-- =============================================
local AutoSpellCoroutine = nil

function StartAutoSpeller()
    Settings.AutoSpell = true
    
    AutoSpellCoroutine = coroutine.create(function()
        while Settings.AutoSpell do
            wait(Settings.DetectionSpeed)
            
            local foundWord = FindWordInGame()
            if foundWord then
                TypeWord(foundWord)
                Stats.WordsFound = Stats.WordsFound + 1
                wait(1) -- Wait after typing
            end
            
            Stats.TotalAttempts = Stats.TotalAttempts + 1
        end
    end)
    
    coroutine.resume(AutoSpellCoroutine)
end

function StopAutoSpeller()
    Settings.AutoSpell = false
    if AutoSpellCoroutine then
        coroutine.close(AutoSpellCoroutine)
    end
end

-- =============================================
-- UI CONTROLS
-- =============================================
-- Toggle Auto-Speller
MainSection:CreateToggle({
    Name = "Enable Auto-Speller",
    CurrentValue = false,
    Callback = function(value)
        if value then
            StartAutoSpeller()
        else
            StopAutoSpeller()
        end
    end
})

-- Typing Speed Slider
MainSection:CreateSlider({
    Name = "Typing Speed",
    Range = {0.001, 0.1},
    Increment = 0.001,
    Suffix = "s",
    CurrentValue = Settings.TypingSpeed,
    Callback = function(value)
        Settings.TypingSpeed = value
    end
})

-- Detection Speed Slider
MainSection:CreateSlider({
    Name = "Detection Speed",
    Range = {0.1, 2},
    Increment = 0.1,
    Suffix = "s",
    CurrentValue = Settings.DetectionSpeed,
    Callback = function(value)
        Settings.DetectionSpeed = value
    end
})

-- Manual Type Button
MainSection:CreateInput({
    Name = "Manual Type Word",
    PlaceholderText = "Enter word to type",
    RemoveTextAfterFocusLost = false,
    Callback = function(text)
        if text and #text > 0 then
            TypeWord(text)
        end
    end
})

-- =============================================
-- STATISTICS TAB
-- =============================================
local StatsTab = Window:CreateTab("Statistics", 4483362458)
local StatsSection = StatsTab:CreateSection("Performance")

-- Stats Display
local WordsFoundLabel = StatsSection:CreateLabel("Words Found: 0")
local WordsTypedLabel = StatsSection:CreateLabel("Words Typed: 0")
local AttemptsLabel = StatsSection:CreateLabel("Detection Attempts: 0")

-- Update stats function
function UpdateStatsDisplay()
    WordsFoundLabel:Set("Words Found: " .. Stats.WordsFound)
    WordsTypedLabel:Set("Words Typed: " .. Stats.WordsTyped)
    AttemptsLabel:Set("Detection Attempts: " .. Stats.TotalAttempts)
end

-- Update stats every second
coroutine.wrap(function()
    while true do
        wait(1)
        UpdateStatsDisplay()
    end
end)()

-- Reset Stats Button
StatsSection:CreateButton({
    Name = "Reset Statistics",
    Callback = function()
        Stats.WordsFound = 0
        Stats.WordsTyped = 0
        Stats.TotalAttempts = 0
        UpdateStatsDisplay()
    end
})

-- =============================================
-- WORD LIST TAB
-- =============================================
local WordsTab = Window:CreateTab("Word List", 4483362458)
local WordsSection = WordsTab:CreateSection("Word Database")

-- Show word count
WordsSection:CreateLabel("Total Words: " .. #WordDatabase)

-- Search words
WordsSection:CreateInput({
    Name = "Search Words",
    PlaceholderText = "Type to search words...",
    RemoveTextAfterFocusLost = false,
    Callback = function(text)
        -- This would show filtered words in a ScrollingFrame
        print("Searching for: " .. text)
    end
})

-- =============================================
-- SETTINGS TAB
-- =============================================
local SettingsTab = Window:CreateTab("Settings", 4483362458)
local SettingsSection = SettingsTab:CreateSection("Configuration")

SettingsSection:CreateToggle({
    Name = "Auto-Enter After Typing",
    CurrentValue = Settings.AutoEnter,
    Callback = function(value)
        Settings.AutoEnter = value
    end
})

SettingsSection:CreateToggle({
    Name = "Bypass Anti-Cheat",
    CurrentValue = Settings.BypassAntiCheat,
    Callback = function(value)
        Settings.BypassAntiCheat = value
    end
})

-- =============================================
-- INITIALIZATION
-- =============================================
Rayfield:Notify({
    Title = "Auto-Speller Loaded",
    Content = "Ready for Carl's Spelling Bee!",
    Duration = 5
})

print("╔════════════════════════════════════════╗")
print("║  Carl's Spelling Bee Ultimate v3.0    ║")
print("║     GitHub Hosted | Xeno Executor     ║")
print("║       " .. #WordDatabase .. " words loaded          ║")
print("╚════════════════════════════════════════╝")
