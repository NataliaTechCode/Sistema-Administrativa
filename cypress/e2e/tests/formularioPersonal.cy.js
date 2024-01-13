describe('Prueba de regresión de Inserción de Estudiante', () => {
    it('Debería permitir a un usuario llenar el formulario y guardar un estudiante', () => {
      cy.visit('http://localhost/proyecto_final/view/sign-in.php');
  
      cy.get('input[name="logina"]').type('admin');
      cy.get('input[name="clavea"]').type('admin');
      cy.get('form').submit();
      cy.url().should('eq', 'http://localhost/proyecto_final/view/nose.php');
  
      cy.visit('http://localhost/proyecto_final/view/user_personal.php');
  
      cy.get('#btnagregar').click();
  
      cy.get('input[name="nombre"]').type('Alvaro Fernandez Vargas');
      cy.get('input[name="email"]').type('correorealnosequeponeraaa@gmail.com');
      cy.get('input[name="num_documento"]').type('14231393');
      cy.get('input[name="telefono"]').type('65432101');
      cy.get('input[name="direccion"]').type('calle falsa 123');
      cy.get('input[name="login"]').type('nombredeusuario');
      cy.get('input[name="clave"]').type('contraseña');
      cy.get('#btnGuardar').click();
      cy.get('.swal2-confirm').click();
      cy.get('#3').click();
      cy.get('input[name="nombre"]').clear().type('Prueba de que puede editar');
      cy.get('#btnGuardar').click();
      cy.get('.swal2-confirm').click();

    });
  });
  