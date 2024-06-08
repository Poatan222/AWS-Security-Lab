resource "aws_ecs_cluster" "vulnerable_cluster" {
  name = "vulnerable-cluster"
}

resource "aws_ecs_task_definition" "vulnerable_task" {
  family                   = "vulnerable-task"
  container_definitions    = <<DEFINITION
[
  {
    "name": "vulnerable-app",
    "image": "nginx",
    "memory": 128,
    "cpu": 128,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ]
  }
]
DEFINITION
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
}