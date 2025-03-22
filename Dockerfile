# Use an official Ruby image as base
FROM ruby:3.2

# Install required packages
RUN apt-get update && apt-get install -y build-essential zlib1g-dev

# Set environment variables to install gems in user space
ENV GEM_HOME="/usr/local/bundle"
ENV PATH="$GEM_HOME/bin:$PATH"

# Install Jekyll and Bundler
RUN gem install jekyll bundler

# Create a working directory
WORKDIR /srv/jekyll

# Copy Gemfile and install dependencies
COPY Gemfile Gemfile.lock /srv/jekyll/
RUN bundle install || true  # Ignore errors if Gemfile.lock is missing

# Expose default Jekyll port
EXPOSE 4000

# Default command
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch", "--force_polling"]