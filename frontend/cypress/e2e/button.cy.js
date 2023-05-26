/* eslint-disable */
describe('button test suite', () => {

  beforeEach(() => {
        cy.visit('/');
  });

  it('should render a button', () => {
    cy.get('button').should('exist')
  });

})