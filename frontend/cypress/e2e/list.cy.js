/* eslint-disable */
describe('message test suite', () => {

  beforeEach(() => {
        cy.visit('/');
  });

  it('should still render a button', () => {
    cy.get('button').should('exist')
  });

  it('should see original todo', () => {
      cy.get('[data-cy="todo-list"]').contains('TEST TODO ITEM')
  });

  it('should add a new todo', () => {
      cy.get('[data-cy="todo-input"]').type('CYPRESS TEST TODO ITEM')
      cy.get('[data-cy="todo-submit-btn"]').click()
      cy.get('[data-cy="todo-list"]').contains('CYPRESS TEST TODO ITEM')
  });
})