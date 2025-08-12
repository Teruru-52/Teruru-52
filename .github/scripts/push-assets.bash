      - name: "collect metrics images"
        run: |
          mkdir tmp
          sudo cp /metrics_renders/metrics-1.svg ./tmp/
          sudo cp /metrics_renders/metrics-2.svg ./tmp/
          sudo chown -R "$USER:$USER" tmp
          sudo chmod 644 tmp/*.svg
          mv tmp/metrics-1.svg assets/
          mv tmp/metrics-2.svg assets/
      - name: "commit metrics updates"
        run: bash .github/scripts/push-assets.bash