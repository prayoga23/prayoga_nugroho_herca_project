<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pembayaran;

class PembayaranController extends Controller
{
    public function index()
    {
        // Mendapatkan semua data pembayaran
        $pembayarans = Pembayaran::all();

        return response()->json($pembayarans);
    }

    public function show($id)
    {
        // Mendapatkan data pembayaran berdasarkan ID
        $pembayaran = Pembayaran::find($id);

        if (!$pembayaran) {
            return response()->json(['message' => 'Pembayaran not found'], 404);
        }

        return response()->json($pembayaran);
    }

    public function store(Request $request)
    {
        // Validasi request
        $request->validate([
            'marketing_id' => 'required|exists:marketings,id',
            'tanggal_pembayaran' => 'required|date',
            'jumlah_pembayaran' => 'required|numeric',
            'metode_pembayaran' => 'required|string',
            'catatan' => 'nullable|string',
        ]);

        // Simpan data pembayaran
        $pembayaran = Pembayaran::create($request->all());

        return response()->json(['message' => 'Pembayaran created successfully', 'data' => $pembayaran], 201);
    }

    public function update(Request $request, $id)
    {
        // Validasi request
        $request->validate([
            'marketing_id' => 'exists:marketings,id',
            'tanggal_pembayaran' => 'date',
            'jumlah_pembayaran' => 'numeric',
            'metode_pembayaran' => 'string',
            'catatan' => 'nullable|string',
        ]);

        // Perbarui data pembayaran
        $pembayaran = Pembayaran::find($id);

        if (!$pembayaran) {
            return response()->json(['message' => 'Pembayaran not found'], 404);
        }

        $pembayaran->update($request->all());

        return response()->json(['message' => 'Pembayaran updated successfully', 'data' => $pembayaran]);
    }

    public function destroy($id)
    {
        // Hapus data pembayaran berdasarkan ID
        $pembayaran = Pembayaran::find($id);

        if (!$pembayaran) {
            return response()->json(['message' => 'Pembayaran not found'], 404);
        }

        $pembayaran->delete();

        return response()->json(['message' => 'Pembayaran deleted successfully']);
    }
}
