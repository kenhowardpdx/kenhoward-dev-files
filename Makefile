.PHONY: publish

S3_BUCKET := kenhoward-dev

publish:
	s3cmd sync \
		--exclude="*" \
		--include="pages/*" \
		--include="posts/*" \
		--skip-existing \
		--delete-removed \
		./ \
		s3://${S3_BUCKET}

publish-force:
	s3cmd sync \
		--exclude="*" \
		--include="pages/*" \
		--include="posts/*" \
		--delete-removed \
		./ \
		s3://${S3_BUCKET}
