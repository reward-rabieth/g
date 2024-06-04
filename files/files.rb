#!/usr/bin/env ruby
require 'sinatra'

get '/photo.jpg' do
  # Sinatra sets content-type and length automatically based on the file
	send_file 'derek.jpg', disposition: :attachment, filename: 'custom-name.jpg'
end

get '/hello.pdf' do
  content_type 'application/pdf'
  APDF
end

APDF = <<-END
%PDF-1.0
%µ¶
1 0 obj
<</Type/Catalog/Pages 2 0 R>>
endobj
2 0 obj
<</Kids[3 0 R]/Count 1/Type/Pages/MediaBox[0 0 595 792]>>
endobj
3 0 obj
<</Type/Page/Parent 2 0 R/Contents 4 0 R/Resources<<>>>>
endobj
4 0 obj
<</Length 58>>
stream
q
BT
/ 96 Tf
1 0 0 1 36 684 Tm
(Hello!) Tj
ET
Q
endstream
endobj
xref
0 5
0000000000 65536 f 
0000000016 00000 n 
0000000062 00000 n 
0000000136 00000 n 
0000000209 00000 n 
trailer
<</Size 5/Root 1 0 R>>
startxref
316
%%EOF
END
