package function


import (
	"fmt"
	"net/http"

	"bytes"
	"context"

	"google.golang.org/grpc"

	beaconservice "github.com/prysmaticlabs/prysm/v3/proto/eth/service"
	ethpbv1 "github.com/prysmaticlabs/prysm/v3/proto/eth/v1"

	"github.com/GoogleCloudPlatform/functions-framework-go/functions"
)

func init() {
	functions.HTTP("DownloadSidecar", downloadSidecar)
}


// helloWorld writes "Hello, World!" to the HTTP response.
func downloadSidecar(w http.ResponseWriter, r *http.Request) {
	addr := "localhost:4000"
	start := r.URL.Query().Get("slot")

	// todo add err handling

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	req := ethpbv1.BlobsRequest{BlockId: []byte(start)}

	conn, err := grpc.DialContext(ctx, addr, grpc.WithInsecure())
	if err != nil {
			panic(err)
	}
	client := beaconservice.NewBeaconChainClient(conn)

	sidecar, err := client.GetBlobsSidecar(ctx, &req)
	if err != nil {
			panic(err)
	}

	blobsBuffer := new(bytes.Buffer)
	for _, b := range sidecar.Blobs {
			fmt.Printf("%v\n", b)
			// Do whatever you want with the blobs here
			/*
					data := shared.DecodeBlob(blob.Data)
					_, _ = blobsBuffer.Write(data)
			*/
	}

	data := blobsBuffer.Bytes()
	fmt.Printf("%v\n", data)
}