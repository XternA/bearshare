# Bearshare Docker 🐋

If you like this project, don't forget to leave a star. ⭐

### Containerized Docker image for [Bearshare](https://bearshare.app)

>**Note:** This is an unofficial build and comes with no warranty of any kind. By using this image you also agree to BearShare's T&C.

A simple Docker image for installing BearShare as a container with better support for both `ARM` and `x86`.

✨ This image also comes pre-bundled with [**Income Generator**](https://github.com/XternA/income-generator). A tool stack that consolidates and earns passive income from multiple sources.

# Usage
Define the following environment variable to bootstrap the image.

Variable | Description | Mandatory |
| :--- | :--- | :---: |
| EMAIL    | Your BearShare login email    | YES |
| PASSWORD | Your BearShare login password | YES |

# Docker Deployment 🐋
### Compose
File: `compose.yml`
```yaml
services:
  bearshare:
    container_name: bearshare
    image: xterna/bearshare
    restart: unless-stopped
    environment:
        - EMAIL=$EMAIL
        - PASSWORD=$PASSWORD
    dns:
        - 1.1.1.1
        - 8.8.8.8
```
```sh
docker compose up -d
```

### CLI
```markdown
docker run -d --restart unless-stopped --name bearshare -e EMAIL=<YOUR_EMAIL> -e PASSWORD=<YOUR_PASSWORD> xterna/bearshare
```
This will start the application in the background. The alias assigned is `bearshare`.

# Like my work?
Donations are warmly welcomed no matter how small and thank you very much. 😌
- **Bitcoin (BTC)** - `bc1qq993w3mxsf5aph5c362wjv3zaegk37tcvw7rl4`
- **Ethereum (ETH)** - `0x2601B9940F9594810DEDC44015491f0f9D6Dd1cA`
- **Binance (BNB)** - `bnb1dj3l3fp24z05vtwtjpaatjyz9sll4elu9lkjww`
- **Binance Smart Chain (BSC)** - `0x2601B9940F9594810DEDC44015491f0f9D6Dd1cA`
- **Solana (SOL)** - `Ap5aiAbnsLtR2XVJB3sp37qdNP5VfqydAgUThvdEiL5i`
- **PayPal** - [@xterna](https://paypal.me/xterna)

# Disclaimer :warning:
This docker image is not affiliated with or endorsed by Bearshare. Use it at your own risk and responsibility.

The author does not provide any assurances, whether explicit or implicit, regarding the accuracy, completeness, or appropriateness of this script for specific purposes. The author shall not be held accountable for any damages, including but not limited to direct, indirect, incidental, consequential, or special damages, arising from the use or inability to use this docker image or its accompanying documentation, even if the possibility of such damages has been communicated.

By choosing to utilize this docker image, you acknowledge and assume all risks associated with its use. Additionally, you agree that the author cannot be held liable for any issues or consequences that may arise as a result of its usage.