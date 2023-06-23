# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Czyszczenie tabel
Answer.destroy_all
Question.destroy_all
# Answer.destroy_all

# Tworzenie pytań i odpowiedzi
question1 = Question.create(content: '1. Które z tych stwierdzeń jest poprawne?')
Answer.create(
  content: 'Jeśli otrzymasz wiadomość e-mail, która wygląda, jakby pochodziła od kogoś, kogo znasz, możesz kliknąć dowolny link, o ile masz blokadę spamu i ochronę antywirusową.', correct: false, question: question1
)
Answer.create(
  content: 'Możesz zaufać, że wiadomość e-mail naprawdę pochodzi od klienta, jeśli używa logo klienta i zawiera co najmniej jeden fakt o kliencie, o którym wiesz, że jest prawdziwy.', correct: false, question: question1
)
Answer.create(
  content: 'Jeśli otrzymasz wiadomość od współpracownika, który potrzebuje Twojego hasła do sieci, nigdy nie powinieneś go podawać, chyba że współpracownik powie, że to nagły wypadek.', correct: false, question: question1
)
Answer.create(
  content: 'Jeśli otrzymasz wiadomość e-mail od działu kadr z prośbą o natychmiastowe podanie danych osobowych, powinieneś ją najpierw sprawdzić, aby upewnić się, że są tym, za kogo się podają.', correct: true, question: question1
)

question2 = Question.create(content: '2. Otrzymujesz wiadomość tekstową od sprzedawcy, który prosi Cię o kliknięcie łącza w celu odnowienia hasła, abyś mógł zalogować się na jego stronie internetowej. Powinieneś:')
Answer.create(content: 'Odpowiedzieć na wiadomość, aby potwierdzić, że naprawdę musisz odnowić hasło.', correct: false,
              question: question2)
Answer.create(
  content: 'Klikniąć w łącze. Jeśli link przeniesie Cię na stronę sprzedawcy, będziesz wiedział, że nie jest to oszustwo.', correct: false, question: question2
)
Answer.create(content: 'Kliknąc w łącze w trybie incognito, aby sprawdzić czy to nie oszustwo.', correct: false,
              question: question2)
Answer.create(
  content: 'zadzwonić do sprzedawcy, używając numeru telefonu, który znasz jako prawidłowy, aby potwierdzić, że żądanie jest prawdziwe.', correct: true, question: question2
)

question3 = Question.create(content: '3. Jeśli padniesz ofiarą oszustwa phishingowego, co powinieneś zrobić, aby ograniczyć szkody?')
Answer.create(content: 'Zmień wszystkie skompromitowane hasła.', correct: true, question: question3)
Answer.create(content: 'Rozesłać wiadomość do współpracowników aby ich ostrzec.', correct: false, question: question3)
Answer.create(content: 'Odłączyć komputer. Pozwoli to pozbyć się złośliwego oprogramowania.', correct: false,
              question: question3)
Answer.create(content: 'Usunąć wiadomość phishingową.', correct: false, question: question3)

question4 = Question.create(content: '4. Które z poniższych czynności należy wykonać, aby ograniczyć dostęp do plików i urządzeń?')
Answer.create(content: 'Aktualizacja oprogramowanie raz w roku.', correct: false, question: question4)
Answer.create(content: 'Korzystanie z wieloskładnikowego uwierzytelnienia.', correct: true, question: question4)
Answer.create(content: 'Zlecenie pracownikom dostępu do informacji za pośrednictwem otwartej sieci Wi-Fi',
              correct: false, question: question4)
Answer.create(content: 'Udostępnianie hasła tylko zaufanym współpracownikom.', correct: false, question: question4)

question5 = Question.create(content: '5. Jaka jest najlepsza odpowiedź na pytanie, które osoby w firmie powinny być odpowiedzialne za cyberbezpieczeństwo?')
Answer.create(
  content: 'Właściciele firm. Prowadzą firmę, więc muszą znać podstawy cyberbezpieczeństwa i stosować je w praktyce, aby zmniejszyć ryzyko cyberataków.', correct: false, question: question5
)
Answer.create(
  content: 'Specjaliści IT, ponieważ są w stanie najlepiej poznać i promować cyberbezpieczeństwo w firmie.', correct: false, question: question5
)
Answer.create(
  content: 'Wszyscy pracownicy powinni znać pewne podstawy cyberbezpieczeństwa, aby zmniejszyć ryzyko cyberataków.', correct: true, question: question5
)
Answer.create(
  content: 'Menedżerowie, ponieważ są odpowiedzialni za upewnienie się, że pracownicy przestrzegają właściwych praktyk', correct: false, question: question5
)

question6 = Question.create(content: '6. Które z poniższych jest najlepszą odpowiedzią na pytanie, jak zabezpieczyć router?')
Answer.create(content: 'Zmień domyślną nazwę i hasło routera.', correct: false, question: question6)
Answer.create(content: 'Wyłącz zdalne zarządzanie routerem.', correct: false, question: question6)
Answer.create(content: 'Wyloguj się jako administrator po skonfigurowaniu routera.', correct: false,
              question: question6)
Answer.create(content: 'Wszystkie powyższe', correct: true, question: question6)

question7 = Question.create(content: '7. Czym jest oprogramowanie ransomware?')
Answer.create(content: 'Sprzęt komputerowy, który przestępcy kradną i nie zwracają, dopóki im nie zapłacisz.',
              correct: false, question: question7)
Answer.create(
  content: 'Oprogramowanie, które infekuje sieci komputerowe i urządzenia mobilne w celu przetrzymywania danych użytkownika jako zakładnika, dopóki nie wyśle on atakującym pieniędzy', correct: true, question: question7
)
Answer.create(content: 'Forma kryptowaluty.', correct: false, question: question7)
Answer.create(
  content: 'Oprogramowanie służące do ochrony komputera lub urządzenia mobilnego przed szkodliwymi wirusami.', correct: false, question: question7
)

question8 = Question.create(content: '8. Które z powyższych najlepiej opisuje sposób, w jaki przestępcy rozpoczynają ataki ransomware?')
Answer.create(content: 'Które z powyższych najlepiej opisuje sposób, w jaki przestępcy rozpoczynają ataki ransomware?',
              correct: false, question: question8)
Answer.create(
  content: 'Dostanie się na serwer poprzez luki w zabezpieczeniach i zainstalowanie złośliwego oprogramowania.', correct: false, question: question8
)
Answer.create(
  content: 'Korzystanie z zainfekowanych stron internetowych, które automatycznie pobierają złośliwe oprogramowanie na komputer lub urządzenie mobilne.', correct: false, question: question8
)
Answer.create(content: 'Wszystkie powyższe.', correct: true, question: question8)

question9 = Question.create(content: '9. Które z tych stwierdzeń jest prawdziwe?')
Answer.create(
  content: 'Najlepiej jest używać uwierzytelniania wieloskładnikowego, aby uzyskać dostęp do obszarów sieci biznesowej zawierających poufne informacje.', correct: true, question: question9
)
Answer.create(
  content: 'Powinieneś używać tego samego hasła dla kluczowych urządzeń biznesowych, aby zagwarantować, że pracownicy wysokiego szczebla będą mogli uzyskać do nich dostęp w sytuacji awaryjnej.', correct: false, question: question9
)
Answer.create(
  content: 'Najlepszym sposobem ochrony danych biznesowych jest upewnienie się, że nikt nie zgubi żadnego urządzenia.', correct: false, question: question9
)
Answer.create(
  content: 'Nie należy ograniczać liczby prób logowania na kluczowych urządzeniach biznesowych, ponieważ zablokowanie konta z powodu zbyt wielu nieprawidłowych prób uniemożliwiłoby dostęp do kont.', correct: false, question: question9
)

question10 = Question.create(content: '10. Który z poniższych scenariuszy NIE opisuje oszustwa związanego z pomocą techniczną?')
Answer.create(content: 'Dzwoniący prosi o udzielenie mu zdalnego dostępu do komputera w celu naprawienia problemu.',
              correct: false, question: question10)
Answer.create(
  content: 'Płacisz zaufanemu specjaliście ds. bezpieczeństwa za sprawdzenie sieci pod kątem włamań, a on informuje Cię, że w sieci występuje problem, który należy naprawić.', correct: true, question: question10
)
Answer.create(
  content: 'Ktoś dzwoni i mówi, że znalazł wirusy na komputerze, a następnie prosi o podanie danych karty kredytowej, aby móc wystawić rachunek za usługi pomocy technicznej.', correct: false, question: question10
)
Answer.create(
  content: 'Podczas przeglądania Internetu pojawia się pilna wiadomość informująca o problemie z komputerem i przekierowująca na stronę internetową, na której można zapłacić za usługi pomocy technicznej.', correct: false, question: question10
)

# Dodaj więcej pytań i odpowiedzi według potrzeb

puts 'Utworzono pytania i odpowiedzi.'
