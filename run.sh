for seed in $(seq 0 5); do
     OPENAI_LOG_FORMAT=csv OPENAI_LOGDIR=$HOME/logs/Pong-ppo2/new-$seed
     python -m baselines.run --alg=ppo2 --env=PongNoFrameskip-v4 --num_timesteps=1e7 --seed=${seed}  --log_path=$OPENAI_LOGDIR;
done

