#!/bin/bash
git add .
echo "Enter Commit Message"
read Message
git commit -m "$Message"
git push
