# fs_wrapper Dockerfile (wut)

The image `wiiuwut/fs_wrapper` on [Docker Hub](https://hub.docker.com/r/wiiuwut/fs_wrapper/) provides a prebuilt library in the `/artifacts` directory. Copy it into your WUT_ROOT folder.  

Example:  
```
COPY --from=wiiuwut/fs_wrapper:0.1 /artifacts $WUT_ROOT
```
