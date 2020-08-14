from azureml.core import Workspace
from azureml.core.webservice import Webservice

# Requires the config to be downloaded first to the current working directory
ws = Workspace.from_config()

# Set with the deployment name
name = ""

# load existing web service
service = Webservice(name=name, workspace=ws)
logs = service.get_logs()

for line in logs.split('\n'):
    print(line)
