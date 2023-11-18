<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Pembayaran;

class PembayaranTest extends TestCase
{
    use RefreshDatabase;

    public function test_can_get_all_pembayarans()
    {
        $response = $this->get('/api/pembayarans');

        $response->assertStatus(200);
    }
}
