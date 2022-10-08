module github.com/BlossomLabs/sidecarDownload

go 1.18

require (
	github.com/GoogleCloudPlatform/functions-framework-go v1.6.1
	github.com/prysmaticlabs/prysm/v3 v3.0.0-00010101000000-000000000000
	google.golang.org/grpc v1.40.0
)

require (
	cloud.google.com/go/functions v1.0.0 // indirect
	github.com/btcsuite/btcd/btcec/v2 v2.2.0 // indirect
	github.com/cloudevents/sdk-go/v2 v2.6.1 // indirect
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.0.1 // indirect
	github.com/ethereum/go-ethereum v1.10.23 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/go-cmp v0.5.8 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.0.1 // indirect
	github.com/herumi/bls-eth-go-binary v0.0.0-20220216073600-600054663ec1 // indirect
	github.com/holiman/uint256 v1.2.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/kilic/bls12-381 v0.1.1-0.20210208205449-6045b0235e36 // indirect
	github.com/klauspost/cpuid/v2 v2.0.14 // indirect
	github.com/minio/sha256-simd v1.0.0 // indirect
	github.com/mitchellh/mapstructure v1.4.1 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/protolambda/go-kzg v0.0.0-20220318042159-d646366d060f // indirect
	github.com/protolambda/ztyp v0.2.1 // indirect
	github.com/prysmaticlabs/fastssz v0.0.0-20220628121656-93dfe28febab // indirect
	github.com/prysmaticlabs/go-bitfield v0.0.0-20210809151128-385d8c5e3fb7 // indirect
	github.com/prysmaticlabs/gohashtree v0.0.2-alpha // indirect
	github.com/thomaso-mirodin/intmath v0.0.0-20160323211736-5dc6d854e46e // indirect
	go.uber.org/atomic v1.9.0 // indirect
	go.uber.org/goleak v1.1.12 // indirect
	go.uber.org/multierr v1.8.0 // indirect
	go.uber.org/zap v1.21.0 // indirect
	golang.org/x/crypto v0.0.0-20220622213112-05595931fe9d // indirect
	golang.org/x/net v0.0.0-20220624214902-1bab6f366d9e // indirect
	golang.org/x/sys v0.0.0-20220818161305-2296e01440c6 // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/genproto v0.0.0-20210921142501-181ce0d877f6 // indirect
	google.golang.org/protobuf v1.28.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

replace github.com/ethereum/go-ethereum => github.com/mdehoog/go-ethereum v1.10.19-0.20221008015053-a53789d9022d

replace github.com/prysmaticlabs/prysm/v3 => github.com/Inphi/prysm/v3 v3.0.0-4844.0.20221008020225-04dac7ea5f11

replace github.com/protolambda/go-kzg => github.com/Inphi/go-kzg v0.0.0-20220922202249-3c7bb745d469

replace github.com/kilic/bls12-381 => github.com/Inphi/bls12-381 v0.0.0-20220819032644-3ae7bcd28efc

// See https://github.com/prysmaticlabs/grpc-gateway/issues/2
replace github.com/grpc-ecosystem/grpc-gateway/v2 => github.com/prysmaticlabs/grpc-gateway/v2 v2.3.1-0.20220721162526-0d1c40b5f064
