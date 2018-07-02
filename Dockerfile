FROM tjwatson/ol:springboot2 as staging

# Stage the fat JAR
COPY target/spring-petclinic-*.jar /staging/petclinicFat.jar

# Thin the fat application; stage the thin app output and the library cache
RUN springBootUtility thin \
 --sourceAppPath=/staging/petclinicFat.jar \
 --targetThinAppPath=/staging/petclinicThin.jar \
 --targetLibCachePath=/staging/lib.index.cache

# Final stage, only copying the liberty installation (includes primed caches)
# and the lib.index.cache and thin application
FROM tjwatson/ol:springboot2

COPY --from=staging /staging/lib.index.cache /lib.index.cache

COPY --from=staging /staging/petclinicThin.jar /config/dropins/spring/petclinicThin.jar

