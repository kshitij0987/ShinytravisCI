## Launch

**Test application:**
```
docker-compose up -d sampleshinyapp
```

**Testing infrastructure:**
```
docker-compose up -d hub chrome
```

**Robot Framework Tests with browsers:**
```
docker-compose run test-gc
```

**Building on new system**
```
docker-compose pull
docker-compose build
docker-compose run test-gc
```

**Reports:**  
After test run,test output files will appear in /tests/out/ directory in the test-gc container. This can be volume mounted to any folder from the docker compose file.

**View & Debug Execution:**  
Download vnc viewer to connect to the browsers (localhost:5901). When prompted for password the default is `secret`.

## Cleanup
```
docker-compose down
```
