# Loan Application

This application aims to provide a secure and reliable loan service, specifically designed to meet the financial needs of elderly individuals. Our main focus is ensuring the safety and well-being of our customers by offering them a smooth and accessible experience for obtaining loans.

### How to Use the Application on the Backend

Make sure you have Node.js installed on your machine.

Clone this repository to your local environment.

```
git clone https://github.com/ZeroRaven23/nest-Backend
```

Navigate to the project directory.

```
cd nome-do-repositorio
```

Install the project dependencies.

```
yarn install
```

To start the project:

```
nest start
localhost:3000/api
```

If you want to test it on AWS:

```
http://18.220.45.222:3000/api
```

# Use Cases

We have a strict policy where we separate elderly users from those below 80 years of age, providing them with special treatment and care. To ensure that the loan is fully repaid, we require the involvement of a close relative with a legal relationship to the elderly individual. Additionally, the relative must also have an account in our application to ensure complete security.

User creation is based on their debt information, which is obtained through integration with Serasa. However, it is important to note that this integration with Serasa was simulated, and we did not have full access to actual Serasa data due to a lack of official authorization. Based on the information obtained, we have developed our own scoring system and offer loans based on this data.

Our goal is to provide loans with security and reliability, taking into account the specific situation of elderly individuals and ensuring that all parties involved are protected.

# Design Patterns (Backend)

- Decorators
- Singleton
- Factory

# External Packages (Backend)

- NestJs
- Nodemailer
- Prisma

# Architecture Used (Backend)

- Hexagonal Architecture
- Modular
