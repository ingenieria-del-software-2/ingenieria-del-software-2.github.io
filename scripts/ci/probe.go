package main

import (
	"encoding/json"
	"fmt"

	"github.com/kkdai/youtube/v2"
)

// Usamos 'omitempty' para ocultar campos vacíos sin necesidad de punteros
type Out struct {
	ID       string `json:"id"`
	Title    string `json:"title,omitempty"`
	Channel  string `json:"channel,omitempty"`
	Duration int64  `json:"duration,omitempty"`
}

func main() {
	v, err := (&youtube.Client{}).GetVideo("2Z4nCvbCGRE")
	if err != nil {
		panic(err)
	}

	b, _ := json.MarshalIndent(Out{
		ID:       v.ID,
		Title:    v.Title,
		Channel:  v.Author,
		Duration: int64(v.Duration.Seconds()),
	}, "", "  ")

	fmt.Println(string(b))
}
