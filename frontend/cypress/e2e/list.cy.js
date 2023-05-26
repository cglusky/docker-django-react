/* eslint-disable */
describe('message test suite', () => {

  beforeEach(() => {
        cy.visit('/');
  });

  it('should see original todo', () => {
      cy.get('[data-cy="todo-list"]').contains('ORIGINAL TODO')
  });

  it('should add a new todo', () => {
      cy.get('[data-cy="todo-input"]').type('CYPRESS TEST TODO')
      cy.get('[data-cy="todo-submit-btn"]').click()
      cy.get('[data-cy="todo-list"]').contains('CYPRESS TEST TODO')
  });
})