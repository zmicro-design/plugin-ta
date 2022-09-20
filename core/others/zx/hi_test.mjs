import { hi } from './hi.mjs';

describe('test_hi', () => {
  it('should return hi zero', () => {
    expect(hi()).toBe('hi zero');
  });
})
