# Usage: sh launch.sh

# exp_name: Experiment name.
# env_name: Environment name.
# n_iter: Number of iterations.
# expert_data: Expert data.
# video_log_freq: Video log frequency.

name="Ant"
# name="Walker2d"
n_iter=100

for learning_rate in 1e-3 5e-4 1e-4; do
python cs285/scripts/run_hw1.py \
    --expert_policy_file cs285/policies/experts/$name.pkl \
    --env_name $name-v4 \
    --learning_rate $learning_rate \
    --exp_name bc_${name}_n_iter_${n_iter}_do_dagger_learning_rate_${learning_rate} \
    --n_iter $n_iter \
    --expert_data cs285/expert_data/expert_data_$name-v4.pkl \
    --do_dagger
done