describe('Prueba de regresión de Insertar una Hoja de ruta', () => {
    it('Debería permitir que llegue a registrar un nuevo hoja de ruta', () => {
      cy.visit('http://localhost/proyecto_final/view/sign-in.php');
  
      cy.get('input[name="logina"]').type('admin');
      cy.get('input[name="clavea"]').type('admin');
      cy.get('form').submit();
      cy.url().should('eq', 'http://localhost/proyecto_final/view/nose.php');
  
      cy.visit('http://localhost/proyecto_final/view/hoja_ruta.php');
  
      cy.get('#btnagregar').click();
  
      cy.wait(2000);
      // Hacer clic en el campo de fecha
    cy.get('input[name="fecharuta"]').click();   
    cy.get('.datepicker').should('be.visible');
    cy.get('.datepicker .date:contains("28")').click(); 
    cy.get('input[name="fecha"]').should('have.value', '28');
    cy.get('input[name="idderivacion"]').click().should('be.visible');
    cy.get('.lista-informar').contains('informar').click(); 
    cy.get('input[name="descripcionruta"]').type('Realizar Reunión').should('be.visible');
    cy.get('#btnGuardar').click();

    });
  });
  