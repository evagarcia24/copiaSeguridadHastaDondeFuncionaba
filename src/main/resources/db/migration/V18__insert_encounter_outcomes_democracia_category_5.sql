-- V18__insert_encounter_outcomes_democracia_category_5.sql

-- RUMOR VIRAL
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000001'),
    'FAILURE',
    'Intentáis desmentirlo con educación y el pasillo, agradecido, os nombra "fuente contrastada". En segundos os rodea un corrillo con hambre de verdad ajena: empujones, codazos y un susto colectivo que se os queda pegado como etiqueta mal puesta.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000001'),
    'NEUTRAL',
    'Os coordináis para decir la frase perfecta y el rumor ya se ha mudado a otra barbaridad más cómoda. Os quedáis hablando al aire mientras la estupidez se actualiza sola, y el grupo solo se lleva el lujo de haber perdido el tiempo con buena dicción.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000001'),
    'SUCCESS',
    'Cortáis la cadena de raíz y la rumorología, ofendida, se calla un instante. Aparece alguien con prisa y sonrisa de cartón y os entrega un muestrario sellado de ampollas "para contingencias": cada cual se guarda la suya, todas diferentes, con aromas que van desde "urgencias de madrugada" hasta "exención provisional" y otras que burbujean con una prisa sospechosa. Nadie las destapa; aquí lo sensato es guardar y seguir andando.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000001'),
    'GREAT_SUCCESS',
    'Le encontráis la costura al bulo y lo dejáis colgando delante de todos, feo y desnudo. Un "responsable de pasillo" aparece de la nada y os endosa un estuche de intervención con piezas oficiales, distintas entre sí; os lo repartís sin ceremonia y cada cual acaba con su herramienta reglamentaria, de esas que dan seguridad incluso cuando la realidad se pone creativa.'
);

-- REPORTERO AGRESIVO
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000002'),
    'FAILURE',
    'Intentáis mantener la calma y el micrófono, fiel a su oficio, os firma un golpe conjunto: entre empujones, cables y flashes, el grupo sale magullado y con el corazón acelerado. Encima, alguien grita "¡lo han confesado!" y os cae la culpa como si fuera parte del vestuario.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000002'),
    'NEUTRAL',
    'El reportero se cansa y se va, pero os deja de recuerdo vuestro propio careto rebotando en una pantalla cercana, a volumen indecente. No pasa nada… salvo la paciencia del grupo, que se queda por el suelo como un pinganillo olvidado.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000002'),
    'SUCCESS',
    'Le desmontáis el show con una sonrisa y el equipo, humillado, os paga el silencio con una caja precintada de viales de cortesía: cada cual se guarda uno, ninguno igual, algunos con olor a "vuelve a levantarte como si nada", otros con etiqueta de "tregua administrativa" y alguno que chisporrotea como si quisiera empujar antes de tiempo. Se guardan sin abrir, como se guardan las pruebas incómodas.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000002'),
    'GREAT_SUCCESS',
    'Respondéis con tanta templanza que hasta el titular duda un segundo. Una auxiliar de producción, sin miraros a la cara, os desliza una bolsa con instrumentos de control homologados, todos distintos; os los repartís y cada cual acaba con su pieza, discreta pero con esa autoridad fría que, llegado el momento, evita discusiones largas.'
);

-- CAMARA OCULTA
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000003'),
    'FAILURE',
    'Metéis mano donde no debéis y la esquina os educa en grupo: un chispazo os deja el cuerpo tieso, el pelo con opiniones y el orgullo chamuscado. Salís oliendo a tostada institucional, con el pulso renegociando su contrato para todos a la vez.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000003'),
    'NEUTRAL',
    'La cámara os sigue con la devoción de quien cobra por observar. Vosotros seguís andando con "naturalidad", esa actuación cara que el grupo paga con minutos y mandíbula apretada, mientras la esquina registra hasta la vergüenza.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000003'),
    'SUCCESS',
    'En lugar de apagarla, la dobláis a vuestra voluntad y la esquina "autoriza" con un clic. Se abre un hueco secreto con ampollas precintadas, ninguna igual: unas huelen a sala de urgencias, otras prometen una exención breve de desgracias y otras burbujean como si quisieran empujar al mundo. Cada cual se guarda la suya sin destaparla; aquí lo prudente es no tentar a la química.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000003'),
    'GREAT_SUCCESS',
    'La desactiváis con un gesto limpio y, detrás del panel, aparece un compartimento con útiles de custodia, todos distintos y con sello raro. Os lo repartís sin preguntar demasiado: cada cual se queda con su pieza, y el grupo siente que, si vuelve a haber miradas con intención, ya no vais con las manos vacías.'
);

-- NOTICIA MANIPULADA
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000004'),
    'FAILURE',
    'Tocáis la consola y la consola os toca a vosotros: una descarga fina y traicionera os deja los dedos torpes y la cabeza caliente. El titular, en agradecimiento, os acusa en plural de cosas que ni habéis tenido tiempo de imaginar todavía.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000004'),
    'NEUTRAL',
    'La pantalla se apaga sola, orgullosa de su autonomía. Vosotros os quedáis con la sensación colectiva de haber ganado algo… hasta que el zumbido os vuelve por dentro y os recuerda que aquí nada se apaga del todo, solo se toma un descanso para fastidiar mejor.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000004'),
    'SUCCESS',
    'Encontráis un modo oculto y la máquina, humillada, os "compensa" con un surtido sellado de ampollas editoriales: cada cual se guarda una distinta, algunas con olor a "recomponte ahora mismo", otras con aire de salvoconducto temporal contra desgracias y otras que burbujean con ambición. Nadie las abre; se guardan como se guardan las verdades útiles.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000004'),
    'GREAT_SUCCESS',
    'Ajustáis la narrativa lo justo para que parezca humana y el sistema, a regañadientes, suelta una bandeja de herramientas de corrección urgente: piezas oficiales, distintas entre sí, pensadas para manos diferentes. Os las repartís y cada cual se queda con su dispositivo discreto, de esos que hacen que el grupo camine con otra postura.'
);

-- ENTREVISTA TRAMPA
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000005'),
    'FAILURE',
    'El foco os alcanza como si el grupo le debiera dinero: calor, deslumbrón y una torpeza inevitable que queda registrada para siempre. Salís con la piel irritada y una frase descontextualizada circulando con vuestro nombre colectivo, aunque todavía estáis intentando recordar cómo se parpadea.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000005'),
    'NEUTRAL',
    'Os retiráis con dignidad, que es una forma elegante de perder tiempo en equipo. Aun así, escucháis cómo os describen "huyendo" mientras ya vais lejos, con la mandíbula del grupo apretada y el orgullo arrastrando los pies.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000005'),
    'SUCCESS',
    'Os salís del guion con tanta precisión que os "premian" para que no lo repitáis: os entregan un estuche de viales de plató, precintados y variados. Cada cual se guarda el suyo, todos diferentes: alguno huele a "vuelve a estar entero", otro sabe a "tregua temporal contra lo desagradable" y otro burbujea como si quisiera empujar la realidad. Se guardan sin abrir, por instinto de supervivencia.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000005'),
    'GREAT_SUCCESS',
    'Improvisáis una respuesta tan sólida que el presentador duda un segundo y el plató se queda sin guion. Un técnico os pasa un paquete de material de presidencia y control, con piezas distintas, pensadas para repartirse; os lo distribuís y cada cual se queda con su utensilio, con ese peso simbólico que, llegado el momento, convence sin tener que discutir.'
);

-- PLATOS INTERACTIVOS
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000006'),
    'FAILURE',
    'El plató decide "improvisar" con vosotros: un foco baja con mala fe, un cable muerde el tobillo y el grupo sale con el cuerpo quejándose en coro. Camináis como quien firma un acuerdo sin leerlo: duele y nadie sabe por qué.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000006'),
    'NEUTRAL',
    'Parpadea, pita y se entusiasma… con vosotros de figurantes involuntarios. Cuando por fin os suelta, el grupo solo ha ganado vergüenza compartida y una luz en la retina que os acompaña como una firma invisible.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000006'),
    'SUCCESS',
    'El set se sincroniza con vosotros y os trata como "personal imprescindible": os deja una caja precintada de ampollas de producción, todas diferentes. Cada cual se guarda la suya: algunas huelen a "turno de urgencias", otras parecen un permiso breve contra consecuencias feas y otras burbujean con ganas de empujar. Nadie las destapa; se guardan como se guardan los secretos que funcionan.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000006'),
    'GREAT_SUCCESS',
    'Entre atrezzo y cintas de "NO PASAR" encontráis un estuche de intervención escénica con piezas distintas, frías y sorprendentemente serias. Os lo repartís sin miraros demasiado: cada cual se queda con su instrumento, y el grupo nota esa tranquilidad falsa de ir "autorizado" aunque no lo esté.'
);

-- ANUNCIO PERSISTENTE
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000007'),
    'FAILURE',
    'Tocáis "aceptar" sin querer y el holograma os responde con un destello agresivo. El grupo queda mareado, con la vista bailando y la dignidad en modo ahorro, mientras el anuncio os despide con gratitud comercial y cero piedad.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000007'),
    'NEUTRAL',
    'Se cansa y desaparece, pero os deja el eslogan resonando por dentro como una maldición barata. No os ha pasado nada… salvo el daño estético colectivo y esa irritación fina que os acompaña como música de ascensor.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000007'),
    'SUCCESS',
    'No solo lo apagáis: lo borráis de la realidad con desprecio técnico. La interfaz, ofendida, desbloquea un muestrario sellado de ampollas "premium": cada cual se guarda una distinta, algunas con olor a "recomponte sin preguntas", otras con aire de "exención temporal" y otras que burbujean como si quisieran empujar antes de tiempo. Se guardan sin abrir, por puro instinto.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000007'),
    'GREAT_SUCCESS',
    'Lo cerráis por fin y la interfaz, como quien concede un trámite, suelta un lote de útiles de paso preferente: piezas rígidas, distintas entre sí, pensadas para repartirse. Os las distribuís y cada cual se queda con su credencial o artilugio oficial, y el grupo camina con esa insolencia tranquila de quien parece tener permiso.'
);

-- RUEDA DE PRENSA CAOTICA
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000008'),
    'FAILURE',
    'Intentáis poner orden y el tumulto os lo agradece con violencia fotogénica: una cámara os golpea, un micro os engancha y el grupo sale dolorido, además de perfectamente encuadrado en el peor momento posible.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000008'),
    'NEUTRAL',
    'El caos sigue su curso con disciplina de tormenta: no salís heridos, pero el grupo envejece un poco viendo cómo nadie escucha a nadie con tanta pasión. Os vais con las manos vacías y la cabeza llena de ruido.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000008'),
    'SUCCESS',
    'Conseguís que el tumulto respire y el equipo, derrotado, os "compensa" con un estuche de viales precintados. Cada cual se guarda uno, todos diferentes: alguno huele a urgencias limpias, otro sugiere un salvoconducto breve contra desgracias y otro burbujea con ganas de empujar. Nadie los abre; se guardan como se guarda la ventaja.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000008'),
    'GREAT_SUCCESS',
    'Lográis que las preguntas se alineen por un instante y alguien os "reconoce" con gesto oficial. Os entregan material protocolario de contención, con piezas distintas y serias; os lo repartís y cada cual se queda con su instrumento de orden, y el grupo nota que, si el pasillo se pone físico, ya vais con argumentos tangibles.'
);

-- TERTULIA SIN FIN
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000009'),
    'FAILURE',
    'Entráis a poner orden y la coreografía de manos os cobra peaje: golpes torpes, codazos sinceros y el grupo sale con el dolor exacto de quien se mete donde no le han llamado. De regalo, os "interrumpen" con el cuerpo y os lo venden como debate.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000009'),
    'NEUTRAL',
    'Siguen discutiendo como si el tiempo fuera una subvención infinita. Vosotros os vais igual que llegasteis, salvo por la pérdida colectiva de minutos y esa certeza amarga de que nadie os devolverá nada con intereses.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000009'),
    'SUCCESS',
    'Cerráis la tertulia con una sentencia limpia y el moderador, derrotado, os entrega un surtido de ampollas precintadas "por desgaste emocional". Cada cual se guarda una distinta: alguna huele a "vuelve a estar entero", otra parece prometer una tregua contra consecuencias feas y otra burbujea con prisa ofensiva. Nadie las destapa; se guardan antes de que el debate resucite.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A00000000000000000000000000009'),
    'GREAT_SUCCESS',
    'Soltáis una frase tan clara que el plató se queda helado un instante, como si hubiera visto la verdad por accidente. En ese silencio aparece una asistente y os cuela un set de cierre y control, con piezas distintas; os lo repartís y cada cual se queda con su instrumento, y el grupo recupera esa sensación rara de poder terminar cosas.'
);

-- PANTALLA SUPERSATURADA
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A0000000000000000000000000000A'),
    'FAILURE',
    'La pantalla os dispara un destello y os hiere con elegancia tecnológica: ojos ardiendo, mareo pegajoso y el grupo caminando como si el pasillo tuviera oleaje. La realidad os pega en alta definición y no pide disculpas.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A0000000000000000000000000000A'),
    'NEUTRAL',
    'Se corrige sola, como si os estuviera haciendo un favor. Vosotros os quedáis igual, salvo por el zumbido mental y la resaca de haber visto demasiadas verdades simultáneas sin poder llevaros ninguna que sirva.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A0000000000000000000000000000A'),
    'SUCCESS',
    'La emisión se estabiliza y, en el hueco oculto, aparece un estuche sellado de ampollas "de mantenimiento": cada cual se guarda la suya, ninguna igual. Algunas huelen a urgencias limpias, otras sugieren una exención breve contra lo desagradable y otras burbujean como si quisieran empujar la mala suerte. Nadie las abre; se guardan y se sigue, porque mirar demasiado siempre sale caro.'
);
INSERT INTO encounter_outcome VALUES (
    HEXTORAW('A5A0000000000000000000000000000A'),
    'GREAT_SUCCESS',
    'Abrís el panel técnico y el soporte escupe un lote de sujeción homologada: piezas rígidas, distintas, con cierres rápidos, hechas para manos diferentes. Os lo repartís y cada cual se queda con su módulo de control; el grupo no se siente más tranquilo, pero sí más presente si el pasillo decide ponerse contundente.'
);
