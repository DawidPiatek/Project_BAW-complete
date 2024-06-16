<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Http\Exceptions\TokenMismatchException;

class VerifyCsrfToken extends Middleware
{
    public function handle(Request $request, Closure $next)
    {
        // Jeśli metoda HTTP to GET, nie sprawdzaj CSRF
        if ($this->isReading($request) || $this->runningUnitTests() ||
            $this->shouldPassThrough($request) || $this->tokensMatch($request)) {
            return $this->addCookieToResponse($request, $next($request));
        }

        throw new TokenMismatchException('CSRF token mismatch.');
    }

    protected function tokensMatch($request)
    {
        $token = $request->input('_token') ?: $request->header('X-CSRF-TOKEN');
        
        return is_string($request->session()->token()) &&
               is_string($token) &&
               hash_equals($request->session()->token(), $token);
    }
}
