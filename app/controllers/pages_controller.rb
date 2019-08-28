class PagesController < ApplicationController
  def survey

    @politician = "Test again"
    @parties = ["Parti 1", "Parti 2", "Parti 3", "Parti 4", "Parti 5", "Parti 6", "Parti 7", "Parti 8", "Parti 9"]
    @question_answers = ""
    @questions = {
      question1: {question: "Føroyar skulu loysa frá Danmark"},
      question2: {question: "Ríkisrættarliga støðan skal ikki broytast í komandi valskeiðinum"},
      question3: {
        question: "Tað skulu flytast fleiri almenn størv frá høvusstaðnum ",
        for: "Flutningurin gagnar fíggjarstøðuni og menningini í teimum økinum har arbeiðisplássini verða flutt til. Fleiri flytingar kunnu elva til betri landafrøðiligan javnvág av arbeiðsplássum og hálærdum.",
        imod: "Ein flyting kann elva til at roynd starvsfólk ikki velja at flyta við arbeiðsplássinum. Hetta kann viðføra at málsviðgerðir gerast longri og góðskan møguliga minkar. Flytingar vísa seg eisini ofta at gerast dýrari enn væntað."
      },
      question4: {question: "Studningurin til lesandi á ungdómslestri, ið búgva heima, skal takast burtur"},
      question5: {question: "Tað almenna skal byggja leiguíbúðir"},
      question6: {question: "Føroyar skal seta á stovn ein almennan búðstaðar banka"},
      question7: {question: "Føroyar skal hava ognarskatt"},
      question8: {question: "Útlendingar skulu kunna eiga ogn í Føroyum"},
      question9: {question: "Ferðafólk skulu gjalda meira enn føroyingar fyri at nýta tær almennu farleiðirnar"},
      question10: {question: "Ferðafólk skulu gjalda eitt ferðaavgjald, tá tey koma til Føroyar"},
      question11: {question: "Bøndur skulu hava loyvi til at steingja hagan; eisini fyri føroyingum"},
      question12: {question: "Føroyar skulu taka ímóti flóttafólki"},
      question13: {
        question: "Tað skal gerast ólógligt at ganga við burka og niqab í tí almenna rúminum",
        for: "Burka og Niqab vísir ein sterkan kvinnukúgandi hugburð, sum ikki hoyrir heima í tí føroyska samfelagnum",
        imod: "Man skal tryggja og verja um rættin í grundlógini til at útinna sína trúgv á tann hátt, sum man heldur vera rættan. Landið skal ikki blanda seg uppí klædnabúnan hjá fólki."
      },
      question14: {
        question: "Kirkja og statur skulu skiljast",
        for: "Trúgv er eitt privatmál. Tað eru fleiri religiónir í Føroyum, og fleiri greinar av kristindómi, og tann evangelistiska-lutheranska skal ikki hava ein serstatus. Harumframt burdi trúgv ikki havt eitt pláss í einum vestligum demokratiskum landi.",
        imod: "Fólkakirkjan er ein partur av føroyskari mentan og søgu, og hennara serstatus skal tí fasthaldast. Føroyar hevur trúðarfrælsi, og føroyingar kunnu sjálvir velja um tey ynskja at vera ein partur av fólkakirkjuni ella ikki."
      },
      question15: {question: "Frí fosturtøka skal vera lóglig í Føroyum"},
      question16: {question: "Rættindini hjá samkyndum at giftast skal varðveitast"},
      question17: {question: "Tað skal framvegis vera lógligt hjá læknun at útskriva kannabis sum heilivág"},
      question18: {
        question: "Tað skal vera lógligt at keypa og roykja kannabis í Føroyum ",
        for: "Kannabis er longu eitt útbreitt rúsevnið, og lógfestingin kann elva til góðskueftirlit til frama fyri brúkaran. Tann ólógligi kannabis marknaðurin kann minka, og landið krevja skatt.",
        imod: "Kannabis kann elva til psykosur og aðrar mentalar trupulleikar. At gera kannabis lógligt kann viðføra eina meira jaliga sjón á hamp, so fleiri byrja at roykja tað."
      },
      question19: {question: "Rúsan skal missa einkarættin til rúsdrekka"},
      question20: {question: "Upplatingartíðirnar hjá vertshúsum skal liberaliserast."},
      question21: {question: "Føroyar skulu hava strangari krøv til aluvinnuna viðvíkjandi dálking"},
      question22: {question: "Føroyar skulu bora eftir olju"},
      question23: {question: "Ein partur av føroyska fiskinum skal seljast á uppboðssølu"},
      question24: {question: "Ein partur av føroyska fiskinum skal gevast út sum menningarkvota"},
      question25: {question: "Fiskiríkidømi er fólksins ogn"},
      question26: {question: "Tað er ein trupulleiki um fíggjarligi munurin í samfelagnum vaksur"},
      question27: {question: "Foreldur skulu sjálvi sleppa at velja, hvussu tey býta barnsburðarfarloyvi millum sín."}
    }


    @values = [
      { value: 1, icon: 'far fa-angry' },
      { value: 2, icon: 'far fa-frown'},
      { value: 3, icon: 'far fa-smile'},
      { value: 4, icon: 'far fa-laugh'}
    ]
  end

  def politicians
    @politicians = Politician.order(name: :asc)
  end
end
