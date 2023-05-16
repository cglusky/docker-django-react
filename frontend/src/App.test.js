import { render, screen } from '@testing-library/react';
import App from './App';

test('"Click me!" button in UI', () => {
  render(<App />);
  const buttonElement = screen.getByText(/Click me!/i);
  expect(buttonElement).toBeInTheDocument();
});
