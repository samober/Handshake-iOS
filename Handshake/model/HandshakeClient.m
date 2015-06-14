//
//  HandshakeClient.m
//  Handshake
//
//  Created by Sam Ober on 9/16/14.
//  Copyright (c) 2014 Handshake. All rights reserved.
//

#import "HandshakeClient.h"

@implementation HandshakeClient

+ (AFHTTPRequestOperationManager *)client {
    static dispatch_once_t p = 0;
    static AFHTTPRequestOperationManager *client = nil;
    if (!client) {
        dispatch_once(&p, ^{
            //client = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:[NSURL URLWithString:@"http://localhost:3000/"]];
            client = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:[NSURL URLWithString:@"https://handshakeapi11.herokuapp.com/"]];
            client.requestSerializer = [AFJSONRequestSerializer serializer];
            [client.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
            [client.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
            client.responseSerializer = [AFJSONResponseSerializer serializer];
        });
    }
    return client;
}

@end
