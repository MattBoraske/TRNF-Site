# Normandy Farms Site

## Deployment with AWS Amplify

This project is configured to be deployed using AWS Amplify, which provides a simple and cost-effective way to host React applications.

### Deployment Steps

1. Push your code to a Git repository (GitHub, GitLab, BitBucket, etc.)
2. Log in to AWS Management Console and navigate to AWS Amplify
3. Click "New app" > "Host web app"
4. Connect to your Git provider and select this repository
5. Configure build settings (the default settings should work as this repo includes an amplify.yml file)
6. Review and deploy

### Custom Domain Setup

To configure a custom domain:
1. In the Amplify Console, select your app
2. Go to "Domain Management"
3. Follow the steps to add your domain and configure DNS

## Development

To run the project locally:

```bash
npm install
npm start
```

## To-Do
- Use actual domain (talk w/ Monica about ipower login)
- Look at email from Monica for content to add
