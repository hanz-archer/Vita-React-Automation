# MERN Setup Automation Script

This repository contains a batch script designed to automate the initial setup for a MERN (MongoDB, Express, React, Node.js) stack project. The script simplifies project initialization by handling directory creation, Vite React setup, Tailwind CSS configuration, and placeholder file generation to streamline development.

## Features
- **Automated Directory Creation**: Creates `backend`, `frontend`, and organized subdirectories under `src` (`components`, `pages`, `utils`).
- **Vite React Initialization**: Sets up a Vite project for React with JavaScript and installs necessary dependencies.
- **File Structure**: Generates subfolders such as `common`, `layouts`, `login`, `signup`, and `home` with placeholder `.jsx` or `.js` files prefilled with the `rafce` template.
- **Tailwind CSS Integration**: Installs and configures Tailwind CSS for styling, including a customized `tailwind.config.js` and Tailwind directives in `index.css`.
- **Streamlined Workflow**: Automates `npm install` and sets up the development server after project initialization.

## Requirements
- [Node.js](https://nodejs.org/) and NPM installed.
- Vite CLI (`npm create vite@latest`) globally available.
- Tailwind CSS CLI for configuration.

## How to Use
1. Clone this repository or download the script.
2. Run the script in a terminal or command prompt:
   ```batch
   setup.bat
