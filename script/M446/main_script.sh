# Stellen Sie sicher, dass die AWS CLI installiert ist
# und konfiguriert wurde, um Zugriff auf Ihr AWS-Konto zu haben.


#Benutzer kann den ersten Bucket anlegen
echo "Geben Sie den Namen des ersten S3-Buckets ein: "
read bucket_name

aws s3 mb s3://$bucket_name

# Benutzer kann zweiten Bucket anlegen
echo "Geben Sie den Namen des zweiten S3-Buckets ein: "
read bucket_name

aws s3 mb s3://$bucket_name

# Definieren Sie den Namen der Eingabe- und Ausgabedatei
input_file="input.jpg"
output_file="output.jpg"


# Hochladen des Bildes in den ersten S3-Bucket
aws s3 cp $input_file s3://$first_bucket_name/$input_file


# Der name der Lambdafunktion
function_name="lambdafunktion.sh"



# Lambdafunktion wird aufgerufen und das ergebniss in den zweiten bucket gelegt.
aws lambda invoke --function-name $function_name --payload '{"input_bucket":"'$first_bucket_name'", "input_file":"'$input_file'", "output_bucket":"'$second_bucket_name'", "output_file":"'$output_file'"}' output.json

# Geben Sie das Ergebnis der Lambda-Funktion auf der Konsole aus
cat output.jpg

# Liste aller S3-Buckets
bucket_list=$(aws s3 ls | awk '{print $3}')

