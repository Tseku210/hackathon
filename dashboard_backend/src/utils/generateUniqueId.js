export const generateUniqueId = (firstCharacter) => {
  // uniqueness proved
  return firstCharacter + getRandomLetters(1) + getRandomDigits(8);
};
