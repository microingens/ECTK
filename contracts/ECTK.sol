pragma solidity ^0.4.24;

import "zeppelin-solidity/contracts/token/ERC20/CappedToken.sol";

contract ECTK is CappedToken {
    string public constant name = "ElastoTest";
    string public constant symbol = "ECTK";
    uint256 public constant decimals = 18;
    uint public constant INITIAL_SUPPLY = 11000000 * 10 ** decimals; // 11 millions tokens

    string public manifeste;

    constructor() public CappedToken(INITIAL_SUPPLY) {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;

        manifeste = "L’art est un fruit qui pousse dans l’homme. RICHARD TEXIER Manifeste de l’Elastogenèse";

        /*manifeste = "« L’art est un fruit qui pousse dans l’homme » \
Jean Arp \
RICHARD TEXIER \
Manifeste de l’Elastogenèse \
«  Ce n’est pas la crainte de la folie qui nous forcera à  laisser en berne le drapeau de l’imagination » \
André Breton \
Manifeste du surréalisme \
Tant va la croyance à la nature, à ce que la nature a de plus fragile et de plus puissant, la vraie nature s’entend, qu’à la fin elle se perd et s’abime, épuisée par nos outrages et notre voracité \
L’homme et les arcanes de sa perception s’enchantent pourtant volontiers des merveilles qu’elle nous propose \
Les fruits, les parfums, les arbres séculaires, la colère des volcans, le chant des oiseaux, les vastes océans, les nuages et la voûte étoilée dont les limites semblent inaccessibles à la complexion humaine, nourrissent cet élan vital qui cherche à comprendre, à se saisir du réel et de ses prodiges \
Quel est cet espace qui nous entoure, quel mystère le fait vibrer ainsi ? Et ce ciel azur, au-dessus de nos têtes, traversé de formes ouatées et blanches qui volent, gonflent, s’enlacent et disparaissent, que cherche-t-il ? Les turbulences d’altitude se conjuguent gaiement et jouent du souffle qui les transporte \
Elles se mélangent sans fin, s’accordent par hasard et analogie \
Des animaux, des visages, des corps et des chimères surgissent avant de se dissoudre dans de savantes chorégraphies aériennes \
Tout est mobile, l’énergie circule";  \
Il en est ainsi depuis la nuit des temps, les nuages se réinventent sans cesse et moutonnent dans un ciel changeant \
Ce spectacle dynamique a influencé l’imaginaire de chacun \
Le jeune enfant, fasciné par ce ballet éternel, essaie d’attraper les cumulus bien joufflus qui défilent sous ses yeux \
Sa main maladroite n’y parvient pas, mais son esprit oui \
Il se saisit de ce théâtre permanent de la métamorphose, laboratoire de tous les possibles \
Il devine une aubaine, perçoit une plate-forme sensible, élabore secrètement, au cœur de son cerveau tout neuf, un modèle évolutif de la plasticité du monde \
Le plaisir qu’il ressent à ces variations gazeuses l’invite à s’emparer de cette danse comme d’un  système de conception mentale \
Il est pour lui une leçon de souplesse \
Aucun enkystement ne survient jamais pour contrarier l’enchaînement des figures, la course est fluide \
L’eau sombre et dormante des marais de mon enfance prolongeait cette expérience mouvante, ce sentiment continu d’accomplissement que rien ne vient entraver \
Le miroir de sa surface reflétait les ciels de traîne charentais dont les langues brumeuses se conjuguaient aux algues noires et sinueuses qui ondulaient au fil du courant \
Le territoire en apnée était faussement immobile \
En réalité, il grouillait de vie à tous les étages \
Les loutres, les anguilles et les grenouilles s’insinuaient sans bruit dans cet environnement aquatique et glissaient voluptueusement des berges grasses jusqu’au fond de la rivière \
Leurs déplacements ne troublaient pas davantage les libellules, les martins-pêcheurs et les poissons \
Nul ne voulait rompre l’harmonie du territoire qui frémissait à peine de ces infimes remous \
Parfois le cri d’une bête blessée ou d’un corbeau croassant  transperçait  violemment le silence \
Son écho se diffusait en contournant les obstacles, frôlait la cime des peupliers, revenait, tournoyait et finissait par se perdre dans le lointain \
L’air humide s’apaisait alors, se stabilisait doucement et rejoignait l’onde subtile de sa mémoire de forme \
Le désordre d’un instant semblait absorbé par l’invisible édredon de l’espace, étouffé dans le brouillard du matin, dispersé par la lumière pâle de la lune \
Quelque chose de puissant travaillait à maintenir le souffle de cette permanence \
Une pulsation du fond des âges, un chant souverain, une sagesse organique semblait vivre au plus intime de nos cellules et veiller à la stabilité de l’univers tout entier \
Cette force ne vient pas de l’extérieur, elle est panthéiste, structurelle et déploie un principe enveloppant, équilibrant, proche et bienfaisant \
Telle une source elle irradie de son énergie, apaise, résout par enlacement et retient le Chaos d’embraser le Cosmos \
Puis vint ce jour où, justement, un chaos accidentel mis le feu aux poudres de mon petit cosmos intime \
Le soir tombait sur notre barque qui traversait les marais \
Sa lumière déclinante noircissait peu à peu le cours de la grande rigole \
Nous venions de quitter l’ile à l’herbe grasse et de traire les mamelles congestionnées des trois vaches de Louis \
Le pis gonflé, elles se laissaient facilement faire \
J’aimais caresser leur masse molle et chaude \
Je suis sans doute devenu sculpteur lors de ces traites, en pressant méthodiquement les tétines des bovins de Louis \
Il aimait mon jeune regard sur son monde aquatique et sensuel et, délicatement, il me laissait croire que mon aide lui était précieuse \
Le chemin du retour sonnait l’heure de la chasse pour les carnassiers \
Ici et là, des poissons sautaient \
L’un d’eux, tout près du bateau me fit me retourner brusquement \
Je trébuchai, et manquai tomber \
La barque se mit à tanguer dangereusement,  les bidons d’aluminium  vacillèrent puis deux d’entre eux basculèrent par dessus bord \
En coulant, les couvercles s’ouvrirent \
Leur contenu tiède se répandit dans le tourbillon créé par leur chute et diffusa une matière blanche sur la surface brouillée de la rivière \
Sa masse voluptueuse se répandait comme un gaz \
Corps étranger à ce théâtre naturel, le lait diffusait sa substance invasive en eau trouble \
Tandis que la nappe grandissait autour de nous, le tourbillon se transformait en vortex au fur et à mesure que les bidons disparaissaient au fond de l’eau \
Nous étions debout dans l’embarcation qui se balançait encore, saisis de stupeur et émerveillés par cette Voie lactée qui s’inventait sous nos yeux \
Elle enlaçait de ses humeurs ductiles mon imaginaire, satellisait les berges, les arbres, le crépuscule, la lune naissante, les sons lointains, la totalité des conches et canaux du marais \
C’était splendide ! \
La tête entre les mains, je ne pouvais plus bouger \
Le spectacle de cette immixtion accidentelle ouvrait une brèche dans ma perception d’enfant \
Une logique nouvelle s’emparait de mon esprit, modifiait mes grilles de lecture et mes codes \
Le phénomène (et son ferment de métamorphoses) imprégnait ma vision, distillait son influence, m’hypnotisait \
Je réalisais, médusé, qu’il était possible de changer la sensation du réel \
La nébuleuse en expansion continuait d’étendre sa spirale \
Elle captait l’espace alentour et le propulsait vers un ciel étoilé \
Sa blancheur onctueuse nous aspirait dans son vertige \
Elle s’élargissait autour de nous, encerclait  le bateau et gagnait aussi en profondeur \
Nous voguions maintenant sur une ouate lumineuse \
La surface de l’eau ne reflétait pas seulement les dernières lueurs du ciel indigo, elle inversait sa polarité et créait son propre nuage immergé \
La force panthéiste que j’évoquais, m’apparaissait pour la première fois \
Elle n’avait pas résisté à se glisser dans les méandres de cet incident lacté et  de la déflagration mentale qu’il provoquait \
Je voyais à l’œuvre sa capacité invasive, son audace, sa souplesse, l’élasticité de sa nature \
Son apparition aura été de courte durée, elle se dissoudra rapidement dans l’eau dormante, emportant ses effluves magiques vers les abysses de la rivière \
La vie nocturne du monde sauvage reprit doucement son cours \
Tout s’apaisa \
Le rêve enchanté qui accompagnait le surgissement de cette force majestueuse, furtive et rare, n’avait pris que quelques minutes \
Pourtant, le sentiment de sa présence résolutive subsistera longtemps dans ma conscience d’enfant \
La Nature est prudente \
Elle s’applique à cacher ses méthodes sous la splendeur de ses productions \
L’émerveillement, la beauté, la diversté des formes qu’elle invente, sont en réalité des stratégies de dissimulation \
L’art, par mimétisme, procède de même \
Il surprend, choque, éblouit, capte l’attention pour imposer souterrainement ses vues, établir ses thèses les plus radicales, ses modèles les plus raffinés \
La nature et l’art produisent un enlacement par la beauté afin de masquer leur trafic d’influence mental \
S’exposer à tous les regards, dans l’évidence de la pleine lumière, est la meilleure façon de rester invisible \
Le phénomène naturel de « murmuration » en donne une image spectaculaire et convaincante \
Les étourneaux Sansonnet aux nués hypnotiques, semblables à des nuages dansant dans le crépuscule d’hiver, se déplacent de manière parfaitement synchronisée \
Ils gonflent, se rétractent, s’étirent et s’étourdissent dans des chorégraphies aériennes époustouflantes en survolant les cimetières de Rome, les déserts d’Israël ou les plaines de la  Beauce \
L’amplitude de leurs arabesques laisse entrevoir une mécanique ondulatoire secrète \
Des essaims d’insectes et des bancs de poissons usent du même stratagème \
Ils bougent en une seule entité vivante, malléable et réactive et forment un corps gigantesque qui éloigne les prédateurs et renforce l’unité de l’espèce \
Des milliers d’individus s’allient pour créer un groupe homogène doté d’une conscience supraconductrice \
Comment parviennent-ils à se mouvoir dans le même élan, à communiquer entre eux, à déployer ces figures savantes, constamment renouvelées ? Une force panthéiste mystérieuse semble les animer et prendre le contrôle du réel en action \
Elle s’exprime avec volupté, virtuosité, complexité \
La vie de ces myriades de petits êtres affolés, criants et bourdonnants dans l’espace, s’abandonne à une pâte translucide (lucide, extralucide) qui explore les arcanes d’une résolution spatiale fulgurante \
La force dont je parle semble à l’œuvre à chaque envol \
Elle fait vaciller la perception et, une fois encore, assouplit, harmonise, diffuse un vertige auquel chacun se soumet \
Un rêve élastique opère \
Tel un charme collectif, il infiltre la situation, enivre le mouvement, malaxe en continu et se dissout dans l’air aussitôt que les oiseaux se sont posés sur les arbres \
Les coulées de boue, les courants marins, les vents d’altitude et le magma volcanique dégoulinant du cratère en fusion ne fonctionnent pas autrement \
Ils sont pilotés par un irrépressible dessein \
Leurs composants primordiaux (terre, eau, air, feu) glissent, s’insinuent et se conjuguent dans un flux unique \
Ils diffusent l’essence de la  \
A l’intérieur de leur logique en expansion une énergie fluide conduit le surgissement, brasse les cartes et les territoires, équilibre les masses en présence \
Cette force naissante est un bienfait qui s’enivre de son pouvoir \
«  Ce qui est faible triomphe de ce qui est fort, ce qui est mou triomphe de ce qui est dur »  \
LAO-TSEU \
Sur les côtes de L’Atlantique Nord vit un illustre bigorneau perceur, Ocenebra  \
Jules Verne écrivait de lui dans l’île mystérieuse, « Ces lithodomes sont des coquillages oblongs, attachés par grappes et très adhérents aux roches \
Ils appartiennent à cette espèce de mollusques perforateurs qui creusent des trous dans les pierres les plus dures » \
En effet, selon toute invraisemblance, ces organismes mous parviennent à creuser les pierres, à y ouvrir des galeries et des passages \
Les plages sont couvertes de leurs exploits qu’ils répètent à l’infini, des myriades de cailloux percés \
Ces œuvres aléatoires convoquent l’imaginaire en créant des cavités, des alvéoles et des constellations de trous dans des galets de hasard \
A travers ces ouvertures lumineuses, patiemment conquises, l’œil humain s’amuse à viser le ciel, à cadrer la lune, à suivre les avions qui volent dans les nuages \
L’obsession des mollusques transperce à son tour la conscience de l’homme et verticalise son regard \
Cette manie du percement  prouve de manière éclatante la capacité de ces êtres à venir à bout des calcaires les plus résistants \
Leur activité compulsive est l’illustration patente d’un principe universel et fondamental, \
Le mou est plus fort que le dur \
L’eau plus forte que la roche, elle en polit les angles, l’arrondit et l’atomise en milliers de gravillons qui roulent dans la rivière \
Le vent plus fort que la pierre ; il détruit, au fil du temps le Sphinx de Gizeh, les pyramides de Pharaon et les statues de ses divinités \
Son souffle obstiné disperse, jour après jour, le rêve d’éternité des rois dans le désert d’Egypte \
Les vagues de l’océan plus fortes que le granit de Bretagne, plus puissantes que les falaises et les rivages du monde qu’elles dévorent inexorablement de leur ressac insistant et finissent par déliter en sable \
L’humanité elle-même, apparemment si fragile, perpétuée par le flot des générations successives, semble plus durable que le sol qui les ensevelit et la mobilité tremblante et cytoplasmique de nos cellules plus persistante que l’inertie minérale \
La substance la plus fluide, la plus immatérielle, la plus malléable et, sans doute, la plus pérenne est  la pensée \
Elle traverse le temps et l’espace, se joue des enkystements du réel et glisse librement à travers la matière \
Electrisée par la ferveur de la foi, elle semble indestructible \
Les textes sacrés et la tradition orale, pourtant si volatile, qui les diffusent à travers les époques et les continents, sont moins altérables que les Stèles en marbre gravées et les Temples des Dieux de l’Olympe, plus forts que les légions romaines et l’armée d’Alexandre, plus résistants que les grandes civilisations \
Quel qu’en soit le domaine, le mou triomphe \
Cependant, la vertu molle de cette force ne suffirait pas à établir son empire \
Elle doit se conjuguer à une faculté plus essentielle encore, une faculté qui s’insinue, colle au phénomène et le résout par enlacement \
Mou certes, mais innervé, sensible, adapté, réactif, vibrant comme la vie \
Alors seulement, cette mollesse à mémoire de forme, devient puissante et peut assouplir le réel et l’intelligence qui s’en saisit \
En réalité, cette force existe depuis toujours, elle vient des premiers pas de l’Univers, des instants originels où tout est vrai puisque le monde s’invente \
La genèse de sa nature élastique, mouvante, changeante et adaptable, m’a inspiré son nom : \
Elastogenèse \
L’élastogenèse est avant tout une élasticité de l’imaginaire, elle aide à s’approcher de tous les possibles \
Pour un artiste, elle opère comme une plasturgie des rêves \
Les chairs alanguies et dilatées de Ingres, les paysages sensuels et cristallins de Tanguy, les sculptures changeantes et musicales de Arp, les montres molles de Dali, les expansions voluptueuses de César, les silicones médicales et conceptuelles de Matthew Barney, en donnent, au fil des époques, des versions intuitives et marquent son surgissement spontané \
Ces artistes l’ont  utilisée dans leur travail sans jamais la nommer, ni même en avoir conscience \
L’évidence de son pouvoir suffisait à accompagner leur œuvre, à créer dans la liberté insouciante de l’atelier \
Elle était pour eux une disposition naturelle de l’esprit en mouvement, un outil sensible de prospection intérieure, une manière libre d’appréhender le réel, de l’étreindre, d’en résoudre les paramètres artistiques \
En « monsieur Jourdain » de l’élastogenèse, chacun d’eux ignorait l’étendue de la force qu’il manipulait \
A l’opposé du mode virtuel qui cherche à désincarner, l’élastogenèse, au contraire, choisit la matière \
Elle s’appuie sur ses multiples états physiques, sur ses transitions de phase, sur sa capacité à s’incarner en masse, à s’inventer des formes nouvelles \
La matière est son objectif, son champ opérationnel \
Pour agir,  elle commence par l’assouplir, la ramollir, l’innerver, l’électriser \
Elle la transforme peu à peu en une pâte augmentée, vivante et appréhendable \
Ensuite, elle s’insinue, procède par enlacement onctueux \
Puis (ou simultanément), elle plonge en son cœur et navigue souplement dans cette élasticité \
Son mode immergé opère dans la nature depuis le commencement du monde \
L’expansion de l’Univers, l’évolution de la Vie, l’équilibre des systèmes complexes ont des composantes élastogéniques \
Il n’est pas nécessaire d’avoir conscience de son avènement pour en user \
Son principe invasif se convoque naturellement \
Elle est fécondée en continu par l’énergie primordiale du Cosmos qui accompagne le déploiement bienfaiteur de son règne \
Le cerveau humain lui-même, qui abrite en son sein un processus biologique aux prouesses immenses et mal connues, est élastogénique par nature, tant par sa forme que par sa structure interne \
Il est le lieu d’élaboration de toutes les représentations, des plus rigides aux plus souples et, à ce titre, le centre géomantique de l’élastogénie \
J’ai eu l’occasion de voir un spécimen adulte peu après son extraction d’un crane humain, un kilo cinq de matière visqueuse, jaunâtre et malodorante \
Les deux lobes cérébraux, faussement symétriques, étaient posés sur une plaque de verre, leur masse gélatineuse tremblait à chaque déplacement \
Cette pannacotta ondulante semblait encore en vie \
Le neurologue qui me la présentait me fit savoir avec solennité que j’étais face à la plus puissante machine cognitive de tous les temps \
Elle concentre, dans un petit volume, des capacités prodigieuses \
Nul ne comprend vraiment son fonctionnement subtil \
On sait peu de chose à ce jour sur les arcanes du cerveau et sur le labyrinthe de sa résolution si ce n’est qu’il évolue en fonction de son environnement et des situations qu’on lui propose \
Chaque expérience nouvelle lui fait câbler un circuit adapté composé de synapses, neurones et dentrites qu’il fabrique en quelques heures en puisant dans la boite à outils de son fond brownien \
La sollicitation extérieure enrichit la fonction cérébrale, la déploie, la corrige et les neurotransmetteurs chimiques assurent la fluidité des connexions \
Cet organe travaille continuellement à son élargissement grâce à la plasturgie de ses méninges \
Il modifie sans cesse le traitement qu’il fait des évènements à l’aune des données sensorielles qui lui parviennent \
Ses conclusions sont l’expression même à mon sens de la logique qui le guide, l’élastogenèse \
Elle assouplit et affine ses performances, s’adapte aux exigences du réel, surtout pendant la nuit où l’esprit somnolant flotte dans les brumes alanguies de la conscience \
Les rêves dilatent alors le rapport au monde \
Ils compensent et décompensent (dès qu’on pense ?) les soupapes de la machine \
Notre environnement se résume en fait à l’impression sensible que notre vision enregistre \
Elle se règle sur l’intensité et la profondeur de l’exposition aux évènements qui nous entourent \
Peut-être que la réalité ressentie est un songe élastogénique, un trouble fondamental, soumis aux aléas de la perception ? La course des nuages dans le ciel, les bidons de lait renversés dans la rivière ou le vol spasmodique des étourneaux en sont des avatars augmentés par la puissance du songe \
Celui qui s’aventurerait à nier l’existence du phénomène s’exposerait à la paralysie de la pensée car l’élastogenèse est une théorie de la souplesse \
L’expression de sa nature changeante et insaisissable rend quasiment impossible la rédaction d’une définition stable \
Pourtant, une fois pour toutes, j’ose affirmer le droit d’employer ce néologisme qui associe la genèse à l’élasticité \
Alors que je m’apprête à inaugurer l’avènement de ce concept générique et englobant et d’en prescrire l’usage sans modération, je propose de le définir ainsi : \
ELASTOGENESE, n \
1- Force onctueuse et intuitive, composante majeure de l’Univers, au même titre que les notions de Masse ou d’Energie \
Elle vit au cœur de la matière et y déploie son influence équilibrante \
2 – Méthode de résolution, par enlacement, des enkystements du réel \
3 - ENCYCL \
L’élastogenèse est tout à la fois une technique d’infiltration, d’analyse instinctive, une attitude mentale, un principe d’élargissement, un ferment à mémoire de forme, un mode de pensée magique \
Dans la vie courante, cette théorie de la souplesse offre des applications concrètes \
Le bâillement est la forme la plus empathique et sans doute la plus communicative \
L’une des plus surprenantes est le rire \
Quoi de plus élastogénique que son surgissement ? Soudain, il gonfle tout, s’empare du cerveau humain et secoue le corps de façon irrépressible \
Il se répand comme un feu de l’esprit dont la nature reste mystérieuse et le déclenchement aléatoire \
Paradoxalement il est étroitement lié à son contraire émotionnel, les pleurs, avec lequel il aime pourtant se mélanger \
Le trouble qu’il déclenche est si fort qu’il peut amener à considérer un être comme dangereux ou fou, au comportement incontrôlable, possédé par l’élastogénie de son fou rire \
Quel est le principe qui déclenche ce spasme joyeux, convulsif et rassurant ? Il s’empare d’une personne et se manifeste de manière aussi intempestive que bruyante en déclenchant une onde d’allégresse expansive \
Chacun a constaté les bienfaits de cette contagion \
Elle éclate spontanément, élargit l’être, traverse l’espace, enchante et assouplit les situations les plus bloquées \
Conforme à la définition de l’élastogenèse, le rire résout par enlacement et à ce titre honore la force qui l’inspire \
Celle-ci affleure en permanence le monde visible \
Elle s’y manifeste brièvement, sous des aspects imprévisibles \
Le chant des baleines à bosse, les cris des dauphins ou des orques, élastogénisent l’océan \
Les émissions sonores de leurs voluptueux sonars lisent le relief des fonds marins et signalent les obstacles de la surface pour aider les grands cétacés  à poursuivre leur route \
Elle croise parfois les méduses Nutricola qui ont su domestiquer l’inexorable écoulement du temps \
Elles parviennent à stopper leur vieillissement et à atteindre l’immortalité biologique en oscillant du polype à la méduse adulte et inversement \
Elles rajeunissent ainsi à leur fantaisie \
Cette métamorphose à mémoire de forme leur confère un cycle de vie éternelle \
Des phénomènes lumineux transitoires comme les farfadets ou les aurores boréales expriment l’élasticité de la haute atmosphère \
Leur apparition éphémère, ornée de rouge incandescent ou de voiles verts fluorescents danse dans les ciels froids des pôles magnétiques \
Observés depuis la stratosphère, ils électrisent l’espace \
Ces surgissements furtifs et spectaculaires laissent entrevoir la splendeur élastogénique de la nature mais aussi l’expression polyphonique de son champ opératoire \
Au cours du temps, l’esprit de nombreux poètes fut saisi par  cet enlacement intérieur, fécondé par son irruption molle et invasive \
La plupart d’entre eux resta inconscient de la force qui les traversait et s’insinuait au plus profond d’eux-mêmes \
La lecture attentive de leurs textes laisse cependant apercevoir son influence sur le déploiement de leur génie \
Ainsi, \
Arthur Rimbaud est élastogénique par fulgurance \
Tandis qu’Henri Michaux l’est par essence \
Assoupli par les substances psychotropes, il plonge dans l’être et l’espace du dedans \
Mouvement et exploration se confondent \
Sa poésie demeure aussi élastique que sa peinture \
Alfred Jarry est élastogénique dans l’attraction des solutions imaginaires qu’il nomme avec humour et volupté, Pataphysique \
Antonin Artaud l’est par addiction au réel halluciné \
André Breton est élastogénique dans un rêve définitif \
Blaise Cendrars est élastogénique par bourlingage, dilatation et embobinage verbal \
Raymond Roussel est élastogénique dans sa manière de voyager,  son sentiment du vide comme isolant parfait et son goût pour les pâtisseries à la guimauve \
Apollinaire l’est dans l’invention du poème calligramme et la compréhension instinctive des peintres de son temps \
Saint John Perse, de toute évidence, est élastogénique comme il est surréaliste, à distance \
René Daumal l’est  dans le langage analogique \
Saint-Exupéry est aussi élastogénique que l’air tourbillonnant, brassé par les pales de son avion dans la nuit étoilée \
Lautréamont est élastogénique par l’agilité de son imaginaire en mouvement perpétuel \
Victor Segalen est élastogénique dans les relations de ses multiples navigations au travers du globe, alors que Pierre Loti l’est par tropisme oriental \
Ghérasim Luca l’est quand il déclame sa prose, porté par le phrasé jouissif de sa diction \
Aimé Césaire l’est en politique \
Fernando Pessoa le devient, le plus souvent, entre poésie et psychanalyse \
Jean Cocteau l’est constamment dans les  nuances tragiques de la vie \
Marguerite Duras l’est à chaque page, Houellebecq  quand il prolonge les courbes, Le Clézio en extase matérielle \
Robert Desnos, Joë Bousquet, Pierre Jean Jouve, Gérard de Nerval, Pasolini, Benjamin Péret, Edgar Allan Poe, Yourcenar, Saint-Pol Roux, Dylan Thomas appartiennent, à divers titres, au collège virtuel des élastogénésiens disparus \
Sans l’avoir jamais nommée, cette force élastique traverse leur œuvre \
Elle surgit et oriente souplement leur plume \
Ils l’appellent urgence d’écrire, préscience ou inspiration insistante mais tous, espèrent sa venue rapide pour illuminer leur travail \
Elle n’est d’ailleurs pas exclusivement réservée à la peinture, la sculpture ou à la littérature \
Son expression est aussi polyphonique que le champ exploratoire de l’Homme \
Zaha Hadid, Marc Newson ou Phillip Glass sont aussi élastogéniques que Pasteur, Einstein ou Stephen Hawkins \
L’ensemble des domaines scientifiques, les sciences humaines et la politique peut se saisir de l’élastogenèse, de ses vertus et de ses prodiges, et constater sa présence dans leurs espaces respectifs de compétence \
Je réalise soudain que cette énumération non exhaustive, désordonnée, déambulation mentale au fil associatif de la pensée, franchissant les époques, les artistes, les livres et les disciplines, est elle-même de nature élastogénique \
Si la plupart des écrivains et des chercheurs ne se sont pas totalement abandonnés à la fluidité et aux principes articulant de l’élastogenèse, c’est qu’ils n’en connaissaient pas les bienfaits \
Dès lors, ils n’envisageaient pas de se laisser guider par sa puissance \
Des enkystements persistaient dans leur cœur et leur esprit \
Ils freinaient la souplesse de leur génie propre en ce sens que l’inertie de ces empêchements demeurait rassurante \
Pourquoi ces créateurs, ces inventeurs, ces explorateurs des forces de l’imaginaire tenaient-ils tant à ralentir le lâcher prise, si précieux au déploiement d’une œuvre? J’insiste, la pratique de l’élastogenèse est un supplément d’âme \
Sa conscience offre l’aisance de l’eau qui court dans la rivière \
La sensation la plus lointaine pour chacun d’entre nous est un signal sonore à l’écho régulier \
Il semble étouffé mais proche \
Cette onde initiale qui nous pénètre et nous rassure est le battement du cœur de notre mère \
Il apaise nos sens embryonnaires, irrigue et nourrit à ses côtés un fœtus vulnérable et l’impérieuse exigence de sa  croissance \
Dans ce bain primordial, nous prospérons en apnée \
L’éveil se fait doucement, tendrement, dans la souplesse de la membrane amniotique \
Le goût pour le rêve et ses constructions flottantes naît peut-être ici, à l’aune de cette immersion originelle ? Puis soudain vient le terme, l’urgence de s’extraire, de glisser hors de cette obscurité aqueuse et protectrice vers la lumière opale d’un limbe qui nous attire \
Il faut traverser   des chairs molles et dilatées pour apparaître enfin \
Des spasmes convulsifs nous y aident, conjugués à la brûlure vive des poumons qui se gonflent pour la première fois \
Elle nous arrache un cri, annonce l’avènement de la naissance, suivie de ses vagues d’éblouissements sensoriels \
Ils étalonnent l’éventail de nos perceptions et signent pour toujours l’expérience  du monde que nous venons de  rejoindre \
Elle restera la révélation fondamentale \
L’essence même du contact historique avec l’élastogenèse qui a couvé silencieusement notre expansion au cœur de la matrice \
Son influence plasmatique a inspiré le développement progressif de nos organes mais aussi de notre esprit \
Dès cet instant le sentiment de sa présence  offre à notre fraîche conscience l’outil de pilotage, la grille de lecture et l’instrument de résolution dont nous avons besoin \
Il faudrait être fou pour s’en priver \
Grace à elle, nous sommes équipés pour l’aventure, parés pour nous déployer librement, pour affronter et surtout enlacer ce qu’il convient d’appeler la Vie;";
*/
} // end constructor



}
