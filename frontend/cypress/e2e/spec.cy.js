/* eslint-disable */
describe('main app test suite', () => {

  beforeEach(() => {
        cy.visit('/');
  });

  it('should render a button', () => {
    cy.get('button').should('exist')
    cy.get('not-here').should('exist')
  });

  it('should toggle the message', () => {
      cy.get('[data-cy="test-message"]').should('not.exist')
      cy.get('button').click()
      cy.get('[data-cy="test-message"]').should('exist')
  });
})