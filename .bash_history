/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_clean/src/main.py
pip list | grep "clip"
clip-clean --help
pip install -e .
clip-clean --help
clip-clean
pi show clip-clean
pip show clip-clean
ll
git init
gits
ll src/
cd src/
gits
git add --dry-run .
cd ../
git add --dry-run .
git add .
gits
git commit -m "init commit"
echo "git remote add origin git@github.com:ehud-gordon/clip_clean.git" | xclip
gits
git remote add origin git@github.com:ehud-gordon/clip_clean.git
git remote -v
git push
git push --set-upstream origin master
gits
ll npm
which npm
type npm
cd /home/ehud.gordon/clip_clean && python -c "
from src.clip_clean.utils.config import Config
from pathlib import Path

# Test minimal config loading
try:
    config = Config.from_yaml('configs/minimal_config.yaml')
    print('✓ Minimal config loaded successfully')
    print(f'  Dataset: {config.dataset}')
    print(f'  Degradations: {config.degradations}')
    print(f'  Severities: {config.severities}')
    print(f'  Reference degradation: {config.reference_degradation}')
    print(f'  Reference severity: {config.reference_severity}')
    print()
    
    # Test validation for different experiments
    experiments = ['metric_analysis', 'conformity_estimation', 'conformity_approximation', 'dimensionality_reduction', 'embedding_difference']
    for exp in experiments:
        try:
            config.validate_for_experiment(exp)
            print(f'✓ {exp}: validation passed')
        except ValueError as e:
            print(f'✗ {exp}: {e}')
            
except Exception as e:
    print(f'Error loading config: {e}')
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from src.clip_clean.utils.config import Config
from pathlib import Path

# Test minimal config loading
try:
    config = Config.from_yaml('configs/minimal_config.yaml')
    print('✓ Minimal config loaded successfully')
    print(f'  Dataset: {config.dataset}')
    print(f'  Degradations: {config.degradations}')
    print(f'  Severities: {config.severities}')
    print(f'  Reference degradation: {config.reference_degradation}')
    print(f'  Reference severity: {config.reference_severity}')
    print()
    
    # Test validation for different experiments
    experiments = ['metric_analysis', 'conformity_estimation', 'conformity_approximation', 'dimensionality_reduction', 'embedding_difference']
    for exp in experiments:
        try:
            config.validate_for_experiment(exp)
            print(f'✓ {exp}: validation passed')
        except ValueError as e:
            print(f'✗ {exp}: {e}')
            
except Exception as e:
    print(f'Error loading config: {e}')
    import traceback
    traceback.print_exc()
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from src.clip_clean.utils.config import Config

# Test all config files
configs = [
    'configs/minimal_config.yaml',
    'configs/agent_conformity_config.yaml', 
    'configs/agent_dimensionality_config.yaml',
    'configs/conformity_approximation_config.yaml'
]

for config_path in configs:
    try:
        config = Config.from_yaml(config_path)
        print(f'✓ {config_path}: loaded successfully')
        print(f'  Experiment: {config.experiment_name}')
        print(f'  Degradations: {config.degradations}')
        print(f'  Severities: {config.severities}')
        print(f'  Metrics: {config.metrics}')
        print(f'  Centering modes: {config.centering_modes}')
        print()
    except Exception as e:
        print(f'✗ {config_path}: Error - {e}')
        print()
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
# Test the run_experiments module loading and argument parsing
import sys
sys.path.append('src')

from clip_clean.experiments.run_experiments import main
from clip_clean.utils.config import Config

# Test config validation for each experiment type
config = Config.from_yaml('configs/minimal_config.yaml')

experiments = ['metric_analysis', 'conformity_estimation', 'conformity_approximation', 'dimensionality_reduction', 'embedding_difference']

print('Testing experiment validation with minimal config:')
for exp_name in experiments:
    try:
        config.validate_for_experiment(exp_name)
        print(f'✓ {exp_name}: validation passed')
    except ValueError as e:
        print(f'✗ {exp_name}: {e}')

print()
print('Testing specific configs for their intended experiments:')

# Test conformity config for conformity estimation
conformity_config = Config.from_yaml('configs/agent_conformity_config.yaml')
try:
    conformity_config.validate_for_experiment('conformity_estimation')
    print('✓ agent_conformity_config.yaml: conformity_estimation validation passed')
except ValueError as e:
    print(f'✗ agent_conformity_config.yaml: {e}')

# Test dimensionality config for dimensionality reduction
dim_config = Config.from_yaml('configs/agent_dimensionality_config.yaml')
try:
    dim_config.validate_for_experiment('dimensionality_reduction')
    print('✓ agent_dimensionality_config.yaml: dimensionality_reduction validation passed')
except ValueError as e:
    print(f'✗ agent_dimensionality_config.yaml: {e}')
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from src.clip_clean.utils.config import Config

# Test comprehensive config
try:
    config = Config.from_yaml('configs/comprehensive_config.yaml')
    print('✓ Comprehensive config loaded successfully')
    print(f'  Dataset: {config.dataset}')
    print(f'  Experiment: {config.experiment_name}')
    print(f'  Degradations: {config.degradations}')
    print(f'  Severities: {config.severities}')
    print(f'  Representative severities: {config.representative_severities}')
    print(f'  Metrics: {config.metrics}')
    print(f'  Centering modes: {config.centering_modes}')
    print(f'  Reference: {config.reference_degradation} @ {config.reference_severity}')
    print(f'  Comparison: {config.comparison_degradation} @ {config.comparison_severity}')
    print(f'  Projection method: {config.projection_method}')
    print(f'  Projection params: {config.projection_params}')
    print()
    
    # Test all experiment validations
    experiments = ['metric_analysis', 'conformity_estimation', 'conformity_approximation', 'dimensionality_reduction', 'embedding_difference']
    for exp in experiments:
        try:
            config.validate_for_experiment(exp)
            print(f'✓ {exp}: validation passed')
        except ValueError as e:
            print(f'✗ {exp}: {e}')

except Exception as e:
    print(f'Error: {e}')
    import traceback
    traceback.print_exc()
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
import sys
import os
sys.path.append('src')

# Simulate command line arguments
class Args:
    config = 'configs/minimal_config.yaml'
    experiment = 'conformity_approximation'

# Test the main function logic without actually running experiments
from clip_clean.experiments.run_experiments import main
from clip_clean.utils.config import Config
from clip_clean.experiments.base import ExperimentConfig

# Test the configuration loading and validation
args = Args()

print('Testing end-to-end configuration flow:')
print(f'Config file: {args.config}')
print(f'Experiment: {args.experiment}')
print()

# Load config with automatic defaults
cfg = Config.from_yaml(args.config)
print('✓ Config loaded successfully')

# Validate for specific experiment
try:
    cfg.validate_for_experiment(args.experiment)
    print(f'✓ Validation passed for {args.experiment}')
except ValueError as e:
    print(f'✗ Validation failed: {e}')

# Create experiment configuration (backward compatibility)
exp_config = ExperimentConfig(
    data_dir=cfg.data_dir,
    dataset=cfg.dataset,
    output_dir=cfg.output_dir,
    degradation_type=cfg.degradations[0] if cfg.degradations else 'gaussian',
    severities=cfg.severities,
    representative_severities=cfg.representative_severities,
    centering_methods=cfg.centering_modes
)
print('✓ ExperimentConfig created successfully')

print()
print('Configuration details:')
print(f'  Dataset: {exp_config.dataset}')
print(f'  Data dir: {exp_config.data_dir}')
print(f'  Output dir: {exp_config.output_dir}')
print(f'  Degradation type: {exp_config.degradation_type}')
print(f'  Severities: {exp_config.severities}')
print(f'  Representative severities: {exp_config.representative_severities}')
print(f'  Centering methods: {exp_config.centering_methods}')
"
diff test_framework.py src/tests/test_experiment_framework.py
mv test_conformity_estimation.py src/tests/
rm test_framework.py
mv conformity_params/* results/model_params/
rmdir conformity_params
mv fig results/
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from src.clip_clean.utils.metrics import load_conformity_params
import os

# Test that the new path works
print('Testing conformity params loading from new location...')
try:
    params = load_conformity_params('Tiny-ImageNet')
    if params:
        print('✓ Successfully loaded conformity params from new location')
        print(f'  R² score: {params[\"r2_score\"]:.6f}')
        print(f'  Dataset: {params[\"dataset\"]}')
    else:
        print('✗ No params found')
except Exception as e:
    print(f'✗ Error: {e}')

print()
print('Checking directory structure:')
print('Current working directory:', os.getcwd())
print('results/model_params exists:', os.path.exists('results/model_params'))
if os.path.exists('results/model_params'):
    files = os.listdir('results/model_params')
    print('Files in results/model_params:', files)
"
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python src/tests/test_conformity_estimation.py
PYTHONPATH=src /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python src/tests/test_conformity_estimation.py
find . -name "test_*.py" | head -10
ls -la results/
ls -la results/model_params/
ls -la | grep -E "(test_|conformity_params|fig)"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from src.clip_clean.utils.config import Config

# Test the minimal config as documented
print('Testing documented minimal configuration...')
try:
    config = Config.from_yaml('configs/minimal_config.yaml')
    print('✓ Minimal config (3 fields) loaded successfully')
    print(f'  Required fields: dataset={config.dataset}, data_dir={config.data_dir}, experiment_name={config.experiment_name}')
    print(f'  Auto-set degradations: {config.degradations}')
    print(f'  Auto-set severities: {config.severities}')
    print(f'  Auto-set metrics: {config.metrics}')
    print(f'  Auto-set reference: {config.reference_degradation}@{config.reference_severity}')
    
    # Test validation as documented
    print()
    print('Testing experiment validation...')
    experiments = ['metric_analysis', 'conformity_estimation', 'conformity_approximation', 'dimensionality_reduction', 'embedding_difference']
    for exp in experiments:
        try:
            config.validate_for_experiment(exp)
            print(f'✓ {exp}: validation passed')
        except ValueError as e:
            print(f'✗ {exp}: {e}')
            
except Exception as e:
    print(f'✗ Error: {e}')
"
ls -la results/ && echo "---" && ls -la results/model_params/
ls -la configs/README.md
ll
curl -fsSL https://claude.ai/install.sh | bash
claude --help
~/.local/bin/claude --help
~/.local/bin/claude
reload
which claude
claude
cd clip_clean/
claude
cl
exit
cd clip_clean/
claude
exit
gits
git add .
gits
git commit -m "config refactoring"
gits
git remote -v
git push
ls -la /home1/ehud.gordon/data/Tiny-ImageNet/
ls -la /home1/ehud.gordon/data/Tiny-ImageNet/gaussian_noise/
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config configs/gaussian_conformity_evaluation_config.yaml --experiment gaussian_conformity_evaluation
ls /home1/ehud.gordon/data/Tiny-ImageNet/clip_image_embeddings_L14.pt
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config configs/gaussian_conformity_evaluation_config.yaml --experiment gaussian_conformity_evaluation
ls -la /home/ehud.gordon/clip_clean/results/gaussian_conformity_evaluation/
head -50 /home/ehud.gordon/clip_clean/results/gaussian_conformity_evaluation/gaussian_conformity_results_Tiny-ImageNet.json
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python test_gaussian_conformity.py
rm /home/ehud.gordon/clip_clean/test_gaussian_conformity.py
ls -la /home/ehud.gordon/clip_clean/test_gaussian_conformity.py
rm /home/ehud.gordon/clip_clean/test_gaussian_conformity.py
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m unittest src.tests.test_gaussian_conformity_evaluation
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python src/tests/test_gaussian_conformity_evaluation.py --full
rm -rf /home/ehud.gordon/clip_clean/test_results
pytest -q
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/conformity_distributions_config.yaml --experiment conformity_distributions
bash -lc "ls -1 results/plots/*/*.png 2>/dev/null | wc -l && ls -1 results/plots/*/*.png 2>/dev/null | tail -n 6"
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/conformity_distributions_config.yaml --experiment conformity_distributions
gits
git add .
git commit -m "conformity metrics experiment"
PYTHONPATH=/home/ehud.gordon/clip_clean/src /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/minimal_config.yaml --experiment mean_center_norm
ls -1 /home1/ehud.gordon/data/Tiny-ImageNet/gaussian | head -n 50
ls -1 /home1/ehud.gordon/data/Tiny-ImageNet | sed -n '1,120p'
PYTHONPATH=/home/ehud.gordon/clip_clean/src /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/gaussian_conformity_evaluation_config.yaml --experiment mean_center_norm
ll ~/data/Tiny-ImageNet/
ll ~/data/Tiny-ImageNet/gaussian_noise/
command ls -1 ~/data/Tiny-ImageNet/gaussian_noise/.*pt
command ls -1 ~/data/Tiny-ImageNet/gaussian_noise/*.pt
command ls -1 ~/data/Tiny-ImageNet/gaussian_noise/*.pt 
command ls -1 ~/data/Tiny-ImageNet/gaussian_noise/*.pt | sed 's/.*_sev_\([0-9.]*\)_.*/\1/'
ls -1 /home1/ehud.gordon/data/Tiny-ImageNet/gaussian_noise/*.pt | sed 's/.*_sev_\([0-9.]*\)_.*/\1/' | sort -n
PYTHONPATH=/home/ehud.gordon/clip_clean/src /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/mean_center_norm_config.yaml --experiment mean_center_norm
pytest -q
PYTHONPATH=/home/ehud.gordon/clip_clean/src /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/minimal_config.yaml --experiment mean_center_norm
ll ~/data/Tiny-ImageNet/
PYTHONPATH=/home/ehud.gordon/clip_clean/src /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/minimal_config.yaml --experiment mean_center_norm
PYTHONPATH=/home/ehud.gordon/clip_clean/src /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/mean_center_norm_config.yaml --experiment mean_center_norm
gits
git add .
git commit -m "centralized plot"
cd /home/ehud.gordon/clip_clean/configs && rm example_config.yaml minimal_config.yaml comprehensive_config.yaml
cd ../
realpath .
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments --config configs/sample_norm_distributions_config.yaml --experiment sample_norm_distributions
ls -la /home/ehud.gordon/clip_clean/results/plots/09_08_Sample\ L2\ Norm\ Distributions\ \(Non-Centered\)/
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "from src.clip_clean.experiments.sample_norm_distributions import SampleNormDistributionsExperiment; print('Import successful')"
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments --help
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments --config configs/sample_norm_distributions_config.yaml --experiment sample_norm_distributions
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m pip show clip_clean | cat
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.src.clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/conformity_distributions_config.yaml --experiment conformity_distributions
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/conformity_distributions_config.yaml --experiment conformity_distributions
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m pytest -q
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.run_experiments --config /home/ehud.gordon/clip_clean/configs/conformity_distributions_config.yaml --experiment conformity_distributions
bash -lc "ls -1 results/plots/*/*.png 2>/dev/null | wc -l && ls -1 results/plots/*/*.png 2>/dev/null | tail -n 5"
gits
git add .
gits
git commit -m "updated configs"
gits
git add /
gits
git add .
gits
git commit -m "conformity approximation"
gits
git push
gits
git add .github/
git commit -m "experiments summary"
git checkout -b hard-coded-summary
gits
git add .
git commit -m "hard coded summary in code"
git --version
git switch master
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments --config configs/affine_conformity_vs_cosmean.yaml --experiment affine_conformity_vs_cosmean
cd /home/ehud.gordon/clip_clean
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments   --config configs/affine_conformity_vs_cosmean.yaml   --experiment affine_conformity_vs_cosmean
ll src
rm src/clip_clean/experiments/affine_conformity_vs_cosmean.py 
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments   --config configs/affine_conformity_vs_cosmean.yaml   --experiment affine_conformity_vs_cosmean
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments --config configs/mean_level_analysis_config.yaml --experiment mean_level_analysis
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments   --config configs/affine_conformity_vs_cosmean.yaml   --experiment affine_conformity_vs_cosmean
cap
gpustat
tmux
conda activate pytorch_env
gits
git add .
git commit -m "results and logs"
gits
git push
gits
git add .
git commit -m "conformity formula"
gits
git add .
git commit -m "removed affine conformity formula"
gits
git push
git commit -am "removed affine conformity formula"
cd /home/ehud.gordon/clip_clean
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments     --config configs/example_config.yaml     --experiment <experiment_name>
cd /home/ehud.gordon/clip_clean
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments     --config configs/example_config.yaml     --experiment <experiment_name>
cd /home/ehud.gordon/clip_clean
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments     --config configs/example_config.yaml     --experiment <experiment_name>
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments --config configs/mean_level_analysis_config.yaml --experiment mean_level_analysis
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments --config configs/mean_level_analysis_config.yaml --experiment mean_level_analysis
gits
git add -A
ll
gits
git config --global alias.ac '!git add -A && git commit -m'
git ac "mean_level_analysis"
gits
git push
tmux
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments --config configs/mean_level_analysis_config.yaml --experiment mean_level_analysis
tmux
. /home/ehud.gordon/miniforge3/etc/profile.d/conda.sh && conda activate pytorch_env
ll ~/Tiny-ImageNet-C/
. /home/ehud.gordon/miniforge3/etc/profile.d/conda.sh && conda activate pytorch_env
conda run --live-stream --name pytorch_env python /home/ehud.gordon/clipClean/experiments/noise_point/classification.py
gpustat
conda run --live-stream --name pytorch_env python /home/ehud.gordon/clipClean/experiments/noise_point/classification.py
ll ~/Tiny-ImageNet-C/
ll ~/Tiny-ImageNet-C/my_gaussian_noise/
ll ~/data/Tiny-ImageNet-C/my_gaussian_noise/
python
conda run --live-stream --name pytorch_env python /home/ehud.gordon/clipClean/experiments/noise_point/classification.py
conda run --live-stream --name pytorch_env python /home/ehud.gordon/clipClean/experiments/norms.py
conda run --live-stream --name pytorch_env python /home/ehud.gordon/clipClean/experiments/noise_point/classification.py
python experiments/noise_point/classification.py 
. /home/ehud.gordon/miniforge3/etc/profile.d/conda.sh && conda activate pytorch_env
exit
ls
exit
cd data/
ll
ll Tiny-ImageNet/
cd Tiny-ImageNet/
cd random_models/
ll
gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled-on-external-mouse
exit
ealiases 
cap
## Metric Analysis
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments     --config configs/multi_metric.yaml     --experiment metric_analysis
gits
git add .
gits
git commit -m "before new experiments design"
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python test_multi_degradation.py
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments --config test_multi_config.yaml --experiment metric_analysis
cap
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments     --config configs/multi_metric.yaml     --experiment metric_analysis
python src/clip_clean/utils/stam.py 
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.run_experiments     --config configs/multi_metric.yaml     --experiment metric_analysis
which claude
gits
mv src/clip_clean/experiments/base.py src/clip_clean/experiments/base_old.py && mv src/clip_clean/experiments/base_new.py src/clip_clean/experiments/base.py
cp src/clip_clean/experiments/metric_analysis.py src/clip_clean/experiments/implementations/
mv src/clip_clean/experiments/implementations/metric_analysis.py src/clip_clean/experiments/implementations/metric_analysis_old.py && mv src/clip_clean/experiments/implementations/metric_analysis_new.py src/clip_clean/experiments/implementations/metric_analysis.py
cd /home/ehud.gordon/clip_clean/src/clip_clean/experiments && mv conformity_approximation.py conformity_distributions.py conformity_estimation.py dimensionality_reduction.py gaussian_conformity_evaluation.py mean_center_norm.py mean_level_analysis.py sample_norm_distributions.py implementations/
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "from clip_clean.experiments import list_experiments; print('Available experiments:', list_experiments())"
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m src.clip_clean.experiments.runner --config configs/multi_metric.yaml --experiment metric_analysis
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/multi_metric.yaml --experiment metric_analysis
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config /home/ehud.gordon/clip_clean/configs/multi_metric.yaml --experiment metric_analysis
cd /home/ehud.gordon/clip_clean/src/clip_clean/experiments && rm base_old.py base_new.py registry.py experiment_utils.py run_experiments.py metric_analysis.py
cd /home/ehud.gordon/clip_clean/src/clip_clean/experiments/implementations && rm metric_analysis_old.py metric_analysis_new.py
find . -name "__pycache__" -type d -exec rm -rf {} + 2>/dev/null || true
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "from clip_clean.experiments import list_experiments; print('Available experiments:', list_experiments())"
cd /home/ehud.gordon/clip_clean/src/clip_clean/experiments && rm -rf __pycache__
cap
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config /home/ehud.gordon/clip_clean/configs/multi_metric.yaml --experiment metric_analysis
gits
git add .
git commit -m "claude update config base experiment"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from clip_clean.config import EmbeddingExperimentConfig
config = EmbeddingExperimentConfig.from_yaml('configs/conformity_approximation_config.yaml')
config.validate()
print('Config validation passed')
print(f'Experiment: {config.experiment_name}')
print(f'Dataset: {config.dataset}')
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from clip_clean.experiments.implementations.conformity_approximation import ConformityApproximationExperiment
from clip_clean.config import EmbeddingExperimentConfig
config = EmbeddingExperimentConfig.from_yaml('configs/conformity_approximation_config.yaml')
exp = ConformityApproximationExperiment(config)
print('Experiment import and initialization successful')
print(f'Results dir: {exp.results_dir}')
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from clip_clean.experiments.runner import get_experiment_registry
registry = get_experiment_registry()
print('Available experiments:', list(registry.keys()))
print('conformity_approximation registered:', 'conformity_approximation' in registry)
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from clip_clean.experiments import list_experiments
experiments = list_experiments()
print('Available experiments:', experiments)
print('conformity_approximation registered:', 'conformity_approximation' in experiments)
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from clip_clean.experiments import list_experiments
experiments = list_experiments()
print('Available experiments:', experiments)
print('conformity_approximation registered:', 'conformity_approximation' in experiments)
"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from clip_clean.config import EmbeddingExperimentConfig
from clip_clean.experiments import get_experiment

config = EmbeddingExperimentConfig.from_yaml('configs/conformity_approximation_config.yaml')
exp_cls = get_experiment('conformity_approximation')
exp = exp_cls(config)

# Test that the describe method works
desc = exp.describe()
print(f'Experiment name: {desc.name}')
print(f'Aim: {desc.aim}')
print(f'Description works correctly')
"
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --help
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner     --config configs/conformity_approximation_config.yaml \
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner     --config configs/conformity_approximation_config.yaml \
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner \
ll /home/ehud.gordon/clip_clean/results/15_08_conformity_approximation
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/conformity_approximation_config.yaml --experiment conformity_approximation
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/conformity_estimation.yaml --experiment conformity_estimation
ls -la /home1/ehud.gordon/data/Tiny-ImageNet/
ls -la /home1/ehud.gordon/data/Tiny-ImageNet/gaussian_blur/
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m py_compile src/clip_clean/experiments/implementations/conformity_distributions.py
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "from clip_clean.experiments import list_experiments; print('Available experiments:', list_experiments())"
cd /home/ehud.gordon/clip_clean && /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -c "
from clip_clean.config import EmbeddingExperimentConfig
from clip_clean.experiments import get_experiment
from pathlib import Path

# Load the config
config = EmbeddingExperimentConfig.from_yaml(Path('configs/conformity_distributions_config.yaml'))
config.validate()

# Get and instantiate the experiment
experiment_class = get_experiment('conformity_distributions')
experiment = experiment_class(config)
print('Successfully instantiated experiment:', experiment.__class__.__name__)
print('Description:', experiment.describe().aim)
"
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/conformity_distributions_config.yaml --experiment conformity_distributions
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/dimensionality_reduction_test.yaml --experiment dimensionality_reduction
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/visualization.yaml --experiment dimensionality_reduction
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/dimensionality_reduction_test.yaml --experiment dimensionality_reduction
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/mean_center_norm_config.yaml --experiment mean_center_norm
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/mean_center_norm_test.yaml --experiment mean_center_norm
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/sample_norm_distributions_config.yaml --experiment sample_norm_distributions
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/conformity_distributions_config.yaml --experiment conformity_distributions
conda activate pytorch_env
gits
git add .
git commit -m "updated experiments to new implementation"
gits
git push
cd clip_clean/
ll
claude
cl
cd clip_clean/
cd clip_clean/
clauded
which claude
ealiases 
claude
clear
conda activate pytorch_env
cd results/
ll
vim stam.py
echo | $(realpath 08_15_comprehensive_metrics/)
realpath 08_15_comprehensive_metrics/ | clp
ebashrc 
reload
realpath 08_15_comprehensive_metrics/ | clp
stam.py /home/ehud.gordon/clip_clean/results/08_15_comprehensive_metrics
conda-activate 
python stam.py /home/ehud.gordon/clip_clean/results/08_15_comprehensive_metrics
cd 08_15_comprehensive_metrics/
ll
cd figures/
ll
cd gaussian_noise/
ll
cd conformity_clean_reference_clean_to_degraded_distributions/
ll
ll pdf/
cd ../../
ll
cd 08_15_comprehensive_metrics/
cd figures/gaussian_noise/
ll
cd avg_pairwise_distance_clean_reference_clean_to_degraded_distributions/
ll
cd ../../../
cd ../
gits
git restore 08_15_comprehensive_metrics/
gits
git restore 08_15_comprehensive_metrics/
ll
ll 08_15_comprehensive_metrics/figures/gaussian_noise/avg_pairwise_distance_clean_reference_clean_to_degraded_distributions/
ll 08_15_comprehensive_metrics/figures/gaussian_noise/avg_pairwise_distance_clean_reference_clean_to_degraded_distributions/pdf/
cd 08_15_comprehensive_metrics/
find . -type d \( -iname png -o -iname pdf \) -exec rm -rf {} +
Ask ChatGPT
cd ../../../
cd clip_clean/
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
gits
git add .
git commit -m "run metric analysis"
gits
git push
xclip
which xclip
python generate_github_image_md.py 
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
rm scripts/markdown_images.sh 
python generate_github_image_md.py 
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
gits
git add .
git commit -m "generate stub"
git push
python generate_github_image_md.py 
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
cap
conda activate pytorch_env
/home/ehud.gordon/miniforge3/env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
cd clip_clean/
claude
conda-activate 
conda env list
exit
cd clip_clean/
claude
gits
git add .
git commit -m "titles not-decent"
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
exit
conda activate pytorch_env
claude
conda activate pytorch_env
claude
conda-activate 
cap
realpath | clp
realpath . | clp
touch .vscode/tasks.json
conda activate pytorch_env
conda activate pytorch_env
ll ./.claude
vim ./.claude/settings.local.json 
gits
git add .
git commit -m "plots column title in subplot title"
git push
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_clean/generate_github_image_md.py
ll ~/data/Tiny-ImageNet/gaussian_noise/
python
conda activate pytorch_env
claude
conda activate pytorch_env
conda activate pytorch_env
ll ~/data/Tiny-ImageNet/gaussian_noise/
cap
clear
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
conda activate pytorch_env
claude
conda activate pytorch_env
claude
conda activate pytorch_env
claude
conda activate pytorch_env
claude
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
python
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
cd results/
ll
cd 08_19_18_46_metric_analysis/
cd ../
du -h 08_19_18_46_metric_analysis/
cd ../
ll ~/.claude/
cd clip_clean/
ll
cd .claude/
ll
vim settings.local.json 
ll ~/data/Tiny-ImageNet/gaussian_noise/
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/cosine_similarity_analysis.yaml --experiment cosine_similarity_analysis
cd ../
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/cosine_similarity_analysis.yaml --experiment cosine_similarity_analysis
gits
git add .
git commit -m "updated config to validators"
git push 
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/cosine_similarity_analysis.yaml --experiment cosine_similarity_analysis
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/cosine_similarity_analysis.yaml --experiment metric_analysis
cap
which python
python -v
python --version
conda activate pytorch_env
claude
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/cosine_similarity_analysis.yaml --experiment metric_analysis
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/metric_analysis.yaml --experiment metric_analysis
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean.experiments.runner --config configs/centering_comparison.yaml --experiment centering_comparison
cd clip_clean/
ll
cd docs/
ll
vim thesis_outline.md
cd
curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
which vim
ll
ll .vimrc
vim .vimrc
ebashrc 
ealiases 
which xsel
which xclip
ll
nano .vimrc
which node
type node
vim .vimrc
ll # If you used vim-plug (default folder)
ls ~/.vim/plugged/gruvbox/colors/gruvbox.vim
# If you did a manual clone into 'pack'
ls ~/.vim/pack/vendor/start/gruvbox/colors/gruvbox.vim
# If you used vim-plug (default folder)
ls ~/.vim/plugged/gruvbox/colors/gruvbox.vim
# If you did a manual clone into 'pack'
ls ~/.vim/pack/vendor/start/gruvbox/colors/gruvbox.vim
# If you used vim-plug (default folder)
ls ~/.vim/plugged/gruvbox/colors/gruvbox.vim
# If you did a manual clone into 'pack'
ls ~/.vim/pack/vendor/start/gruvbox/colors/gruvbox.vim
ls ~/.vim/plugged/gruvbox/colors/gruvbox.vim
vim .vimrc
cl
cd clip_clean/
cd docs
realpath thesis_outline.md | clp
exit
nano .vimrc
source ~/.vimrc
nano .vimrc
vim .vimrc
cd clip_clean/
ll
cd docs/
ll
vim thesis_outline.md
cd ../../
cd .vim
ll
md startup
cd startup/
vim startup.vim
vim basic_navigation.vim
vim gui.vim
vim vim navigation.vim
ll
rm ./vim
vim navigation.vim
vim plugins.vim
cl
cd clip_clean/
cd docs/
ll
vim thesis_outline.md 
exit
cd clip_clean/
cd docs/
ll
vim thesis_outline2.md 
exit
cd clip_clean/
ll
cd clip_clean/
ll
echo EXPERIMENT_GUIDE.md | clp
echo PROJECT_OVERVIEW.md | clp
ll docs/
claude
grep -i "jerusalem" *
vim EXPERIMENT_GUIDE.md 
vim PROJECT_OVERVIEW.md 
cd clip_clean/
ll
ll src/
ll src/tests/*
rm src/tests/*
ll
echo PROJECT_OVERVIEW.md  | clp
echo EXPERIMENT_GUIDE.md | clp 
vim AGENTS.md 
ll
cd configs/
ll
vim README.md 
rm README.md 
vim base_template.yaml 
vim minimal.yaml 
vim base_template.yaml 
vim quick_test.yaml 
ll
vim example_config.yaml 
rm example_config.yaml 
cd ../
ll
vim PROJECT_OVERVIEW.md 
cd ../clip_clean_ellipsoid/
cl
conda activate pytorch_env
clip-clean-exp --config configs/quick_test.yaml --experiment quick_test
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m pip install -e .
clip-clean-exp --config configs/quick_test.yaml --experiment quick_test
conda activate pytorch_env
cd ../
cd clip_clean_ellipsoid/
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m pip install .
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean_e.experiments.runner --config configs/quick_test.yaml --experiment quick_test
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean_e.experiments.runner --config configs/quick_test.yaml --experiment quick_test
pip list | grep clip_clean
cod
conda-activate 
cap
pip list | grep clip
pip uninstall clip-clean-e
pip install -e .
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python -m clip_clean_e.experiments.runner --config configs/quick_test.yaml --experiment quick_test
cd clip_clean/
grep -ri "clean_reference" .
vim ./src/clip_clean/experiments/implementations/conformity_distributions.py
grep -ri "reference" .
rm ./src/clip_clean/__pycache__/
rm ./src/clip_clean/constants.py 
git restore ./src/clip_clean/constants.py
vim ./src/clip_clean/constants.py
cd src/clip_clean/experiments/
vim base.py 
ll
ll implementations/
cl
cd clip_clean_ellipsoid/
cd src/clip_clean/
cd data/
ll
vim path_utils.py 
which ndoe
which node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
ebashrc 
reload
nvm install --lts
nvm use --lts
node -v && npm -v
npm install -g @openai/codex
cd clip_clean/
ll
codex
vim AGENTS.md 
cd src/
ll
cd clip_clean/experiments/
ll
cd implementations/
cd ../../../
cd ../
cp clip_clean clip_clean_ellipsoid
cd clip_clean_ellipsoid/
ll
cd results/
ll
rm 08*
rm model_params/
rm multi_metric/
rm plots/
ll data/
rm data/
ll
rm stam.py 
ll logs/
cd logs; > EXPERIMENTS_SUMMARY.md
cat EXPERIMENTS_SUMMARY.md 
> EXPERIMENTS_RUN_COMMANDS.md 
cd ../../
ll
vim AGENTS.md 
ll
cd configs/
ll
rm c* d* g* mean* README.md sample_norm_distributions_config.yaml visualization.yaml 
ll
cat base_template.yaml 
cd ../../
cd clip_clean/
vim CLAUDE.md 
cp CLAUDE.md ../clip_clean_ellipsoid/
cp EXPERIMENT_GUIDE.md PROJECT_OVERVIEW.md README.md ../clip_clean_ellipsoid/
cd ../clip_clean_ellipsoid/
ll
vim AGENTS.md 
ll .claude/
vim CLAUDE.md 
ll
cd configs/
ll
vim base_template.yaml 
rm base_template.yaml 
vim example_config.yaml 
ll
rm example_config.yaml 
vim minimal.yaml 
vim quick_test.yaml 
ll
vim metric_analysis.yaml 
cd ../
ll
cd docs/
ll
cd ../
rm docs/*
vim EXPERIMENT_GUIDE.md 
ll
rm generate_github_image_md.py 
cd .github/
ll
cd instructions/
ll
vim copilot-instructions.md 
cd ../../
rm .github/
vim PROJECT_OVERVIEW.md 
ll
vim PROJECT_OVERVIEW.md 
vim README.md 
ll
cd results/
ll
cd ../scripts/
ll
cd ../
rm scripts/
rm test_plots/
cd .vscode/
ll
vim launch.json 
vim settings.json 
vim tasks.json 
cd ../
cd src/
ll
rm stam.py 
ll tests/
cd clip_clean/
ll
vim config.py 
vim constants.py 
grep -ri "normalize"
vim config.py 
rm utils/__pycache__/
find . -type d -iname '*pycache*'
rm ./experiments/implementations/__pycache__/
rm ./experiments/__pycache__/
rm ./data/__pycache__/
rm ./__pycache__/
cd ../
find . -type d -iname '*pycache*'
cd ../
find . -type d -iname '*pycache*'
ll
ll results/
cd src/
ll
cd clip_clean/
ll
cd experiments/
ll
vim base.py 
ll
cd implementations/
ll
rm c* d* g* mean*
ll
vim __init__.py 
vim metric_analysis.py 
rm metric_analysis.py 
rm sample_norm_distributions.py 
vim quick_test.py 
ll
cd ../
ll
vim __init__.py 
vim runner.py 
cd templates/
ll
cd ../
rm templates/
ll
cd ../
ll
vim main.py 
vim paths.py 
cd utils/
ll
vim clip_utils.py 
vim __init__.py 
vim plot_builder.py 
ll
cd ../../
grep -ri "severit"
vim clip_clean/data/loader.py 
grep -ri "severit"
cd clip_clean/
vim constants.py 
vim experiments/base.py 
grep -ri "severit"
cd utils/
vim style.py 
vim plot_builder.py 
vim plot.py 
grep -ri "severit"
vim plot_builder.py 
grep -ri "deg"
vim metrics.py 
cd ../../../
grep -ri "deg"
vim README.md 
vim PROJECT_OVERVIEW.md 
grep -ri "deg"
grep -ri "severit"
gits
ll
rm .git
git init
gits
git add .
git commit -m "init"
togt
exit
conda activate pytorch_env
which claude
type clauded
ll
vim .claude/settings.local.json 
claude --dangerously-skip-permissions
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_clean_ellipsoid/src/clip_clean_e/experiments/implementations/tests.py
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_clean_ellipsoid/src/clip_clean_e/experiments/implementations/tests2.py
conda activate pytorch_env
type clp
realpath ~/data/Tiny-ImageNet/clip_image_embeddings_L14.pt | clp
which python
clear
python src/clip_clean_e/experiments/implementations/tests2.py 
ll src/clip_clean_e/experiments/implementations/
python src/clip_clean_e/experiments/implementations/ellipsoid_tests_chatgpt.py 
cd src/clip_clean_e/experiments/implementations/
python ellipsoid_tests_chatgpt.py 
conda activate pytorch_env
gpustat
conda activate pytorch_env
cd src/clip_clean_e/experiments/implementations/
python ellipsoid_tests_chatgpt.py 
conda activate pytorch_env
cd src/clip_clean_e/experiments/implementations/
ll
python ellipsoid_tests_gemini.py 
conda-activate 
cap
python src/clip_clean_e/experiments/implementations/ellipsoid_tests_chatgpt.py 
conda activate pytorch_env
exit
conda-activate 
cap
python src/clip_clean_e/experiments/implementations/ellipsoid_tests_chatgpt.py 
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_clean_ellipsoid/src/clip_clean_e/experiments/implementations/stam.py
python src/clip_clean_e/experiments/implementations/ellipsoid_tests_chatgpt.py 
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_clean_ellipsoid/src/clip_clean_e/experiments/implementations/ellipsoid_tests_chatgpt.py
gits
git add .
git ac "ellipsoid tests gpt-pro not bad"
python src/clip_clean_e/experiments/implementations/ellipsoid_tests_chatgpt.py 
cd clipClean/
cd utils/
vim math_utils.py 
exit
cd clipClean/
ll
cd experiments/
ll
cd ../m
cd ../
ll
cd utils/
ll
vim metrics.py 
cl
evimrc 
which nvim
nvim .vimrc
mkdir -p ~/.config/nvim
cat > ~/.config/nvim/init.vim <<'EOF'
" allow Neovim to load plugins & runtime from ~/.vim
set runtimepath+=~/.vim,~/.vim/after
let &packpath = &runtimepath

" source your existing vimrc so your settings/mappings carry over
if filereadable(expand('~/.vimrc'))
  source ~/.vimrc
endif
EOF

vim ~/.config/nvim/init.vim 
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qall
which xclip
printf 'hello_from_shell' | xclip -selection clipboard
ll
nvim .viminfo
which xclip
vim .vimrc 
reload
nvim .viminfo 
nvim
vim .viminfo
nvim .viminfo
nvim
reload
vim
nvim
vim .vimrc
which xclip
ealiases 
reload
evimrc 
vim ~/.vim/startup/plugins.vim 
vim --version | grep clipboard
which xclip
ll ~/.local/
ll ~/.local/bin/
cd /tmp/
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
cd ../
vim .vim
cd ~
vim .vimrc 
reload
cd clipClean/
cd unclip/
vim unclip_rand_seed.py 
reload
nvim unclip_rand_seed.py 
cd clipClean/
ll
cd unclip/
ll
rm __pycache__/
vim unclip_rand_seed.py 
cd ../
grep . -ri "unclip"
grep -ri --exclude-dir=unclip "unclip" .
vim experiments/noise_point/unclip_interp_noise_point.py 
cd unclip/
claude
clauded
ealiases 
reload
which clauded
type clauded
clauded
claude
which claude
type clauded
clauded
conda-activate 
cap
clauded
conda activate base
conda env list
which conda
conda init
cd ../
cd .claude/
ll
vim CLAUDE.md 
claude
md clip_decomp
cd clip_decomp/
clauded
clauded --verbose
clauded
clear
clauded
mkdir -p ./checkpoints
cap
python faithdiff_demo.py 
python -c "from huggingface_hub import login; login()"
python faithdiff_demo.py 
. "/home/ehud.gordon/.cursor-server/bin/a8e95743c5268be73767c46944a71f4465d05c90/out/vs/workbench/contrib/terminal/common/scripts/shellIntegration-bash.sh"
cd /home/ehud.gordon/FaithDiff && source .venv/bin/activate && python -c "from transformers import CLIPVisionConfig; from CKPT_PTH import LLAVA_CLIP_PATH; print('LLAVA_CLIP_PATH=', LLAVA_CLIP_PATH); CLIPVisionConfig.from_pretrained(LLAVA_CLIP_PATH); print('CLIP config loaded OK')"
source .venv/bin/activate && python -u gradio_demo.py | cat
source .venv/bin/activate && PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True python -u gradio_demo.py --no_llava --use_fp8 | cat
source .venv/bin/activate && PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True python -u gradio_demo.py --no_llava --cpu_offload --use_fp8 | cat
source .venv/bin/activate && echo 'Listing checkpoints:' && ls -lah /home/ehud.gordon/FaithDiff/checkpoints || true && echo '--- find faithdiff files ---' && find /home/ehud.gordon/FaithDiff -maxdepth 3 -type f -iname '*faithdiff*' -printf '%p\n' || true
source .venv/bin/activate && echo 'Original link:' && readlink checkpoints/FaithDiff.bin || true && HASH=$(readlink checkpoints/FaithDiff.bin | sed 's#^../../blobs/##') && echo "Hash: $HASH" && TARGET="$HOME/.cache/huggingface/hub/blobs/$HASH" && if [ -f "$TARGET" ]; then echo "Found cache: $TARGET"; rm -f checkpoints/FaithDiff.bin; ln -s "$TARGET" checkpoints/FaithDiff.bin; else echo 'Cache not found at expected path, searching...'; FOUND=$(find "$HOME/.cache/huggingface" -type f -name "$HASH" -print -quit 2>/dev/null); if [ -n "$FOUND" ]; then echo "Found: $FOUND"; rm -f checkpoints/FaithDiff.bin; ln -s "$FOUND" checkpoints/FaithDiff.bin; else echo 'Could not locate FaithDiff.bin payload in cache.'; fi; fi && echo 'New link:' && readlink -f checkpoints/FaithDiff.bin || true && PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True python -u gradio_demo.py --no_llava --cpu_offload --use_fp8 | cat
cap
gpustat
python stam.py 
cd ~/.cache/huggingface/hub/models--SG161222--RealVisXL_V4.0/
ll
file . --type f -iname "*safetensors"
file . -type f -iname "*safetensors"
file . -type f -iname '*safetensors'
find . -type f -iname '*safetensors'
find . -type f -iname '*tensors*'
cap
python - <<'PY'
from huggingface_hub import hf_hub_download
# this downloads FaithDiff.bin into your cache; move/copy into ./checkpoints or set cache dir
path = hf_hub_download(repo_id="jychen9811/FaithDiff", filename="FaithDiff.bin")
print("Downloaded to:", path)
PY

mv /home/ehud.gordon/.cache/huggingface/hub/models--jychen9811--FaithDiff/snapshots/36161f73a33efabe8fee5c22115ab1be69b48d11/FaithDiff.bin checkpoints/
ll
ls -lh ./checkpoints/llava_v1.5-13b | sed -n '1,120p'
ls -lh ./checkpoints/VAE_FP16/sdxl.vae.safetensors
ls -lh ./checkpoints/Real_4_SDXL/RealVisXL_V4.0.safetensors
python gradio_demo.py
pip install gradio
which uv
uv venv
uv venv --seed
ll
rm .venv/
uv venv --seed
rm .venv/
uv init --bare
ll
uv add -r requirements.txt 
which python
cod
which python
source .venv/bin/activate 
which python
which pip
uv venv --seed
python -m ensurepip --upgrade
python -m pip install --upgrade pip
which pip
python gradio_demo.py 
which python
which pip
pip install gradio
uv add gradio
uv sync
python gradio_demo.py 
uv add cv2
deactivate 
rm .venv/
rm uv.lock 
rm pyproject.toml 
uv venv --python 3.10
source .venv/bin/activate 
uv pip install absl-py==2.1.0 accelerate==1.1.1 addict==2.4.0 aiofiles==23.2.1 aiohappyeyeballs==2.4.4 aiohttp==3.11.11 aiosignal==1.3.2 annotated-types==0.7.0 anyio==4.8.0 asttokens==3.0.0 astunparse==1.6.3 async-timeout==5.0.1 attrs==24.3.0 beautifulsoup4==4.12.3 bitsandbytes==0.45.0 cfgv==3.4.0 click==8.1.8 colorama==0.4.6 contourpy==1.3.1 cycler==0.12.1 datasets==3.2.0 decorator==5.1.1 deepspeed==0.15.1 diffusers==0.28.0 dill==0.3.8 distlib==0.3.9 einops==0.7.0 exceptiongroup==1.2.2 executing==2.1.0 facexlib==0.3.0 fastapi==0.115.6 ffmpy==0.5.0 filterpy==1.4.5 flatbuffers==24.12.23 fonttools==4.55.3 frozenlist==1.5.0 fsspec==2024.9.0 ftfy==6.3.1 future==1.0.0 gast==0.6.0 gdown==5.2.0 google-pasta==0.2.0 gradio==5.23.1 gradio-client==1.8.0 grpcio==1.69.0 h11==0.14.0 h5py==3.12.1 hjson==3.1.0 httpcore==1.0.7 httpx==0.28.1 huggingface-hub==0.25.2 icecream==2.1.3 identify==2.6.5 imageio==2.34.0 imageio-ffmpeg==0.5.1 iniconfig==2.0.0 ipdb==0.13.13 ipython==8.31.0 jedi==0.19.2 keras==3.8.0 kiwisolver==1.4.8 lazy-loader==0.4 libclang==18.1.1 llvmlite==0.43.0 lmdb==1.6.2 loguru==0.7.2 lpips==0.1.4 markdown==3.7 markdown-it-py==3.0.0 matplotlib==3.10.0 matplotlib-inline==0.1.7 mdurl==0.1.2 ml-dtypes==0.4.1 msgpack==1.1.0 multidict==6.1.0 multiprocess==0.70.16 namex==0.0.8 ninja==1.11.1.3 nodeenv==1.9.1 numba==0.60.0 numpy==1.26.4 nvidia-ml-py==12.560.30 omegaconf==2.4.0.dev3 openai-clip==1.0.1 opencv-python==4.9.0.80 opencv-python-headless==4.10.0.84 opt-einsum==3.4.0 optree==0.13.1 orjson==3.10.13 packaging==24.2 pandas==2.2.3 parso==0.8.4 pexpect==4.9.0 pillow==10.4.0 platformdirs==4.3.6 pluggy==1.5.0 pre-commit==4.0.1 prompt-toolkit==3.0.48 propcache==0.2.1 protobuf==5.29.2 psutil==6.1.1 ptyprocess==0.7.0 pure-eval==0.2.3 py-cpuinfo==9.0.0 pyarrow==18.1.0 pydantic==2.10.4 pydantic-core==2.27.2 pydub==0.25.1 pygments==2.19.1 pyiqa==0.1.13 pyparsing==3.2.1 pytest==8.3.4 python-dateutil==2.9.0.post0 python-multipart==0.0.20 pytz==2024.2 regex==2024.11.6 rich==13.9.4 ruff==0.8.6 safetensors==0.4.3 scikit-image==0.25.0 scipy==1.15.0 semantic-version==2.10.0 sentencepiece==0.2.0 shellingham==1.5.4 six==1.17.0 sniffio==1.3.1 soupsieve==2.6 stack-data==0.6.3 starlette==0.41.3 tensorboard==2.18.0 tensorboard-data-server==0.7.2 tensorflow-io-gcs-filesystem==0.37.1 termcolor==2.5.0 tifffile==2024.12.12 timm==1.0.12 tokenizers==0.15.2 tomli==2.2.1 tomlkit==0.12.0 tqdm==4.67.1 traitlets==5.14.3 transformers==4.46.1 typer==0.15.1 tzdata==2024.2 uvicorn==0.34.0 virtualenv==20.28.1 wcwidth==0.2.13 websockets==12.0 werkzeug==3.1.3 wrapt==1.17.2 xxhash==3.5.0 yapf==0.43.0 yarl==1.18.3
uv pip install absl-py accelerate addict aiofiles aiohappyeyeballs aiohttp aiosignal annotated-types anyio asttokens astunparse async-timeout attrs beautifulsoup4 bitsandbytes cfgv click colorama contourpy cycler datasets decorator deepspeed diffusers dill distlib einops exceptiongroup executing facexlib fastapi ffmpy filterpy flatbuffers fonttools frozenlist fsspec ftfy future gast gdown google-pasta gradio gradio-client grpcio h11 h5py hjson httpcore httpx huggingface-hub icecream identify imageio imageio-ffmpeg iniconfig ipdb ipython jedi keras kiwisolver lazy-loader libclang llvmlite lmdb loguru lpips markdown markdown-it-py matplotlib matplotlib-inline mdurl ml-dtypes msgpack multidict multiprocess namex ninja nodeenv numba numpy nvidia-ml-py omegaconf openai-clip opencv-python opencv-python-headless opt-einsum optree orjson packaging pandas parso pexpect pillow platformdirs pluggy pre-commit prompt-toolkit propcache protobuf psutil ptyprocess pure-eval py-cpuinfo pyarrow pydantic pydantic-core pydub pygments pyiqa pyparsing pytest python-dateutil python-multipart pytz regex rich ruff safetensors scikit-image scipy semantic-version sentencepiece shellingham six sniffio soupsieve stack-data starlette tensorboard tensorboard-data-server tensorflow-io-gcs-filesystem termcolor tifffile timm tokenizers tomli tomlkit tqdm traitlets transformers typer tzdata uvicorn virtualenv wcwidth websockets werkzeug wrapt xxhash yapf yarl
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
which python
which pip
python gradio_demo.py 
deactivate 
source .venv/bin/activate 
uv add peft
which pip
pip --version
uv pip install peft
python -u gradio_demo.py --no_llava --cpu_offload --use_fp8
cap
python stam.py 
mkdir -p ./checkpoints/Real_4_SDXL
python stam.py 
cat > requirements.txt << EOF
torch
torchvision 
torchaudio
diffusers
transformers
huggingface-hub
gradio
fastapi
opencv-python
pillow
numpy
matplotlib
scipy
pandas
datasets
accelerate
deepspeed
safetensors
einops
omegaconf
rich
tqdm
ipython
jupyter
EOF

gpustat
git clone git@github.com:JyChen9811/FaithDiff.git
which uv
which uvx
curl -LsSf https://astral.sh/uv/install.sh | less
curl -LsSf https://astral.sh/uv/install.sh | sh
cd FaithDiff/
ll
vim gradio_demo.py 
vim stam.py
conda-activate 
conda env list
conda activate pytorch_env
pip list | grep diff
pip install --upgrade "git+https://github.com/huggingface/diffusers.git@main"
pip install transformers accelerate huggingface_hub safetensors pillow
python -c "from huggingface_hub import login; login()"
git config --global credential.helper store
python -c "from huggingface_hub import login; login()"
vim faithdiff_demo.py
mv Generated\ Image\ August\ 30\,\ 2025\ -\ 2_53PM.jpeg input.jpeg
vim FaithDiff/
vim faithdiff_demo.py 
rm FaithDiff/
ll
cd ~/.cache/huggingface/hub/
ll
rm models--jychen9811--FaithDiff/ models--liuhaotian--llava-v1.5-13b/ models--madebyollin--sdxl-vae-fp16-fix/
ll
rm models--SG161222--RealVisXL_V4.0/
rm models--stabilityai--stable-diffusion-xl-base-1.0/
cd ../../../
ll
pkill -f "woop"
pkill -f "python -m woop"
pkill -f woop
ps aux | grep -i woop | grep -v grep
ps aux | grep -i python | grep -v grep
exit
conda-activate 
cap
python
ll
which python
clauded
ll ~/.claude/
ll ~/.claude/agents/
vim ~/.claude/CLAUDE.md 
vim ~/.claude/settings.json 
vim ~/.claude/settings.local.json 
vim ~/clip_clean/.claude/settings.local.json 
vim .claude/settings.local.json 
evimrc 
ebashrc 
reload
type vim
vim ~/clip_clean/.claude/settings.local.json 
cap
ll .claude/
vim .claude/settings.local.json 
vim .vimrc
exit
echo $DISPLAY
command nvim ~/.vimrc
set showcmd        " shows partially typed commands
exit
command nvim ~/.vimrc
nvim ~/.vimrc
exit
reload
nvim .claude/settings.local.json 
command nvim ~/.bashrc
command nvim ~/.vimrc
echo $XDG_SESSION_TYPE
echo $DISPLAY
loginctl show-session $(loginctl | grep $(whoami) | awk '{print $1}') -p Type
ps -e | grep -E 'Xorg|Xwayland|wayland'
echo #DISPLAY
echo $DISPLAY
command nvim ~/.vimrc
vim ~/.vimrc
echo $DISPLAY
code .
/exit
exit
echo $DISPLAY
which vim
type vim
vim ~/.vimrc
clauded
cd clip_decomp/
vim .claude/settings.local.json 
cap
vim ~/clip_clean/.claude/settings.local.json 
conda activate pytorch_env
claude
ll ~/.claude/agents/
mkdir ~/.claude/commands
type vim
vim ~/.claude/commands/all_tools.md
vim ~/.claude/commands/question.md
clauded
cd data/
ll
ll clip_embeddings/
ll color_objects/
ll
ll dots/
cd CLEVR/
ll
cd single_object/
ll
cd correct_incorrect/
ll
head -n 5 correct.csv
cd ../
ll
md claude_hide
cd clip_decomp/
gits
git init .
gits
rm project_specifications.md 
git add .
git commit -m "init"
cd ../
cd data/
ll
cd C
. "/home/ehud.gordon/.cursor-server/bin/a8e95743c5268be73767c46944a71f4465d05c90/out/vs/workbench/contrib/terminal/common/scripts/shellIntegration-bash.sh"
PYTHONWARNINGS=default /home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam.py | cat
cd clip_decomp/
vim README.md 
vim overview.md 
grep -ri "*csv*" .
grep -ri "*data*" .
ll
grep -ri "csv" .
grep -ri --exclude-dir=__pycache__ "csv" .
vim src/dataio/dataset.py 
vim README.md 
ll data/../
ll ~/data/../
ll ~/data/../../
ll /home/ehud.gordon/data/../../me.levi/136/me.levi/transformer_explainability/dataset/dataset/mscoco/val2017/000000179765.jpg
ll /home/ehud.gordon/data/../../
ll /home/ehud.gordon/data/../../me.levi
ll /home/ehud.gordon/data/../../me.levi/143/
ll /home/ehud.gordon/data/../../me.levi/143/me.levi
ll ~/data/../../me.le
cd data/
cd CLEVR_v1.0/
ll
vim README.txt 
ll images/
cd images/
ll stam/
ll test/
command ls -1 test/ | wc -l
command ls -1 train/ | wc -l
command ls -1 val/ | wc -l
cd ../
ll
cd ../CLEVR/
ll
cd single_object/
ll
cd correct_incorrect_old/
ll
cd ../
ll
rm correct_incorrect_old/
ll embeddings_old/
rm embeddings_old/
ll embeddings/
cd ../
ll
cd single_object/
ll
ll images/
cd ../
cd single_object/
ll embeddings/
cd ../
cd single_object/
mv embeddings/ embeddings_stats/
md embeddings
realpath images/ | clp
command ls images/ | head -n 5
command ls -1 images | wc -l
cd ../
ll
ll two_object/
ll
cd single_object/
ll images_20/
ll
ll embeddings/
ll embeds/ViT-L_14/
cd embeds/ViT-L_14/
vim metadata.csv 
ll
vim cosine_similarities.csv 
cd data/
ll
cd mscoco_val/
ll
ll ../mscoco2/
ll ../mscoco2/mscoco_val/
realpath ../mscoco2/mscoco_val/image_entries.pkl 
realpath ../mscoco2/mscoco_val/image_entries.pkl | clp
cd ../../../
cd /home1/
cd datasets/
ll
cd ../me.levi/
ll
cd 143/
ll
cd me.levi/
ll
cd pc_classification/
ll
find . -type f -iname "*coco*"
grep -ri "coco" .
cd ../
ll
cd ../
ll
cd ehud.gordon/data/
ll
ll mscoco2/
ll mscoco2/mscoco_val/
ll mscoco_val/
cd mscoco_val/
ll
realpath image_entries.pkl | clp
cd ../
ll
cd ImageNet/
ll
cd ILSVRC2012_img_train/
ll
cd n01440764/
ll
command ls | wc -l
cd ../
ll
cd ../
ll
cd ImageNet_train/
ll
ll ILSVRC2012_img_train/
ll
rm image_entries_wrong.pkl 
cat map_clsloc.txt 
ll
realpath image_entries.pkl | clp
cd ../../
ll
cd ImageNet/
ll
cd ILSVRC2012_img_train/
ll
cd ../
cd ImageNet_train/
ll
cat map_clsloc.txt 
realpath map_clsloc.txt | clp
ll
ll ILSVRC2012_img_train/
realpath ILSVRC2012_img_train/ | clp
ll
realpath image_entries.pkl | clp
ll
cd
git clone git@github.com:sarahESL/AlignCLIP.git
cd AlignCLIP/
clauded
cd ../
cap
codex
cd ../
npm install -g @openai/codex@latest
cd clip_decomp/
codex
cat AGENTS.md
cd ../
which npx
npm install -g @google/gemini-cli
cd clip_decomp/
gemini
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam4.py
ll /home1/ehud.gordon/data/CLEVR/single_object/images_20/
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam4.py
ll ~/data/mscoco2/
ll ~/data/mscoco2/mscoco_val/
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam5.py
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam6.py
cap
pip install -U "huggingface_hub[cli]"
hf auth token
hf auth login
hf auth whoami
hf auth login
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam6.py
python stam6.py 
pip install open_clip_torch
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam6.py
python
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam6.py
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam3.py
ll /home1/ehud.gordon/data/CLEVR/single_object/embeds
rm /home1/ehud.gordon/data/CLEVR/single_object/embeds/ViT-L_14/
gpustat
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam.py
md embed_scripts
mv stam.py embed_scripts/clevr_embed.py
mv stam2.py embed_scripts/clevr_embed_gemini.py
wc -l /home1/ehud.gordon/data/CLEVR/single_object/embeds/ViT-L_14/metadata.csv
which codex
. "/home/ehud.gordon/.cursor-server/bin/a8e95743c5268be73767c46944a71f4465d05c90/out/vs/workbench/contrib/terminal/common/scripts/shellIntegration-bash.sh"
ln -s CLAUDE.md AGENTS.md
claude
cd clip_decomp/
codex
. "/home/ehud.gordon/.cursor-server/bin/a8e95743c5268be73767c46944a71f4465d05c90/out/vs/workbench/contrib/terminal/common/scripts/shellIntegration-bash.sh"
cd /home/ehud.gordon/clip_decomp && python test_logging_stderr.py
cd /home/ehud.gordon/clip_decomp && python -c "
import logging
from src.utils.logging import setup_logging

# Test with string
logger1 = setup_logging(level='DEBUG')
print('✅ String level works')

# Test with logging constant
logger2 = setup_logging(level=logging.INFO)
print('✅ Integer level works')

logger1.info('Test message from string logger')
logger2.info('Test message from integer logger')
"
cd /home/ehud.gordon/clip_decomp && python -c "
from run_clevr_attribute_decomposition import setup_experiment_logging
from pathlib import Path
import tempfile

# Test the function that was causing the error
with tempfile.TemporaryDirectory() as tmpdir:
    run_dir = Path(tmpdir)
    setup_experiment_logging(run_dir, debug=True)
    print('✅ setup_experiment_logging works with debug=True')
    
    setup_experiment_logging(run_dir, debug=False)
    print('✅ setup_experiment_logging works with debug=False')
"
cd /home/ehud.gordon/clip_decomp && python -c "
import logging
import sys
from pathlib import Path
import tempfile

# Import just the logging parts to avoid torch dependency
sys.path.insert(0, 'src')
from utils.logging import setup_logging

# Simulate what setup_experiment_logging does
def test_setup_experiment_logging(run_dir, debug=False):
    log_level = logging.DEBUG if debug else logging.INFO
    
    # Create logs directory within the run directory
    log_dir = run_dir / 'logs'
    log_dir.mkdir(parents=True, exist_ok=True)
    
    # Configure logging with both file and console output
    setup_logging(
        log_file=log_dir / 'clevr_experiment.log',
        level=log_level,
        format_string='%(name)s - %(levelname)s - %(message)s'
    )

# Test the function that was causing the error
with tempfile.TemporaryDirectory() as tmpdir:
    run_dir = Path(tmpdir)
    test_setup_experiment_logging(run_dir, debug=True)
    print('✅ setup_experiment_logging works with debug=True')
    
    test_setup_experiment_logging(run_dir, debug=False)
    print('✅ setup_experiment_logging works with debug=False')
"
vim README.md 
cd clip_decomp/
vim README.md 
cd ~/data
ll
cd CLEVR/single_object/
ll
ll embeds/
ll embeds/ViT-L_14/
vim embeds/ViT-L_14/metadata.csv 
cd ,,.
cd ../
ll
cd single_object/
ll
ll embeddings/
rm embeddings/
ll images_20/
realpath images/ | clp
cd
cd claude_hide/
ll
cd agents_clip_decomp/
ll
cd ../
cd ../clip_decomp/
ll
cd embed_scripts/
ll
vim clevr_embed_gemini.py 
python
cap
python
cd outputs/runs/
ls
cd attr_subspace_ViT-B_32_1756668323/
ll
cd decompositions/
ll
cd ../edits/
ll
cd ../metrics/
ll
vim metrics_evaluate_20250831_222529.json 
cd ../
ll
cd summaries/
ll
vim summary_attr_subspace_ViT-B_32_1756668323.json 
cd ../../../
cd ../
ll
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python run_clevr_attribute_decomposition.py --config configs/clevr_attribute_subspace_experiment.yaml
mv methodA.md ../claude_hide/
cd clip_decomp/
codex
claude
cap
realpath ~/data/CLEVR/single_object/images/ | clp
realpath ~/data/CLEVR/single_object/images/
realpath ~/data/CLEVR/single_object/embeds/ViT-L_14/metadata.csv 
ll stam*.py
mv stam*.py ../claude_hide/
ll /home/ehud.gordon/clip_decomp/data/metadata/clevr_attributeSpace_metadata.csv
cat /home/ehud.gordon/clip_decomp/data/metadata/clevr_attributeSpace_metadata.csv | head -n 5
cap
python run_clevr_attribute_decomposition.py --config configs/clevr_attribute_subspace_experiment.yaml
clauded
cd clip_decomp/
ll
clauded
clear
ll ~/data/CLEVR/single_object/embeds/
ll ~/data/CLEVR/single_object/embeds/ViT-L_14/
realpath ~/data/CLEVR/single_object/embeds/ViT-L_14/metadata.csv | clp
clauded
vim README.md 
clauded
clear
cd clip_decomp/
ll
cat overview.md 
vim overview.md 
vim README.md 
clauded
rm overview.md 
clear
gemini
vim GEMINI.md 
vim overview.md 
cat overview.md | clp
cd clip_decomp/
vim README.md 
ll clipClean/
ll clipClean/unclip/
echo "a" | clp
echo $DISPLAY
exit
. "/home/ehud.gordon/.cursor-server/bin/a8e95743c5268be73767c46944a71f4465d05c90/out/vs/workbench/contrib/terminal/common/scripts/shellIntegration-bash.sh"
echo $DISPLAY
ps aux | grep -i x11
which xclip
xset q
netstat -ln | grep :6010
ss -ln | grep :6010
DISPLAY=127.0.0.1:10.0 xclip -selection clipboard <<< "test"
ping -c 1 localhost
getent hosts localhost
ls -la ~/.Xauth*
echo $XAUTHORITY
xauth list
DISPLAY=3dgpubatch1:10.0 echo "test" | xclip -selection clipboard
DISPLAY=:10.0 echo "test2" | xclip -selection clipboard
export DISPLAY=:10.0 && echo "test3" | xclip -selection clipboard
echo $DISPLAY
xauth add :10 MIT-MAGIC-COOKIE-1 561e1018d90e70912b21951568b55d41
echo "test4" | xclip -selection clipboard
xauth add localhost:10 MIT-MAGIC-COOKIE-1 561e1018d90e70912b21951568b55d41
xauth add 127.0.0.1:10 MIT-MAGIC-COOKIE-1 561e1018d90e70912b21951568b55d41
export DISPLAY=localhost:10.0 && echo "test5" | xclip -selection clipboard
xauth list | grep :10
export DISPLAY=localhost/unix:10 && echo "test6" | xclip -selection clipboard
export DISPLAY=3dgpubatch1/unix:10 && echo "test7" | xclip -selection clipboard
which xsel
which wl-copy
export DISPLAY=:10 && echo "test8" | xclip -selection clipboard
hostname
xauth extract - 3dgpubatch1/unix:10 | xauth merge -
echo "working" | DISPLAY=:10 xclip -sel clip 2>&1
cp ~/.Xauthority ~/.Xauthority.backup
gemini
clear
codex
cd ../clipClean/
command ls ~/data/CLEVR/single_object/images/ | head -n 2
realpath ~/data/CLEVR/single_object/images/ | clp
echo $DISPLAY
echo "a" | clp
echo $DISPLAY
echo "ab" | xclip -selection clipboard
echo $DISPLAY
echo "a" | clp
cap
codex
cd unclip/
echo "a" | clp
echo $DISPLAY
echo "a" | clp
cd clipClean/
ll
gits
git add .
git commit -m "unclip"
gits
cd unclip/
gemini
cd ../
gemini
clear
realpath ~/data/CLEVR/single_object/images/ | clp
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/scripts/pipeline_unclip_interpolation_demo.py
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/pipeline_unclip_interpolation_demo.py
gpustat
cd ../
cp clip_decomp/ ~/data/
conda activate pytorch_env
claude
ebashrc 
cd ~/data/mscoco_val/
ll
wget http://images.cocodataset.org/annotations/annotations_trainval2017.zip
unzip annotations_trainval2017.zip
rm annotations_trainval2017.zip 
ll
cd annotations/
ll
rm captions_train2017.json instances_train2017.json person_keypoints_train2017.json 
cat captions_val2017.json | head -n 5
cd ../
cat captions_val2017.json | head -n 5 | grep -i "image"
cd mscoco_val/
cat captions_val2017.json | head -n 5 | grep -i "image"
cd annotations/
ll
cat captions_val2017.json | head -n 5 | grep -i "image"
cat captions_val2017.json | head -n 5 | grep -i "image of"
cd ../
ll
cd ../
cd ImageNet/
ll
cd ILSVRC2012_img_train/
ll
cd ../
ll
cd ImageNet_train/
ll
cd ../
cd ../mscoco_val/
ll
realpath clip_class_name_embeddings_L14.pt | clp
ll
cd ~/data/
ll
ll mscoco2/
ll mscoco2/mscoco_val/
ll mscoco2/
ll mscoco_val/
cd mscoco_val/
ll
wget http://images.cocodataset.org/zips/val2017.zip
unzip val2017.zip 
ll
du -h val2017/
rm val2017/
unzip val2017.zip 
ll
rm val2017.zip 
exit
conda activate pytorch_env
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam.py
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam2.py
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam.py
gpustat
python
/home/ehud.gordon/miniforge3/envs/pytorch_env/bin/python /home/ehud.gordon/clip_decomp/stam.py
git check-ignore -v .claude/settings.local.json
cat /home/ehud.gordon/.config/git/ignore
vim ~/.config/git/ignore 
conda activate pytorch_env
cd ~/data/
ll
ll claude
md claude
ll .gitignore
vim .gitignore
vim .gitignore 
