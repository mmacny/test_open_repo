FROM apache/airflow:2.10.4
COPY requirements.txt /
WORKDIR /workspace

RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt


RUN git config --system codespaces-theme.hide-status 1



# Expose Airflow's default port.
EXPOSE 8080

# Set the default command to bash so users can manually start Airflow (or override as needed).
CMD ["bash"]