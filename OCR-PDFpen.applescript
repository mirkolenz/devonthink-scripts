on run
	tell application id "DNtp"
		set _records to selection
		repeat with _record in _records
			set _file to path of _record
			tell application "PDFpenPro"
				open (POSIX file _file) as alias
				tell document 1
					if needs ocr then
						ocr
						repeat while performing ocr
							delay 1
						end repeat
						delay 1
						close with saving
					else
						close without saving
					end if
				end tell
			end tell
		end repeat
	end tell
end run
