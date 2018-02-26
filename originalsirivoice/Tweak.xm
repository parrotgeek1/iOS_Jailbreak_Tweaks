// thx @Thmitt

%hook VSSpeechRequest
-(void)setUseCustomVoice:(bool)arg1 {
	%orig(false);
}
%end