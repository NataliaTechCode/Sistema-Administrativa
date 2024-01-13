describe('Prueba de regresión de inicio de sesión', () => {
    it('Debería permitir a un usuario iniciar sesión correctamente', () => {
      cy.visit('http://localhost/sistema_doc_arqui/view/sign-in.php');
  
      // Ingresa el nombre de usuario
      cy.get('input[name="logina"]').type('admin');
  
      // Ingresa la contraseña
      cy.get('input[name="clavea"]').type('admin');
  
      // Envía el formulario
      cy.get('form').submit();
  
      // Espera a que se cargue la página de destino o realiza alguna aserción específica
      // Aquí, asumimos que se redirige a una página de inicio después del inicio de sesión.
      cy.url().should('eq', 'http://localhost/sistema_doc_arqui/view/nose.php');
  
    });
  });
  