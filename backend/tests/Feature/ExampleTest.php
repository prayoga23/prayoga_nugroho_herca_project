<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class PembayaranTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_get_all_pembayaran()
    {
        $response = $this->get('/api/pembayaran'); // perhatikan penambahan "s" di "pembayarans"

        $response->assertStatus(200);
    }
}
