# Vars
IMAGE=f1dz/karsajobs:latest

echo "======================================"
echo "| Build and push docker image script |"
echo "======================================\n"

# --------------------------------------------------------------------------------------------------------------------------
# 1. Perintah untuk build Docker image dari berkas Dockerfile yang disediakan 
#    dengan nama <username-docker>/karsajobs:latest (untuk backend) 
#    dan <username-docker>/karsajobs-ui:latest (untuk frontend).
# --------------------------------------------------------------------------------------------------------------------------

# Build docker image
echo "Build image"
echo "--------------------------"
docker build -t $IMAGE .
echo "\n"

# --------------------------------------------------------------------------------------------------------------------------
# 2. Perintah untuk login ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
#    Kita gunakan Guthub Package ya guys!
# --------------------------------------------------------------------------------------------------------------------------

# Login to Github
echo "Login to Github"
echo "-----------------------------------"
echo $GITHUB_TOKEN | docker login ghcr.io -u f1dz --password-stdin
echo "\n"

# --------------------------------------------------------------------------------------------------------------------------
# 3. Perintah untuk push image ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
# --------------------------------------------------------------------------------------------------------------------------

# Push image to Github Package
echo "Push image to Github Package"
echo "--------------------------"
docker push ghcr.io/$IMAGE
echo "\n"