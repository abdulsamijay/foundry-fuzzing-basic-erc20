# Basic fuzzing example with foundry for ERC-20 token

## Getting Started

This is an example of how you may test your contract by fuzzing or making use of property-based testing using foundry.

### Prerequisites

You will need to install foundry for running the example. Link for installtion [foundry](https://github.com/foundry-rs/foundry).

### How to setup project

You can setup the project for testing by following the steps below.

1. Clone the repo
   ```sh
   git clone https://github.com/abdulsamijay/foundry-fuzzing-basic-erc20.git
   ```
2. Build the example to install all packages
   ```sh
   forge build
   ```
3. Run the test
   ```sh
   forge test -vvvv
   ```

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## More examples

_For more references, please refer to the [Foundry Documentation](https://book.getfoundry.sh/)_