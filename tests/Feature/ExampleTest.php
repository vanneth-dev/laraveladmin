<?php
/**
 * Copyright (c) 2025 Developer’s Tak Vanneth
 *
 * Released under the MIT License.
 * See the LICENSE file for full details.
 */

it('returns a successful response', function () {
    $response = $this->get('/');

    $response->assertStatus(200);
});
