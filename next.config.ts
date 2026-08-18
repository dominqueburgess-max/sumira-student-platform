import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  outputFileTracingIncludes: {
    "/api/lessons/[lessonId]/video": ["./node_modules/ffmpeg-static/ffmpeg", "./src/assets/**"],
  },
};

export default nextConfig;
