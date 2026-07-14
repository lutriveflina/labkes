<?php

namespace Tests\Unit;

use App\Models\LayananPuskesmas;
use Illuminate\Database\Eloquent\SoftDeletes;
use PHPUnit\Framework\TestCase;

class LayananPuskesmasTest extends TestCase
{
    public function test_plain_description_removes_unsafe_html(): void
    {
        $service = new LayananPuskesmas([
            'deskripsi' => '<p>Uji air</p><script>alert("xss")</script><br>Hasil akurat',
        ]);

        $this->assertStringNotContainsString('<script>', $service->plain_description);
        $this->assertStringContainsString('Uji air', $service->plain_description);
        $this->assertStringContainsString('Hasil akurat', $service->plain_description);
    }

    public function test_model_uses_soft_deletes(): void
    {
        $this->assertContains(SoftDeletes::class, class_uses_recursive(LayananPuskesmas::class));
    }
}
