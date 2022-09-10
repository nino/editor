module.exports = {
  purge: {
    // Specify the paths to all of the template files in your project
    content: [
      './src/components/**/*.res',
      './src/layouts/**/*.res',
      './src/*.res',
    ],
    options: {
      safelist: ["html", "body"],
    }
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
  },
  variants: {
  },
  plugins: []
}
