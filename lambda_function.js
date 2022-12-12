const AWS = require('aws-sdk');

const s3 = new AWS.S3({
    accessKeyId: 'ACCESS_KEY_ID',
    secretAccessKey: 'SECRET_ACCESS_KEY'
});

async function shrinkImage(srcBucket, srcKey, destBucket, destKey) {
    // Download the image from the source bucket
    const response = await s3.getObject({
        Bucket: srcBucket,
        Key: srcKey
    }).promise();

    // Shrink the image using the Sharp module
    const image = sharp(response.Body);
    const resizedImage = await image.resize({ width: 50 }).toBuffer();

    // Upload the resized image to the destination bucket
    await s3.putObject({
        Bucket: destBucket,
        Key: destKey,
        Body: resizedImage
    }).promise();
}

// In this example, the shrinkImage function takes four parameters: the source bucket,
// the source key (i.e. the name of the image file), the destination bucket, and the
// destination key. It uses the AWS SDK for JavaScript to download the image from the
// source bucket, shrink it using the Sharp module, and then upload the resized image
// to the destination bucket.