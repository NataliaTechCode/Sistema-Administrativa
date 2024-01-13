describe('Prueba de regresión de activacion de un usuario personal', () => {
    it('Debería permitir cambiar el estado de un usuario en concreto la activacion', () => {
      cy.visit('http://localhost/proyecto_final/view/sign-in.php');
  
      cy.get('input[name="logina"]').type('admin');
      cy.get('input[name="clavea"]').type('admin');
      cy.get('form').submit();
      cy.url().should('eq', 'http://localhost/proyecto_final/view/nose.php');
  
      cy.visit('http://localhost/proyecto_final/view/user_personal.php');
  
      cy.get('#2').click();
      cy.get('.swal2-confirm').click();
      cy.get('.swal2-confirm').click();


    });
  });
  