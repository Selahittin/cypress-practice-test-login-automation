describe('Login Test', () => {
    it('Should login successfully with valid credentials', () => {
        // Test edilen siteye git
        cy.visit('https://practicetestautomation.com/practice-test-login/');

        // Kullanıcı adı ve şifre alanlarını doldur
        cy.get('#username').type('student'); // Doğru kullanıcı adı
        cy.get('#password').type('Password123'); // Doğru şifre

        // Login butonuna tıkla
        cy.get('#submit').click();

        // Başarılı giriş sonrası URL doğrulama
        cy.url().should('include', '/logged-in-successfully/');

        // Başarılı giriş mesajını kontrol et
        cy.contains('Congratulations').should('be.visible');
    });
});
