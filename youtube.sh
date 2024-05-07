YOUTUBE_API_KEY=$YOUTUBE_API_KEY

VIDEOIDS=$(curl -s "https://youtube.googleapis.com/youtube/v3/search?part=snippet&maxResults=21&type=video&videoDuration=short&q=dont%20complain&key=$YOUTUBE_API_KEY" --header 'Accept: application/json' --compressed | jq -r '.items[].id.videoId')

VIDEOURLS=$(for VI in $VIDEOIDS; do echo "https://www.youtube.com/watch?v=$VI"; done)
for URL in $VIDEOURLS; do
	echo $URL
done

CALENDARID=danielhallinan88@gmail.com

