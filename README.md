# Bearshare Docker 🐳

[![Static Badge](https://img.shields.io/badge/GitHub-blue?style=flat&logo=github)](https://github.com/XternA/bearshare)
[![Static Badge](https://img.shields.io/badge/License-purple?style=flat&logo=github)](https://github.com/XternA/bearshare?tab=License-1-ov-file)
![Docker Image Version (tag)](https://img.shields.io/docker/v/xterna/bearshare/latest?style=flat&logo=opencontainersinitiative&label=Image%20Tag&color=green)
[![Docker Stars](https://img.shields.io/docker/stars/xterna/bearshare?logo=docker&label=Docker%20Stars)](https://hub.docker.com/r/xterna/bearshare)
[![GitHub Repo stars](https://img.shields.io/github/stars/XternA/bearshare?style=flat&logo=github&label=Stars&color=orange)](https://github.com/XternA/bearshare)
[![Donate](https://img.shields.io/badge/Donate-PayPal-blue.svg?style=flat&logo=paypal)](https://www.paypal.com/donate/?hosted_button_id=32DCQ65QM5FNE)

If you like this project, don't forget to leave a star. ⭐

### Containerized Docker image for [Bearshare](https://bit.ly/4g7PmCs) 🐻

>**Note:** This is an unofficial build and comes with no warranty of any kind. By using this image you also agree to BearShare's T&C.

A simple Docker image for installing Bearshare as a container with better compatibility on `ARM` and `x86`.

✨ This image also comes pre-configured and bundled with [**Income Generator**](https://github.com/XternA/income-generator). A tool which consolidates and earns passive income from multiple sources.

## Usage
Define the following environment variable to bootstrap the image.

Variable | Description | Mandatory |
| :--- | :--- | :---: |
| EMAIL    | Your BearShare login email    | YES |
| PASSWORD | Your BearShare login password | YES |

## Docker Deployment 🐳
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

## Like my work?
Donations are warmly welcomed no matter how small and thank you very much. 😌
- **Bitcoin (BTC)** - `bc1qq993w3mxsf5aph5c362wjv3zaegk37tcvw7rl4`
- **Ethereum (ETH)** - `0x2601B9940F9594810DEDC44015491f0f9D6Dd1cA`
- **Binance (BNB)** - `bnb1dj3l3fp24z05vtwtjpaatjyz9sll4elu9lkjww`
- **Binance Smart Chain (BSC)** - `0x2601B9940F9594810DEDC44015491f0f9D6Dd1cA`
- **Solana (SOL)** - `Ap5aiAbnsLtR2XVJB3sp37qdNP5VfqydAgUThvdEiL5i`
- **PayPal** - [@xterna](https://paypal.me/xterna)

## Disclaimer ⚠️
This docker image is not affiliated with or endorsed by Bearshare. Use it at your own risk and responsibility.

The author does not provide any assurances, whether explicit or implicit, regarding the accuracy, completeness, or appropriateness of this script for specific purposes. The author shall not be held accountable for any damages, including but not limited to direct, indirect, incidental, consequential, or special damages, arising from the use or inability to use this docker image or its accompanying documentation, even if the possibility of such damages has been communicated.

By choosing to utilize this docker image, you acknowledge and assume all risks associated with its use. Additionally, you agree that the author cannot be held liable for any issues or consequences that may arise as a result of its usage.