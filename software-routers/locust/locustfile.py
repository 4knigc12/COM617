from locust import HttpUser, task , constant

class HelloWorld(HttpUser):
    # wait_time = constant(1)
    host = "http://10.228.0.100" # nginx-traffic-testing pod

    @task
    def test(self):
        self.client.get("/")