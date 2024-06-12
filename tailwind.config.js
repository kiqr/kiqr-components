/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/components/**/*.{rb,erb,html}"],
  theme: {
    extend: {},
  },
  plugins: [],
  safelist: ["kiqr-body-classes"],
};
