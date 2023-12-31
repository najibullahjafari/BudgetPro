<a name="readme-top"></a>

<div align="center">
  <h3><b>BudgetPro</b></h3>
</div>

[![codecov](https://codecov.io/gh/cancelei/blog-in-rails/graph/badge.svg?token=ITBDQ9ZRO7)](https://codecov.io/gh/cancelei/blog-in-rails)

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 BudgetPro ](#ruby-on-rails-group-project)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
    - [🚀 Live Demo](#live-demo)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ (OPTIONAL) ](#-faq-optional-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 BudgetPro<a name="ruby-on-rails-group-project"></a>

**BudgetPro** 
The Ruby on Rails capstone project is about building a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.
You can see an introduction of this webpage in this [video](https://drive.google.com/file/d/1HqfuZXhdDsrbV3hWCkM7x45JzBIvJ8Sv/view?usp=sharing)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> So you want to lear more about the tech we have used for this project?

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Make use for migrations features from Active Record**
- **Include Tables for User, Categories and Transactions**

## 🚀 Live Demo <a name="live-demo"></a>

> If you would like to see this site on action click on the link below:

- [Live Demo Link](https://budget-8wcg.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.
Note: We are assuming you have pre-installed ruby, WSL, ubuntu and rails!

### Prerequisites

In order to run this project you need:

first at all, install rails:

```sh
 gem install rails
```

### Setup

Clone this repository to your desired folder:

```sh
git clone https://github.com/najibullahjafari/BudgetPro
```

### Install

Install this project with:

```sh
  bundle install
```

Setting up the Data Base:

```sh
  rails db:create
  rails db:migrate
  rails db:seed
```

### Usage

To run the project, execute the following command:

```sh
  rails server
```

### Run tests

<!-- Test are under construction, but we expect to have them completed soon! -->

Before running tests, ensure you've set up the test database:

```sh
bin/rails db:migrate RAILS_ENV=test
```

**Note:** Given that the aim of this project is to test the application's UI, to see if it works without side effects. We have therefore had to modify the contents of certain files, which could have the effect of falsifying certain `Unit` tests.
We therefore recommend that, rather than running all the tests, you only test the `features` folder.

```sh
bundle exec rspec ./spec/features

```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Install

Install this project with:

```sh
  cd RoR-group-project
  bundle install
```

Setting up the Data Base:

```sh
  rails db:create
  rails db:migrate
  rails db:seed
```

## 👥 Authors <a name="authors"></a>

👤 **Najibullah Jafari**

- GitHub: [Najibullah_jafari](https://github.com/najibullahjafari)
- Twitter: [Najibullah_jafari](https://twitter.com/Najib_Jafari_)
- LinkedIn: [Najibullah_jafari](https://www.linkedin.com/in/najibullahjafari/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> We this project can improve, we are planning to include the next features soon:

- [x] **User Interface**
- [x] **Validations**
- [x] **API documentation**
- [x] **Model Data**
- [x] **Controllers Testing**
- [x] **Models Testing**
- [x] **View Implementation**
- [x] **User Interface**
- [x] **Validations**
- [x] **API documentation**
- [x] **Model Data**
- [x] **Controllers Testing**
- [x] **Models Testing**
- [x] **View Implementation**
- [x] **Integration Testing**
- [x] **Unit Testing**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/najibullahjafari/BudgetPro/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Would you like to help?

If you like this project feel free to leave an star, as well if you have a suggestion feel free to visit issues page.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Gregoire Vella due to his effort with this great UI.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## ❓ FAQ (OPTIONAL) <a name="faq"></a>

> Learn more about FAQ below:

- **How do I fix Linters errors if I modify the project?**

  - for rubocop run

  ```sh
  rubocop -A
  ```

  - for Stylint run:

  ```sh
  npx stylelint "**/*.{css,scss}" --fix
  ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
