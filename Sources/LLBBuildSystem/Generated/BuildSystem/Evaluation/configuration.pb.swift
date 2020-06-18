// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: BuildSystem/Evaluation/configuration.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// This source file is part of the Swift.org open source project
//
// Copyright (c) 2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

import Foundation
import SwiftProtobuf

import llbuild2

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// A ConfigurationKey represents the configuration to use while evaluating a project. It should contain the minimum set
/// of data required in order to construct a full configuration fragment. Each configuration fragment key should be
/// considered as a build key where the build value is the evaluated configuration for the key. The ConfigurationFunction
/// requests the value for each of the fragment keys, and it will be up to the client implementation to provide functions
/// that evaluate those keys into ConfigurationFragments.
public struct LLBConfigurationKey {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var fragmentKeys: [llbuild2.LLBAnySerializable] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A collection of configuration fragments as requested by a ConfigurationKey. The ConfigurationValue will be made
/// available at rule evaluation time from the rule context.
public struct LLBConfigurationValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var fragments: [llbuild2.LLBAnySerializable] = []

  /// Contains a hash of the fragments that can be used as a root for derived artifacts.
  public var root: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension LLBConfigurationKey: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "LLBConfigurationKey"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fragmentKeys"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.fragmentKeys)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fragmentKeys.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fragmentKeys, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: LLBConfigurationKey, rhs: LLBConfigurationKey) -> Bool {
    if lhs.fragmentKeys != rhs.fragmentKeys {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LLBConfigurationValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "LLBConfigurationValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fragments"),
    2: .same(proto: "root"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.fragments)
      case 2: try decoder.decodeSingularStringField(value: &self.root)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fragments.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fragments, fieldNumber: 1)
    }
    if !self.root.isEmpty {
      try visitor.visitSingularStringField(value: self.root, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: LLBConfigurationValue, rhs: LLBConfigurationValue) -> Bool {
    if lhs.fragments != rhs.fragments {return false}
    if lhs.root != rhs.root {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
