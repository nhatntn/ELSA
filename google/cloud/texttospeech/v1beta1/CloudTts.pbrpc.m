#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/texttospeech/v1beta1/CloudTts.pbrpc.h"
#import "CloudTts.pbobjc.h"
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import "google/api/Annotations.pbobjc.h"

@implementation TextToSpeech

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.texttospeech.v1beta1"
                 serviceName:@"TextToSpeech"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.texttospeech.v1beta1"
                 serviceName:@"TextToSpeech"];
}

#pragma clang diagnostic pop

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName
                 callOptions:(GRPCCallOptions *)callOptions {
  return [self initWithHost:host callOptions:callOptions];
}

#pragma mark - Class Methods

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [[self alloc] initWithHost:host callOptions:callOptions];
}

#pragma mark - Method Implementations

#pragma mark ListVoices(ListVoicesRequest) returns (ListVoicesResponse)

// Deprecated methods.
/**
 * Returns a list of [Voice][google.cloud.texttospeech.v1beta1.Voice]
 * supported for synthesis.
 */
- (void)listVoicesWithRequest:(ListVoicesRequest *)request handler:(void(^)(ListVoicesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListVoicesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns a list of [Voice][google.cloud.texttospeech.v1beta1.Voice]
 * supported for synthesis.
 */
- (GRPCProtoCall *)RPCToListVoicesWithRequest:(ListVoicesRequest *)request handler:(void(^)(ListVoicesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListVoices"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ListVoicesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns a list of [Voice][google.cloud.texttospeech.v1beta1.Voice]
 * supported for synthesis.
 */
- (GRPCUnaryProtoCall *)listVoicesWithMessage:(ListVoicesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListVoices"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ListVoicesResponse class]];
}

#pragma mark SynthesizeSpeech(SynthesizeSpeechRequest) returns (SynthesizeSpeechResponse)

// Deprecated methods.
/**
 * Synthesizes speech synchronously: receive results after all text input
 * has been processed.
 */
- (void)synthesizeSpeechWithRequest:(SynthesizeSpeechRequest *)request handler:(void(^)(SynthesizeSpeechResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSynthesizeSpeechWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Synthesizes speech synchronously: receive results after all text input
 * has been processed.
 */
- (GRPCProtoCall *)RPCToSynthesizeSpeechWithRequest:(SynthesizeSpeechRequest *)request handler:(void(^)(SynthesizeSpeechResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SynthesizeSpeech"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SynthesizeSpeechResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Synthesizes speech synchronously: receive results after all text input
 * has been processed.
 */
- (GRPCUnaryProtoCall *)synthesizeSpeechWithMessage:(SynthesizeSpeechRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SynthesizeSpeech"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[SynthesizeSpeechResponse class]];
}

@end
#endif
