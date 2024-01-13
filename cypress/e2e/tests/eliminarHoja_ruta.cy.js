describe('Prueba de regresión de desactivar hoja de ruta', () => {
    it('Debería permitir cambiar el estado de una hoja de ruta en concreto la activacion a desactivacion', () => {
      cy.visit('http://localhost/proyecto_final/view/sign-in.php');
    
      cy.get('input[name="logina"]').type('admin');
      cy.get('input[name="clavea"]').type('admin');
      cy.get('form').submit();
      cy.url().should('eq', 'http://localhost/proyecto_final/view/nose.php');
  
      cy.visit('http://localhost/proyecto_final/view/hoja_ruta.php');
  
      cy.get('button').eq(2).click();
      // Hacer clic en el campo de fecha y en el botón de calendario
        cy.get('input[name="fecharuta"]').click(); // Hacer clic en el campo de fecha
        cy.get('button.icono-calendario').click(); // Hacer clic en el botón de calendario (ajusta el selector según tu aplicación)

      cy.get('input[name="descripcionruta"]').type('Realizar prueba').should('be.visible');
      cy.get('#btnGuardar').click();

     
    
    });
  });
  