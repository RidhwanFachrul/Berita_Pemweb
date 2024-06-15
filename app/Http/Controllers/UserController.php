<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Pastikan user yang mengakses adalah admin
        if (Auth::user()->level !== 'admin') {
            abort(403, 'Unauthorized action.');
        }

        // Ambil semua data user terbaru
        $users = User::latest()->get();

        return view('user.index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // Pastikan user yang mengakses adalah admin
        if (Auth::user()->level !== 'admin') {
            abort(403, 'Unauthorized action.');
        }

        return view('user.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validasi input dari form
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
            'level' => 'required|in:admin',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        // Buat user baru
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'level' => $request->level,
        ]);

        return redirect()->route('admin.users.index')->with('success', 'User has been created');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        // Pastikan user yang mengakses adalah admin
        if (Auth::user()->level !== 'admin') {
            abort(403, 'Unauthorized action.');
        }

        // Cari user berdasarkan ID
        $user = User::findOrFail($id);

        return view('admin.users.update', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Validasi input dari form
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,email,' . $id,
            'level' => 'required|in:admin',
        ]);

        // Cari user berdasarkan ID
        $user = User::findOrFail($id);

        // Jika password diisi, tambahkan validasi dan update
        if ($request->filled('password')) {
            $request->validate(['password' => 'required|string|min:8']);
            $data['password'] = Hash::make($request->password);
        }

        // Update data user
        $user->update($data);

        return redirect()->route('admin.users.index')->with('success', 'User has been updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    
     public function destroy($id)
     {
         try {
             // Cari user berdasarkan ID
             $user = User::findOrFail($id);
     
             // Hapus user
             $user->delete();
     
             return response()->json(['success' => 'User has been deleted']);
         } catch (\Exception $e) {
             // Tangkap error jika terjadi
             return response()->json(['error' => 'Failed to delete user.'], 500);
         }
}
}