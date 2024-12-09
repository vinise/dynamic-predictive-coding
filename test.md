# first launch 

## modification on '[train_ista.py](train_ista.py)'

    # from models.predictive_coding_single import DynPredNet as SingleNet
    ...
    if two_level:
        model = DynPredNet(params, device).to(device)
        optimizer = [
            optim.SGD(model.spatial_decoder.parameters(), params.learning_rate_s),
            optim.Adam([model.temporal], params.learning_rate_t),
            optim.Adam(model.hypernet.parameters(), params.learning_rate_t)
        ]
    else:
        print("ERROR")
        # model = SingleNet(params, device).to(device)
        # optimizer = [
        #     optim.SGD(model.spatial_decoder.parameters(), params.learning_rate_s),
        #     optim.Adam(model.temporal.parameters(), params.learning_rate_t),
        # ]

## experiments/two_mnist/params.json  

    "seed": 55,
    "model": "two",

## first run 
    
    python train_ista.py --model_dir experiments/two_mnist --data_dir data/mnist


## analys [mnist_motion_cluster.py](analysis%2Fmnist_motion_cluster.py)
    
    python mnist_motion_cluster.py --model_dir experiments/two_mnist --data_dir data/mnist