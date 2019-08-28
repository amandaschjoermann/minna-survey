class PagesController < ApplicationController
  def survey
    politicians = Politician.order(name: :asc)
    parties = []
    politicians.each do |politician|
      parties << politician.party
    end
    @parties = parties.uniq

    @politician = "Test again"
    @question_answers = ""
    @questions = {
      question1: {
        question: "Føroyar skulu loysa frá Danmark",
        for: "Heimastýrislógin og Ríkisfelagsskapurin hava stórar avmarkingar fyri okkara møguleikar at virka í einum globaliseraðum heimi. Vit hava brúk fyri møguleikum, ikki avmarkingum, um vit skulu halda áfram at mennast.",
        imod: "Sambandi við Danmark tryggjar okkum m.a lán til tunnlar, verður væntandi eisini við at tryggja okkum teir komandi tunlanar og stór lán yvirhøvur. Tað gevur føroyskum lesandi í Danmark og uttanlands sersømdir, og tað tryggjar okkum eitt gott almanna- og heilsuverk."
      },

      question2: {
        question: "Ríkisrættarliga støðan skal ikki broytast í komandi valskeiðinum",
        for: "Heimastýrislógin og Ríkisfelagsskapurin hava stórar avmarkingar fyri okkara møguleikar at virka í einum globaliseraðum heimi. Vit hava brúk fyri møguleikum, ikki avmarkingum, um vit skulu halda áfram at mennast.",
        imod: "Sambandi við Danmark tryggjar okkum m.a lán til tunnlar, verður væntandi eisini við at tryggja okkum teir komandi tunlanar og stór lán yvirhøvur. Tað gevur føroyskum lesandi í Danmark og uttanlands sersømdir, og tað tryggjar okkum eitt gott almanna- og heilsuverk. "
      },
      question3: {
        question: "Tað skulu flytast fleiri almenn størv frá høvusstaðnum ",
        for: "Flutningurin gagnar fíggjarstøðuni og menningini í teimum økinum, har arbeiðisplássini verða flutt til. Fleiri flytingar kunnu elva til betri landafrøðiligan javnvág av arbeiðsplássum og hálærdum.",
        imod: "Ein flyting kann elva til, at roynd starvsfólk ikki velja at flyta við arbeiðsplássinum. Hetta kann viðføra, at málsviðgerðir gerast longri og góðskan møguliga minkar. Flytingar vísa seg eisini ofta at gerast dýrari enn væntað."
      },
      question4: {
        question: "Studningurin til lesandi á ungdómslestri, ið búgva heima, skal takast burtur",
        for: "Tað en ábyrgdin hjá foreldrunum at syrgja fyri børnum sínum. Tað er ov nógv heimabúgvandi lesandi á ungdóms útbúgvingum, ið ikki hava tørv á studningi, tí foreldur teirra tjena nokk til at uppihalda teimum.",
        imod: "Tað vil raka samfelagið skeivt, um studningurin til øll heimabúgvandi á ungdómslestri verður tikin burtur. Tað kann hava við sær ein størri ójavnvág og merkja, at færri fáa møguleikan at fáa sær eina ungdómsútbúgving."
      },
      question5: {
        question: "Tað almenna skal byggja leiguíbúðir",
        for: "Bústaðarmarknaðurin hevur stórar avbjóðingar í løtuni. Eftirspurningurin er høgur, meðan útboðið hevur ringt at fylgja við. Føroyar skulu tí hjálpa at loysa hendan trupuleikan við at byggja fleiri leiguíbúðir.",
        imod: "Fyri at tryggja at íleggjarir hava størri hug at byggja bústaðir, krevur tað, at vit javnseta aktørarnar á marknaðinum. Tað almenna skal byggja bústaðir, ið marknaðurin hevur ringt við at veita, t.d. eldraíbúðir og lestraríbúðir. Yvirskipaði bústaðarmarknaðurin skal rekast við fríari kapping."
      },
      question6: {
        question: "Føroyar skal seta á stovn ein almennan búðstaðar banka",
        for: "Ein almennur búðstaðarbanki gevur møguleikan til húsalán hjá folki, ið annars ikki kunnu fáa lán, m.a. um tey vilja byggja eitt hús í eini lítlari bygd. Á hendan hátt kunnu vit loysa búðstaðar trupuleikan skjótari, tí fleiri fáa møguleikan at byggja sær eini hús.",
        imod: "Ein almennur banki kann fara undir vágafúst banskavirksemið, tí tey ikki skulu hava vinning. Hetta kann hava við sær, at bankin ikki verður fíggjarliga burðardyggir, sum í síðsta enda gongur út yvir skattagjaldaran."
      },
      question7: {question: "Føroyar skal hava ognarskatt"},
      question8: {
        question: "Útlendingar skulu kunna eiga ogn í Føroyum",
        for: "Útlendingar eiga longu nógv í føroyum og eru við til at skapa íløgur í føroyum.",
        imod: "Tað kann koma fyri at heilar bygdir bert vera feriu íbúðir hjá útlendingum. Tá vit longu hava búðstaðartrupulleikar í Føroyum, skulu húsinum í Føroyum vera til føroyingar."
      },
      question9: {
        question: "Ferðafólk skulu gjalda eitt ferðaavgjald, tá tey koma til Føroya",
        for: "Ferðavinnuna hava vit fyri at fáa mest møguliga inntøku. Ikki fyri at fáa flest møgulig fólk til landið. Við at lata tey sigla, koyra (í Havn) og enntá flúgva ókeypis ella nærum ókeypis, fáa vit nógv fólk – men útreiðslur. Við at taka hægri pening fyri almennu ferðaleiðirnar fáa Føroyar eina inntøku heldur enn útreiðslu.",
        imod: "Um ferðafólk skulu gjalda meir enn føroyingar, gera vit mun á fólki. Hetta er ikki rætt, og kann herumframt skapa eina ringa umtalu um Føroyar. Tað kann hava við sær, at færri ferðafólk koma til Føroya."
      },
      question10: {question: "Ferðafólk skulu gjalda eitt ferðaavgjald, tá tey koma til Føroyar"},
      question11: {question: "Bøndur skulu hava loyvi at steingja hagan; eisini fyri føroyingum"},
      question12: {question: "Føroyar skulu taka ímóti flóttafólki"},
      question13: {
        question: "Tað skal gerast ólógligt at ganga við burka og niqab í tí almenna rúminum",
        for: "Burka og Niqab vísir ein sterkan kvinnukúgandi hugburð, ið ikki hoyrir heima í tí føroyska samfelagnum.",
        imod: "Man skal tryggja og verja um rættin í grundlógini til at útinna sína trúgv á tann hátt, ið ein heldur vera rættan. Landið skal ikki blanda seg upp í klædnabúnan hjá fólki."
      },
      question14: {
        question: "Kirkja og statur skulu skiljast",
        for: "Trúgv er eitt privatmál. Tað eru fleiri religiónir í Føroyum, og fleiri greinar av kristindómi. Tann evangelistiska-lutheranska skal ikki hava ein serstatus. Harumframt burdi trúgv ikki havt eitt pláss í einum vestligum demokratiskum landi.",
        imod: "Fólkakirkjan er ein partur av føroyskari mentan og søgu, og hennara serstatus skal tí fasthaldast. Føroyar hevur trúðarfrælsi, og føroyingar kunnu sjálvir velja um tey ynskja at vera ein partur av fólkakirkjuni ella ikki."
      },
      question15: {
        question: "Frí fosturtøka skal vera lóglig í Føroyum",
        for: "Hvør einstøk kvinna hevur einarætt til at taka avgerðir um mál, ið beinleiðis ávirka likam og lív hennara. Ongin kvinna ynskir at koma í ta óhepnu støðu at ynsja abort, men kvinnan eigur sjálv – uttan trýst frá lækna, trúarleiðara ella øðrum – at taka hesa avgerð.",
        imod: "Fosturtøka er at drepa eitt lív. Frí fósturtøka er eitt brot á menniskjarættiheitinum. "
      },
      question16: {
        question: "Rættindini hjá samkyndum at giftast skal varðveitast",
        for: "Øll í Føroyum skulu hava somu rættingi, hetta er eisini galdandi tá tað kemur til at giftast. Øll skulu hava loyvi at tryggja hvønn annan við giftarmáli.",
        imod: "Hjúnarbandið skal ikki blandast upp í tað, at samkynd ynskja at tryggja hvønn annan, hetta skal verða gjørt við aðrari lóg. Ein lóg, ið tryggjar ávis rættindi hjá øllum sambúgvandi, tó ikki var eitt hjúnarband."
      },
      question17: {question: "Tað skal framvegis vera lógligt hjá læknun at útskriva kannabis sum heilivág"},
      question18: {
        question: "Tað skal vera lógligt at keypa og roykja kannabis í Føroyum ",
        for: "Kannabis er longu eitt útbreitt rúsevnið, og lógfestingin kann elva til góðskueftirlit til frama fyri brúkaran. Tann ólógligi kannabis marknaðurin kann minka, og landið krevja skatt.",
        imod: "Kannabis kann elva til psykosur og aðrar mentalar trupulleikar. At gera kannabis lógligt, kann viðføra eina meira jaliga sjón á hamp, so fleiri byrja at roykja tað. "
      },
      question19: {
        question: "Rúsan skal missa einkarættin til rúsdrekka",
        for: "Landið eigur sum útgangsstøði ikki at reka vinnuligt virksemi, sum hoyrir náttúrliga til privatar fyritøkur at reka út frá einum vinnuligum grundarlagi. Borgarin eigur at hava frælsi til at njóta rúsdrekka uttan alment formyndarí. Tískil skal rúsdrekka kunna seljast í vanligum handlum og kioskum.",
        imod: "Rúsdrekka er ringt fyri kroppin og kann hava álvarsligar fylgur við sær. Einkarsølan minkar um trupulleikar við misnýslu og ovurnýtslu av rúsdrekka, tá ið atgongdin verður avmarkað. "
      },
      question20: {
        question: "Upplatingartíðirnar hjá vertshúsum skulu liberaliserast",
        for: "Nýggjar upplatingartíðir hjá vertshúsum kann skapa meira vinning fyri vertshúsini og hervið koma landinum til góðar. Longri upplatingartíðir í gerandisdegnum kunnu skapa inntøku frá m.a. ferðafólkum.",
        imod: "Heldur enn at broyta upplatingartíðurnar, skulu vit broyta náttarmentanuna í føroyum. Fleiri óhepnar støður henda eftir kl 02:00 um náttuna, og tískil hevði tað verið betur um fólk fóru fyrr út, og fóru fyrr heim. "
      },
      question21: {question: "Føroyar skulu hava strangari krøv til aluvinnuna viðvíkjandi dálking"},
      question22: {
        question: "Føroyar skulu bora eftir olju",
        for: "Um oljan verður funnin merkir hetta ein stóran fíggjarligan vinning til landið. Hetta kundi verið nýtt til at økt um vælveruna í samfelagnum og kundi m.a. fíggjað grøna framleislu keldum í Føroyum.",
        imod: "Oljunýtslan økir um Co2-útlátið. Vit eiga heldur at útbyggja fleiri og betri grønar orkukeldur, sum vind-, sól-, og sjóarfalsorku. Fíggjarlig orka skal heldur leggjast í grønar loysnir. Vit hava longu nóg mikið av olju, gass og kol."
      },
      question23: {
        question: "Ein partur av føroyska fiskinum skal seljast á uppboðssølu",
        for: "Við at seta ein part av fiskinum á uppusølu, hava fleiri møguleikan at gerast ein partur av vinnuni, og ikki bert teir somu aktøranir. ",
        imod: "Tað er torført hjá nýggjum aktørum at koma inn við uppusølu, tá teir ikki kunnu fíggja eitt tílíkt fiskiskip uttan at vera tryggjaðir fiskiloyvið í fleiri ár. Stutta loyvið eisini hava við sær at reiðarir ikki tora at keypa nýggj skip, og tí sigla við gomlum skipum, ið dálka illa. "
      },
      question24: {question: "Ein partur av føroyska fiskinum skal gevast út sum menningarkvota"},
      question25: {question: "Fiskiríkidømi er fólksins ogn"},
      question26: {
        question: "Tað er ein trupulleiki um fíggjarligi munurin í samfelagnum veksur",
        for: "Tað er ein trupuleiki, at tann fíggjarligi munurin veksur, tá hevur við sær at munurin á ríkum og fátakum veksur.",
        imod: "Tað er ikki ein trupuleiki, at tann fíggjarligi munurin vaksur, um tað merkir, at fleiri føroyingar gerast ríkari."
      },
      question27: {
        question: "Foreldur skulu sjálvi sleppa at velja, hvussu tey býta barnsburðarfarloyvi millum sín."
      }
    }


    @values = [
      { value: 1, icon: 'far fa-angry' },
      { value: 2, icon: 'far fa-frown'},
      { value: 3, icon: 'far fa-smile'},
      { value: 4, icon: 'far fa-laugh'}
    ]
  end

  def results
    user = DummyUser.create
    (1..27).each do |num|
      weight = params["question#{num}"].present? ? params["question#{num}"].to_i : 0
      Answer.create(dummy_user: user, question_number: num, weight: weight)
    end
    redirect_to top_five_path(user)
  end

  def politicians
    @politicians = Politician.order(name: :asc)
  end

  def result
    user = DummyUser.find(params[:user_id])
    @top_five = user.top_five
  end
end
