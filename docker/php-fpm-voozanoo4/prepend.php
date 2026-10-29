<?php

/**
 * This file is included at the start of each request by the auto_prepend_file directive
 * in the php.ini file. It uses PHP_BINARY_PATH environment variable set during container build.
 *
 * The PHP_BINARY_PATH is configured in the Dockerfile to ensure:
 * - No dynamic shell_exec() calls on every request (security & performance)
 * - Consistent behavior across all requests
 * - Pre-validated binary paths at build time
 */

// PHP_BINARY_PATH is set in the Dockerfile during build time
// Example value: "/usr/bin/nice -10 /usr/local/bin/php"
// If needed at runtime, access it via: getenv('PHP_BINARY_PATH')
