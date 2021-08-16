<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('BerandaController');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'BerandaController::index');
$routes->get('/beranda', 'BerandaController::index');
$routes->get('/produk', 'ProdukController::index');
$routes->get('/produk/detail', 'ProdukController::detail');
$routes->get('/investor', 'InvestorController::index');
$routes->get('/galeri', 'GaleriController::index');
$routes->get('/galeri/foto', 'GaleriController::foto');
$routes->get('/galeri/video', 'GaleriController::video');
$routes->get('/artikel', 'ArtikelController::index');
$routes->get('/artikel/detail', 'ArtikelController::detail');
$routes->get('/tentang', 'TentangController::index');

// Admin Routes
$routes->get('/admin/login', 'Admin\Auth::index');
$routes->post('/admin/auth', 'Admin\Auth::auth');
$routes->get('/admin/logout', 'Admin\Auth::logout', ['filter' => 'auth']);
$routes->get('/admin/dashboard', 'Admin\Auth::dashboard', ['filter' => 'auth']);
$routes->get('/admin/config', 'Admin\Config::index', ['filter' => 'auth']);
$routes->get('/admin/icon-config', 'Admin\Config::icon_config', ['filter' => 'auth']);
$routes->get('/admin/logo-config', 'Admin\Config::logo_config', ['filter' => 'auth']);
$routes->get('/admin/users', 'Admin\Users::index', ['filter' => 'auth']);
$routes->get('/admin/users/(:segment)', 'Admin\Users::edit/$1', ['filter' => 'auth']);
$routes->post('/admin/users/save', 'Admin\Auth::save', ['filter' => 'auth']);
$routes->post('/admin/users/update/(:segment)', 'Admin\Auth::update/$1', ['filter' => 'auth']);
$routes->post('/admin/users/delete', 'Admin\Auth::delete', ['filter' => 'auth']);

// Admin Produk Kami Routes
$routes->get('/admin/produk', 'Admin\Produk_Kami\Produk::index', ['filter' => 'auth']);
$routes->get('/admin/produk/tambah', 'Admin\Produk_Kami\Produk::tambah', ['filter' => 'auth']);
$routes->get('/admin/produk/edit', 'Admin\Produk_Kami\Produk::edit', ['filter' => 'auth']);

$routes->get('/admin/gambar', 'Admin\Produk_Kami\Gambar::index', ['filter' => 'auth']);
$routes->get('/admin/gambar/tambah', 'Admin\Produk_Kami\Gambar::tambah', ['filter' => 'auth']);
$routes->get('/admin/gambar/edit', 'Admin\Produk_Kami\Gambar::edit', ['filter' => 'auth']);

$routes->get('/admin/paket', 'Admin\Produk_Kami\Paket::index', ['filter' => 'auth']);
$routes->get('/admin/paket/tambah', 'Admin\Produk_Kami\Paket::tambah', ['filter' => 'auth']);
$routes->get('/admin/paket/edit', 'Admin\Produk_Kami\Paket::edit', ['filter' => 'auth']);

$routes->get('/admin/pesanan', 'Admin\Produk_Kami\Pesanan::index', ['filter' => 'auth']);
$routes->get('/admin/pesanan/tambah', 'Admin\Produk_Kami\Pesanan::tambah', ['filter' => 'auth']);
$routes->get('/admin/pesanan/edit', 'Admin\Produk_Kami\Pesanan::tambah', ['filter' => 'auth']);


// Admin Investor routes
$routes->get('/admin/organisasi', 'Admin\Investor\Organisasi::index', ['filter' => 'auth']);
$routes->get('/admin/organisasi/tambah', 'Admin\Investor\Organisasi::tambah', ['filter' => 'auth']);
$routes->get('/admin/organisasi/edit', 'Admin\Investor\Organisasi::edit', ['filter' => 'auth']);

$routes->get('/admin/laporan', 'Admin\Investor\Laporan::index', ['filter' => 'auth']);
$routes->get('/admin/laporan/tambah', 'Admin\Investor\Laporan::tambah', ['filter' => 'auth']);
$routes->get('/admin/laporan/edit', 'Admin\Investor\Laporan::edit', ['filter' => 'auth']);

$routes->get('/admin/gambar_laporan', 'Admin\Investor\Gambar::index', ['filter' => 'auth']);
$routes->get('/admin/gambar_laporan/tambah', 'Admin\Investor\Gambar::tambah', ['filter' => 'auth']);
$routes->get('/admin/gambar_laporan/edit', 'Admin\Investor\Gambar::edit', ['filter' => 'auth']);


// Admin Tentang kami
$routes->get('/admin/tentang-kami', 'Admin\Tentang\VisiMisi::index', ['filter' => 'auth']);
$routes->get('/admin/tentang-kami/tambah', 'Admin\Tentang\VisiMisi::tambah', ['filter' => 'auth']);
$routes->get('/admin/tentang-kami/edit', 'Admin\Tentang\VisiMisi::edit', ['filter' => 'auth']);

$routes->get('/admin/sejarah', 'Admin\Tentang\Sejarah::index', ['filter' => 'auth']);
$routes->get('/admin/sejarah/tambah', 'Admin\Tentang\Sejarah::tambah', ['filter' => 'auth']);
$routes->get('/admin/sejarah/edit', 'Admin\Tentang\Sejarah::edit', ['filter' => 'auth']);

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
