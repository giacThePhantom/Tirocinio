#!/bin/sh

conditions="scr/DMSO/POL/ scr/DMSO/TOT/ scr/NUTLIN/POL/ scr/NUTLIN/TOT/ shDHX30/DMSO/POL/ shDHX30/DMSO/TOT/ shDHX30/NUTLIN/POL/ shDHX30/NUTLIN/TOT/ shPCBP2/DMSO/POL/ shPCBP2/DMSO/TOT/ shPCBP2/NUTLIN/POL/ shPCBP2/NUTLIN/TOT/"
pre_posts="pre post"

for pre_post in $pre_posts; do
	for condition in $conditions; do
		./af_correlation_two_samples.sh $condition $pre_post
		./af_correlation_two_samples.sh $condition $pre_post 0.1 0.9 10
		./af_correlation_two_samples.sh $condition $pre_post 0.1 0.9 20
		./af_correlation_two_samples.sh $condition $pre_post 0.2 0.8 10
		./af_correlation_two_samples.sh $condition $pre_post 0.2 0.8 20
	done
done
