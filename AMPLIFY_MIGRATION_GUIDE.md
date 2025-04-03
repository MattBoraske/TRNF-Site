# AWS Amplify Migration Guide

This guide provides step-by-step instructions for migrating this React application from ECS/ECR to AWS Amplify.

## 1. Clean Up Repository

Run the cleanup script to remove Docker/ECS/ECR related files:

```bash
./cleanup-for-amplify.sh
```

## 2. Set Up AWS Amplify Console

1. **Log in to AWS Management Console**
   - Go to the [AWS Management Console](https://aws.amazon.com/console/)
   - Navigate to the AWS Amplify service

2. **Create a New App**
   - Click "New app" > "Host web app"
   - Connect to your Git provider (GitHub, BitBucket, GitLab, etc.)
   - Authorize AWS Amplify to access your repository
   - Select the repository and branch to deploy

3. **Configure Build Settings**
   - The repository includes an `amplify.yml` file which should be automatically detected
   - Review the build settings and ensure they match your environment
   - Click "Next" and then "Save and deploy"

## 3. Custom Domain Setup

1. **Add Custom Domain**
   - In the Amplify Console, select your app
   - Go to "Domain Management"
   - Click "Add domain"
   - Enter your domain name and click "Configure domain"

2. **DNS Configuration**
   - Follow the instructions provided to update your DNS records
   - This typically involves adding CNAME records to point to your Amplify app

3. **SSL/TLS Certificate**
   - AWS Amplify will automatically provision an SSL/TLS certificate for your domain
   - Wait for the certificate to be issued and validated (can take up to 24 hours)

## 4. Redirects and Rewrites

The repository includes a `redirects.json` file that configures basic URL handling, ensuring that client-side routing works correctly. If you need additional redirects:

1. Go to your app in the Amplify Console
2. Navigate to "Rewrites and redirects" 
3. Add any additional rules as needed

## 5. Environment Variables (If Needed)

If your application uses environment variables:

1. Go to your app in the Amplify Console
2. Navigate to "Environment variables"
3. Add your environment variables here
4. Redeploy your application

## 6. Continuous Deployment

AWS Amplify automatically sets up continuous deployment from your Git repository. Whenever you push changes to your configured branch, Amplify will automatically build and deploy your application.

## 7. Monitoring and Troubleshooting

- **Access Logs**: Available in the Amplify Console under "Access Logs"
- **Build Logs**: Available in the Amplify Console for each deployment
- **CloudWatch Metrics**: Available for monitoring application performance

## Cost Comparison

AWS Amplify is generally more cost-effective for static websites and single-page applications compared to the EC2/ECS/ECR approach:

- **Amplify Hosting**: Pay only for what you use, typically a few dollars per month
- **ECS/EC2**: Requires running EC2 instances continuously, even during low traffic periods

## Additional Resources

- [AWS Amplify Documentation](https://docs.aws.amazon.com/amplify/)
- [AWS Amplify Hosting Features](https://aws.amazon.com/amplify/hosting/)
- [Custom Domain Setup](https://docs.aws.amazon.com/amplify/latest/userguide/custom-domains.html) 