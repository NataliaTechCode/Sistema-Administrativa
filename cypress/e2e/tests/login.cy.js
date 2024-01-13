describe('Prueba de regresión de inicio de sesión', () => {
    it('Debería permitir a un usuario iniciar sesión correctamente, ademas se le pasa datos incorrectos al inicio para la validacion, tambien se probaron nulos y luego se probaron datos correctos para ingresar al sistema', () => {
      cy.visit('http://localhost/proyecto_final/view/sign-in.php');
  
      cy.get('input[name="logina"]').type('prueba');
      cy.get('input[name="clavea"]').type('prueba');
      cy.get('form').submit();
      cy.get('.swal2-confirm').click();
      cy.get('input[name="logina"]').clear().type('prueba');
      cy.get('input[name="clavea"]').clear();
      cy.get('form').submit();
      cy.get('.swal2-confirm').click();
      cy.get('input[name="logina"]').clear().type('admin');
      cy.get('input[name="clavea"]').clear().type('admin');
      cy.get('form').submit();

      cy.url().should('eq', 'http://localhost/proyecto_final/view/nose.php');
  
    });
  });
  