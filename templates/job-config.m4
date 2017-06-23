  publish_image_IMAGE_NAME:
    machine: true
    working_directory: ~/dockerfiles
    steps:
    - checkout
    - run: docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
    - run:
        name: build and deploy containers
        command: |
          script/generate-image-named IMAGE_NAME
          script/deploy-image-named IMAGE_NAME
