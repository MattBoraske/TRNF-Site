#!/bin/bash

echo "Cleaning up repository for AWS Amplify deployment..."

# Remove Docker related files
echo "Removing Docker related files..."
rm -f Dockerfile
rm -f docker-compose.yaml
rm -f nginx.conf

# Remove ECS/ECR deployment scripts
echo "Removing ECS/ECR deployment scripts..."
rm -f push-to-ecr.sh
rm -f fixed-task-definition.json
rm -f fixed-task-definition-v2.json
rm -f fixed-task-definition-v3.json
rm -f check-service.sh
rm -f userdata-ecs-fix.sh
rm -f ssh-fix-ecs.sh
rm -f deploy-optimized.sh
rm -f deploy-step-by-step.sh
rm -f debug-deploy.sh
rm -f diagnose-ecs.sh
rm -f fix-instance.sh
rm -f deploy-with-alb.sh
rm -f cleanup-security-groups.sh
rm -f force-cleanup.sh
rm -f cleanup-ecs-cluster.sh
rm -f trnf-key.pem

# Remove AWS directory with EC2/ECS configuration files
echo "Removing the aws/ directory with EC2/ECS configuration files..."
rm -rf aws/

echo "Cleanup complete! Your repository is now ready for AWS Amplify deployment."
echo "Remember to commit these changes to your repository." 