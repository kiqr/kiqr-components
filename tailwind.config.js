/** @type {import('tailwindcss').Config} */

const plugin = require("tailwindcss/plugin");

module.exports = {
  content: ["./app/components/**/*.{rb,erb,html}"],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Poppins"],
      },
      colors: {
        background: "var(--color-background)",
        border: "var(--color-border)",
        text: "var(--color-text)",
        surface: "var(--color-surface)",
        primary: "var(--color-primary)",
        light: "var(--color-light)",
        button: "var(--color-button)",
        "button-text": "var(--color-button-text)",
        "surface-hover": "var(--color-surface-hover)",
      },
      borderColor: {
        DEFAULT: "var(--color-border)",
      },
      container: {
        center: true,
        screens: {
          DEFAULT: "1200px",
        },
        padding: {
          DEFAULT: "1.5em",
        },
      },
      typography: {
        DEFAULT: {
          css: {
            maxWidth: "100%",
          },
        },
      },
    },
  },
  plugins: [
    plugin(function ({ addBase }) {
      addBase({
        html: { fontSize: "13.5px" },
      });
    }),
  ],
};
