import os

from bestconfig import Config

if __name__ == '__main__':
    # PLOT_SIZE = 108836657475
    settings = Config()
    settings = Config(settings.get("achi.config_path"))
    plots_paths = settings.get("harvester.plot_directories")
    for plots_path in plots_paths:
        print(os.path.join(plots_path, '', ''))
