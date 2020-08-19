# diagram.py
from diagrams import Cluster, Diagram
from diagrams.aws.integration import Appsync


with Diagram("API", show=False):
     Appsync("Graph-API")
