#include <opencv2/videoio/UVCCameraControl.h>


const uvc_controls_t uvc_controls = {
	.autoExposure = {
		.unit = UVC_INPUT_TERMINAL_ID,
		.selector = 0x02,
		.size = 1,
	},
	.exposure = {
		.unit = UVC_INPUT_TERMINAL_ID,
		.selector = 0x04,
		.size = 4,
	},
	.brightness = {
		.unit = UVC_PROCESSING_UNIT_ID,
		.selector = 0x02,
		.size = 2,
	},
	.contrast = {
		.unit = UVC_PROCESSING_UNIT_ID,
		.selector = 0x03,
		.size = 2,
	},
	.gain = {
		.unit = UVC_PROCESSING_UNIT_ID,
		.selector = 0x04,
		.size = 2,
    },
    .focus = {
        .unit = UVC_INPUT_TERMINAL_ID,
        .selector = 0x06, // CT_FOCUS_ABSOLUTE_CONTROL
        .size = 2,
    },
	.saturation = {
		.unit = UVC_PROCESSING_UNIT_ID,
		.selector = 0x07,
		.size = 2,
    },
    .autoFocus = {
        .unit = UVC_INPUT_TERMINAL_ID,
        .selector = 0x08, // CT_FOCUS_AUTO_CONTROL
        .size = 1,
    },
	.sharpness = {
		.unit = UVC_PROCESSING_UNIT_ID,
		.selector = 0x08,
		.size = 2,
	},
	.whiteBalance = {
		.unit = UVC_PROCESSING_UNIT_ID,
		.selector = 0x0A,
		.size = 2,
	},
	.autoWhiteBalance = {
		.unit = UVC_PROCESSING_UNIT_ID,
		.selector = 0x0B,
		.size = 1,
	},
    /* Camer Terminal Control
     
    .CT_SCANNING_MODE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x01,
        .size=1,
    },
    .CT_AE_MODE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x02,
        .size=1,
    },
    .CT_AE_PRIORITY_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x03,
        .size=1,
    },
    .CT_EXPOSURE_TIME_ABSOLUTE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x04,
        .size=1,
    },
    .CT_EXPOSURE_TIME_RELATIVE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x05,
        .size=1,
    },
    .CT_FOCUS_ABSOLUTE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x06,
        .size=1,
    },
    .CT_FOCUS_RELATIVE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x07,
        .size=1,
    },
    .CT_FOCUS_AUTO_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x08,
        .size=1,
    },
    .CT_IRIS_ABSOLUTE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x09,
        .size=1,
    },
    .CT_IRIS_RELATIVE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x0A,
        .size=1,
    },
    .CT_ZOOM_ABSOLUTE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x0B,
        .size=1,
    },
    .CT_ZOOM_RELATIVE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x0C,
        .size=1,
    },
    .CT_PANTILT_ABSOLUTE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x0D,
        .size=1,
    },
    .CT_PANTILT_RELATIVE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x0E,
        .size=1,
    },
    .CT_ROLL_ABSOLUTE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x0F,
        .size=1,
    },
    .CT_ROLL_RELATIVE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x10,
        .size=1,
    },
    .CT_PRIVACY_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x11,
        .size=1,
    },
    .CT_FOCUS_SIMPLE_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x12,
        .size=1,
    },
    .CT_WINDOW_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x13,
        .size=1,
    },
    .CT_REGION_OF_INTEREST_CONTROL = {
        .unit =UVC_PROCESSING_UNIT_ID,
        .selector = 0x14,
        .size=1,
    },
    */
    /* Processing Unit
     
     PU_CONTROL_UNDEFINED                       0x00
     PU_BACKLIGHT_COMPENSATION_CONTROL          0x01
     PU_BRIGHTNESS_CONTROL                      0x02
     PU_CONTRAST_CONTROL                        0x03
     PU_GAIN_CONTROL                            0x04
     PU_POWER_LINE_FREQUENCY_CONTROL            0x05
     PU_HUE_CONTROL                             0x06
     PU_SATURATION_CONTROL                      0x07
     PU_SHARPNESS_CONTROL                       0x08
     PU_GAMMA_CONTROL                           0x09
     PU_WHITE_BALANCE_TEMPERATURE_CONTROL       0x0A
     PU_WHITE_BALANCE_TEMPERATURE_AUTO_CONTROL  0x0B
     PU_WHITE_BALANCE_COMPONENT_CONTROL         0x0C
     PU_WHITE_BALANCE_COMPONENT_AUTO_CONTROL    0x0D
     PU_DIGITAL_MULTIPLIER_CONTROL              0x0E
     PU_DIGITAL_MULTIPLIER_LIMIT_CONTROL        0x0F
     PU_HUE_AUTO_CONTROL                        0x10
     PU_ANALOG_VIDEO_STANDARD_CONTROL           0x11
     PU_ANALOG_LOCK_STATUS_CONTROL              0x12
     PU_CONTRAST_AUTO_CONTROL                   0x13
     */
    /* Encoding Unit
     
     EU_CONTROL_UNDEFINED
     0x00
     EU_SELECT_LAYER_CONTROL
     0x01
     EU_PROFILE_TOOLSET_CONTROL
     0x02
     EU_VIDEO_RESOLUTION_CONTROL
     0x03
     EU_ MIN_FRAME_INTERVAL_CONTROL
     0x04
     EU_ SLICE_MODE_CONTROL
     0x05
     EU_RATE_CONTROL_MODE_CONTROL
     0x06
     EU_AVERAGE_BITRATE_CONTROL
     0x07
     EU_CPB_SIZE_CONTROL
     0x08
     EU_PEAK_BIT_RATE_CONTROL
     0x09
     EU_QUANTIZATION_PARAMS_CONTROL
     0x0A
     EU_SYNC_REF_FRAME_CONTROL
     0x0B
     EU_LTR_BUFFER_ CONTROL
     0x0C
     EU_LTR_PICTURE_CONTROL
     0x0D
     EU_LTR_VALIDATION_CONTROL
     0x0E
     EU_LEVEL_IDC_LIMIT_CONTROL
     0x0F
     EU_SEI_PAYLOADTYPE_CONTROL
     0x10
     EU_QP_RANGE_CONTROL
     0x11
     EU_PRIORITY_CONTROL
     0x12
     EU_START_OR_STOP_LAYER_CONTROL
     0x13
     EU_ERROR_RESILIENCY_CONTROL
     0x14
     */
    
    /* Video Class-Specific VC Interface Descriptor Subtypes

     VC_DESCRIPTOR_UNDEFINED
     0x00
     VC_HEADER
     0x01
     VC_INPUT_TERMINAL
     0x02
     VC_OUTPUT_TERMINAL
     0x03
     VC_SELECTOR_UNIT
     0x04
     VC_PROCESSING_UNIT
     0x05
     VC_EXTENSION_UNIT
     0x06
     VC_ENCODING_UNIT
     0x07
     */
    
    /* Video Class-Specific VS Interface Descriptor Subtypes
     
     VS_INPUT_HEADER
     0x01
     VS_OUTPUT_HEADER
     0x02
     VS_STILL_IMAGE_FRAME
     0x03
     VS_FORMAT_UNCOMPRESSED
     0x04
     VS_FRAME_UNCOMPRESSED
     0x05
     VS_FORMAT_MJPEG
     0x06
     VS_FRAME_MJPEG
     0x07
     Reserved
     0x08
     Reserved
     0x09
     VS_FORMAT_MPEG2TS
     0x0A
     Reserved
     0x0B
     VS_FORMAT_DV
     0x0C
     VS_COLORFORMAT
     0x0D
     Reserved
     0x0E
     Reserved
     0x0F
     VS_FORMAT_FRAME_BASED
     0x10
     VS_FRAME_FRAME_BASED
     0x11
     VS_FORMAT_STREAM_BASED
     0x12
     VS_FORMAT_H264
     0x13
     VS_FRAME_H264
     0x14
     VS_FORMAT_H264_SIMULCAST
     0x15
     VS_FORMAT_VP8
     0x16
     VS_FRAME_VP8
     0x17
     VS_FORMAT_VP8_SIMULCAST
     0x18
     */
};


@implementation UVCCameraControl


- (id)initWithLocationID:(UInt32)locationID {
	if( self = [super init] ) {
		interface = NULL;
		
		// Find All USB Devices, get their locationId and check if it matches the requested one
		CFMutableDictionaryRef matchingDict = IOServiceMatching(kIOUSBDeviceClassName);
		io_iterator_t serviceIterator;
		IOServiceGetMatchingServices( kIOMasterPortDefault, matchingDict, &serviceIterator );
		
		io_service_t camera;
		while( (camera = IOIteratorNext(serviceIterator)) ) {
			// Get DeviceInterface
			IOUSBDeviceInterface **deviceInterface = NULL;
			IOCFPlugInInterface	**plugInInterface = NULL;
			SInt32 score;
			kern_return_t kr = IOCreatePlugInInterfaceForService( camera, kIOUSBDeviceUserClientTypeID, kIOCFPlugInInterfaceID, &plugInInterface, &score );
			if( (kIOReturnSuccess != kr) || !plugInInterface ) {
				NSLog( @"CameraControl Error: IOCreatePlugInInterfaceForService returned 0x%08x.", kr );
				continue;
			}
			
			HRESULT res = (*plugInInterface)->QueryInterface(plugInInterface, CFUUIDGetUUIDBytes(kIOUSBDeviceInterfaceID), (LPVOID*) &deviceInterface );
			(*plugInInterface)->Release(plugInInterface);
			if( res || deviceInterface == NULL ) {
				NSLog( @"CameraControl Error: QueryInterface returned %d.\n", (int)res );
				continue;
			}
			
			UInt32 currentLocationID = 0;
			(*deviceInterface)->GetLocationID(deviceInterface, &currentLocationID);
			
			if( currentLocationID == locationID ) {
				// Yep, this is the USB Device that was requested!
				interface = [self getControlInferaceWithDeviceInterface:deviceInterface];
				return self;
			}
		} // end while
		
	}
	return self;
}


- (id)initWithVendorID:(long)vendorID productID:(long)productID {
	if( self = [super init] ) {
		interface = NULL;
		
		// Find USB Device
		CFMutableDictionaryRef matchingDict = IOServiceMatching(kIOUSBDeviceClassName);
		CFNumberRef numberRef;
		
		numberRef = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &vendorID);
		CFDictionarySetValue( matchingDict, CFSTR(kUSBVendorID), numberRef );
		CFRelease(numberRef);
		
		numberRef = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &productID);
		CFDictionarySetValue( matchingDict, CFSTR(kUSBProductID), numberRef );
		CFRelease(numberRef);
		io_service_t camera = IOServiceGetMatchingService( kIOMasterPortDefault, matchingDict );
		
		
		// Get DeviceInterface
		IOUSBDeviceInterface **deviceInterface = NULL;
		IOCFPlugInInterface	**plugInInterface = NULL;
		SInt32 score;
		kern_return_t kr = IOCreatePlugInInterfaceForService( camera, kIOUSBDeviceUserClientTypeID, kIOCFPlugInInterfaceID, &plugInInterface, &score );
        if( (kIOReturnSuccess != kr) || !plugInInterface ) {
            NSLog( @"CameraControl Error: IOCreatePlugInInterfaceForService returned 0x%08x.", kr );
			return self;
        }
		
        HRESULT res = (*plugInInterface)->QueryInterface(plugInInterface, CFUUIDGetUUIDBytes(kIOUSBDeviceInterfaceID), (LPVOID*) &deviceInterface );
        (*plugInInterface)->Release(plugInInterface);
        if( res || deviceInterface == NULL ) {
            NSLog( @"CameraControl Error: QueryInterface returned %d.\n", (int)res );
            return self;
        }
		
		interface = [self getControlInferaceWithDeviceInterface:deviceInterface];
	}
	return self;
}


- (IOUSBInterfaceInterface190 **)getControlInferaceWithDeviceInterface:(IOUSBDeviceInterface **)deviceInterface {
	IOUSBInterfaceInterface190 **controlInterface;
	
	io_iterator_t interfaceIterator;
	IOUSBFindInterfaceRequest interfaceRequest;
	interfaceRequest.bInterfaceClass = UVC_CONTROL_INTERFACE_CLASS;
	interfaceRequest.bInterfaceSubClass = UVC_CONTROL_INTERFACE_SUBCLASS;
	interfaceRequest.bInterfaceProtocol = kIOUSBFindInterfaceDontCare;
	interfaceRequest.bAlternateSetting = kIOUSBFindInterfaceDontCare;
	
	IOReturn success = (*deviceInterface)->CreateInterfaceIterator( deviceInterface, &interfaceRequest, &interfaceIterator );
	if( success != kIOReturnSuccess ) {
		return NULL;
	}
	
	io_service_t usbInterface;
	HRESULT result;
	
	
	if( (usbInterface = IOIteratorNext(interfaceIterator)) ) {
		IOCFPlugInInterface **plugInInterface = NULL;
		
		//Create an intermediate plug-in
		SInt32 score;
		kern_return_t kr = IOCreatePlugInInterfaceForService( usbInterface, kIOUSBInterfaceUserClientTypeID, kIOCFPlugInInterfaceID, &plugInInterface, &score );
		
		//Release the usbInterface object after getting the plug-in
		kr = IOObjectRelease(usbInterface);
		if( (kr != kIOReturnSuccess) || !plugInInterface ) {
			NSLog( @"CameraControl Error: Unable to create a plug-in (%08x)\n", kr );
			return NULL;
		}
		
		//Now create the device interface for the interface
		result = (*plugInInterface)->QueryInterface( plugInInterface, CFUUIDGetUUIDBytes(kIOUSBInterfaceInterfaceID), (LPVOID *) &controlInterface );
		
		//No longer need the intermediate plug-in
		(*plugInInterface)->Release(plugInInterface);
		
		if( result || !controlInterface ) {
			NSLog( @"CameraControl Error: Couldn’t create a device interface for the interface (%08x)", (int) result );
			return NULL;
		}
		
		return controlInterface;
	}
	
	return NULL;
}


- (void)dealloc {
	if( interface ) {
		(*interface)->USBInterfaceClose(interface);
		(*interface)->Release(interface);
	}
	[super dealloc];
}


- (BOOL)sendControlRequest:(IOUSBDevRequest)controlRequest {
	if( !interface ){
		NSLog( @"CameraControl Error: No interface to send request" );
		return NO;
	}
	
	//Now open the interface. This will cause the pipes associated with
	//the endpoints in the interface descriptor to be instantiated
	kern_return_t kr = (*interface)->USBInterfaceOpen(interface);
	if (kr != kIOReturnSuccess)	{
		NSLog( @"CameraControl Error: Unable to open interface (%08x)\n", kr );
		return NO;
	}
	
	kr = (*interface)->ControlRequest( interface, 0, &controlRequest );
	if( kr != kIOReturnSuccess ) {
		kr = (*interface)->USBInterfaceClose(interface);
		NSLog( @"CameraControl Error: Control request failed: %08x", kr );
		return NO;
	}
	
	kr = (*interface)->USBInterfaceClose(interface);
	
	return YES;
}


- (BOOL)setData:(long)value withLength:(int)length forSelector:(int)selector at:(int)unitId {
	IOUSBDevRequest controlRequest;
	controlRequest.bmRequestType = USBmakebmRequestType( kUSBOut, kUSBClass, kUSBInterface );
	controlRequest.bRequest = UVC_SET_CUR;
	controlRequest.wValue = (selector << 8) | 0x00;
	controlRequest.wIndex = (unitId << 8) | 0x00;
	controlRequest.wLength = length;
	controlRequest.wLenDone = 0;
	controlRequest.pData = &value;
	return [self sendControlRequest:controlRequest];
}


- (long)getDataFor:(int)type withLength:(int)length fromSelector:(int)selector at:(int)unitId {
	long value = 0;
	IOUSBDevRequest controlRequest;
	controlRequest.bmRequestType = USBmakebmRequestType( kUSBIn, kUSBClass, kUSBInterface );
	controlRequest.bRequest = type;
	controlRequest.wValue = (selector << 8) | 0x00;
	controlRequest.wIndex = (unitId << 8) | 0x00;
	controlRequest.wLength = length;
	controlRequest.wLenDone = 0;
	controlRequest.pData = &value;
	BOOL success = [self sendControlRequest:controlRequest];
	return ( success ? value : 0 );
}


// Get Range (min, max)
- (uvc_range_t)getRangeForControl:(const uvc_control_info_t *)control {
	uvc_range_t range = { 0, 0 };
	range.min = [self getDataFor:UVC_GET_MIN withLength:control->size fromSelector:control->selector at:control->unit];
	range.max = [self getDataFor:UVC_GET_MAX withLength:control->size fromSelector:control->selector at:control->unit];
	return range;
}


// Used to de-/normalize values
- (float)mapValue:(float)value fromMin:(float)fromMin max:(float)fromMax toMin:(float)toMin max:(float)toMax {
	return toMin + (toMax - toMin) * ((value - fromMin) / (fromMax - fromMin));
}


// Get a normalized value
- (float)getValueForControl:(const uvc_control_info_t *)control {
	// TODO: Cache the range somewhere?
	uvc_range_t range = [self getRangeForControl:control];
	
	int intval = [self getDataFor:UVC_GET_CUR withLength:control->size fromSelector:control->selector at:control->unit];
	return [self mapValue:intval fromMin:range.min max:range.max toMin:0 max:1];
}


// Set a normalized value
- (BOOL)setValue:(float)value forControl:(const uvc_control_info_t *)control {
	// TODO: Cache the range somewhere?
	uvc_range_t range = [self getRangeForControl:control];
	
	int intval = [self mapValue:value fromMin:0 max:1 toMin:range.min max:range.max];
	return [self setData:intval withLength:control->size forSelector:control->selector at:control->unit];
}





// ================================================================

// Set/Get the actual values for the camera
//

- (BOOL)setAutoExposure:(BOOL)enabled {
	int intval = (enabled ? 0x08 : 0x01); // "auto exposure modes" ar NOT boolean (on|off) as it seems
	return [self setData:intval 
			  withLength:uvc_controls.autoExposure.size 
			 forSelector:uvc_controls.autoExposure.selector 
					  at:uvc_controls.autoExposure.unit];
}

- (BOOL)getAutoExposure {
	int intval = [self getDataFor:UVC_GET_CUR 
					   withLength:uvc_controls.autoExposure.size 
					 fromSelector:uvc_controls.autoExposure.selector 
							   at:uvc_controls.autoExposure.unit];
	
	return ( intval == 0x08 ? YES : NO );
}

- (BOOL)setExposure:(float)value {
	value = 1 - value;
	return [self setValue:value forControl:&uvc_controls.exposure];
}

- (float)getExposure {
	float value = [self getValueForControl:&uvc_controls.exposure];
	return 1 - value;
}

- (BOOL)setGain:(float)value {
	return [self setValue:value forControl:&uvc_controls.gain];
}

- (float)getGain {
	return [self getValueForControl:&uvc_controls.gain];
}

- (BOOL)setBrightness:(float)value {
	return [self setValue:value forControl:&uvc_controls.brightness];
}

- (float)getBrightness {
	return [self getValueForControl:&uvc_controls.brightness];
}

- (BOOL)setContrast:(float)value {
	return [self setValue:value forControl:&uvc_controls.contrast];
}

- (float)getContrast {
	return [self getValueForControl:&uvc_controls.contrast];
}

- (BOOL)setSaturation:(float)value {
	return [self setValue:value forControl:&uvc_controls.saturation];
}

- (float)getSaturation {
	return [self getValueForControl:&uvc_controls.saturation];
}

- (BOOL)setSharpness:(float)value {
	return [self setValue:value forControl:&uvc_controls.sharpness];
}

- (float)getSharpness {
	return [self getValueForControl:&uvc_controls.sharpness];
}

- (BOOL)setAutoWhiteBalance:(BOOL)enabled {
	int intval = (enabled ? 0x01 : 0x00);
	return [self setData:intval 
			  withLength:uvc_controls.autoWhiteBalance.size 
			 forSelector:uvc_controls.autoWhiteBalance.selector 
					  at:uvc_controls.autoWhiteBalance.unit];
}

- (BOOL)getAutoWhiteBalance {
	int intval = [self getDataFor:UVC_GET_CUR 
					   withLength:uvc_controls.autoWhiteBalance.size 
					 fromSelector:uvc_controls.autoWhiteBalance.selector 
							   at:uvc_controls.autoWhiteBalance.unit];
	
	return ( intval ? YES : NO );
}

- (BOOL)setWhiteBalance:(float)value {
	return [self setValue:value forControl:&uvc_controls.whiteBalance];
}

- (float)getWhiteBalance {
	return [self getValueForControl:&uvc_controls.whiteBalance];
}

- (BOOL)setAutoFocus:(BOOL)value {
    return [self setValue:(value ? 0x01 : 0x00) forControl:&uvc_controls.autoFocus];
}

- (BOOL)getAutoFocus {
    long value = [self getValueForControl:&uvc_controls.autoFocus];
    return (value ? YES : NO);
}

- (BOOL)setFocus:(double)value {
    // Don't try to set the focus if autofocus is enabled; it'll fail anyway.
    if (![self getAutoFocus]) {
        long focus = [self mapValue:value fromMin:0 max:1 toMin:focusRange.min max:focusRange.max];
        return [self setValue:focus forControl:&uvc_controls.focus];
    } else {
        return NO;
    }
}

- (double)getFocus {
    long focus = [self getValueForControl:&uvc_controls.focus];
    return [self mapValue:focus fromMin:focusRange.min max:focusRange.max toMin:0 max:1];
}


@end
