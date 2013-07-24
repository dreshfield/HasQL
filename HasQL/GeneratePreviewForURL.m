#include <CoreFoundation/CoreFoundation.h>
#include <CoreServices/CoreServices.h>
#include <QuickLook/QuickLook.h>
#import <Cocoa/Cocoa.h>

OSStatus GeneratePreviewForURL(void *thisInterface, QLPreviewRequestRef preview, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options);
void CancelPreviewGeneration(void *thisInterface, QLPreviewRequestRef preview);

/* -----------------------------------------------------------------------------
   Generate a preview for file

   This function's job is to create preview for designated file
   ----------------------------------------------------------------------------- */

OSStatus GeneratePreviewForURL(void *thisInterface, QLPreviewRequestRef preview, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options)
{
    @autoreleasepool {
        NSError *error = nil;
        NSURL *hs2URL = (__bridge NSURL *)url;
        
        // Load document data
        NSStringEncoding hsEncoding;
        NSString *hsString = [NSString stringWithContentsOfURL:hs2URL usedEncoding:&hsEncoding error:&error];
        // Try ISO-8859-1 if encoding can't be determined
        if (!hsString) {
            hsEncoding = NSISOLatin1StringEncoding;
            hsString = [NSString stringWithContentsOfURL:hs2URL encoding:hsEncoding error:&error];
            // Throw error if fallback fails
            if (!hsString) {
                if (nil !=error) {
                    NSLog(@"Error opening %@", error);
                }
                return noErr;
            }
        }
    
        if (false == QLPreviewRequestIsCancelled(preview)) {
            // NSBundle *hsBundle = [NSBundle bundleWithIdentifier:hsString];
            CFDictionaryRef properties = (__bridge CFDictionaryRef)@{};
            QLPreviewRequestSetDataRepresentation(preview, (__bridge CFDataRef)[hsString dataUsingEncoding:hsEncoding], kUTTypeSourceCode, properties);
        }
    return noErr;
    }
}

void CancelPreviewGeneration(void *thisInterface, QLPreviewRequestRef preview)
{
    // Implement only if supported
}
