<?php 

namespace App\Controllers\Admin\Investor;

use App\Controllers\BaseController;
use App\Models\Admin\TeamModel;

class Team extends BaseController{
    protected $team_model;

    public function __construct()
    {
        $this->team_model = new TeamModel();
    }

    public function index(){
        $org_team = $this->team_model->getTeam();

        $data = [
            'title' => 'Manajemen Team - Badan Pengelola Aset KM UII',
            'org_team' => $org_team,
            'config' => $this->config->getConfig(),
            'validation'    => \Config\Services::validation()
        ];

        return view('admin/dashboard/investor/team/index', $data);
    }

    public function tambah(){
        $data = [
            'title' => 'Tambah Team - Badan Pengelola Aset KM UII',
            'validation'    =>  \Config\Services::validation(),
            'config'    => $this->config->getConfig()
        ];

        return view('admin/dashboard/investor/team/tambah', $data);
    }

    public function save(){
        if (!$this->request->getVar('csrf_test_name')) {
            session()->setFlashdata('message', 'File gambar kegiatan kami terlalu besar dan melebihi kapasitas server. Silahkan upload file < 8 MB');
            return redirect()->back()->withInput();
        }

        $rules = [
            'kategori_jabatan' => [
                'rules'     =>'required|min_length[1]|max_length[450]',
                'errors'    =>  $this->error_message
            ],
            'jabatan' => [
                'rules'     =>  'required|min_length[3]|max_length[255]',
                'errors'    =>  $this->error_message
            ],
            'nama' => [
                'rules'     =>  'required|min_length[10]|max_length[450]',
                'errors'    =>  $this->error_message
            ],
            'image' => [
                'rules' =>  'uploaded[image]|max_size[image,8024]|is_image[image]|mime_in[image,image/jpg,image/jpeg,image/png]',
                'errors'    => $this->error_message
            ]
        ];

        if (!$this->validate($rules)) return redirect()->to(base_url('/admin/team/tambah'))->withInput();
        

        $kategori_jabatan = $this->request->getPost('kategori_jabatan');
        $jabatan = $this->request->getPost('jabatan');
        $slug_jabatan = url_title($jabatan, '-', true);
        $nama = $this->request->getPost('nama');
        
        $files = $this->request->getFile('image');
        $image_name = substr($files->getName(), 0, strrpos($files->getName(), '.'));
        $image = $image_name . '_' . $files->getRandomName();

        if ($files->getSize() > 1000000) {
            $this->image_compression($files, 'uploaded/images/', $image);
        } else {
            $files->move('uploaded/images/', $image);
        }

        $data = [
            'kategori_jabatan' => $kategori_jabatan,
            'jabatan' => $jabatan,
            'slug_jabatan' => $slug_jabatan,
            'nama' => $nama,
            'image' => $image
        ];

        $this->team_model->save($data);
        session()->setFlashdata('success', 'Berhasil Menambahkan Team Baru');
        return redirect()->to(base_url('admin/team'));
    }

    public function update()
    {
        $slug_jabatan = $this->request->getPost('slug_jabatan');
        $jabatan = $this->request->getPost('jabatan');
        $activity_team = $this->team_model->getTeam($slug_jabatan);

        $jabatan_rules = 'required|min_length[3]|max_length[255]';

        ($jabatan !== $activity_team['jabatan']) ? $jabatan_rules .= '|is_unique[team.jabatan]' :  '';

        $rules = [
            'kategori_jabatan' => [
                'rules' =>  'required|min_length[1]|max_length[450]',
                'errors'    =>  $this->error_message
            ],
            'jabatan'   =>  [
                'rules' =>  $jabatan_rules,
                'errors'    =>  $this->error_message
            ],
            'nama' =>  [
                'rules' =>  'required|min_length[10]|max_length[450]',
                'errors'    =>  $this->error_message
            ],
            'image' =>  [
                'rules' =>  'max_size[image,8024]|is_image[image]|mime_in[image,image/jpg,image/jpeg,image/png]',
                'errors'    => $this->error_message
            ]
        ];

        if (!$this->validate($rules)) return redirect()->to(base_url('/admin/team/edit/' . $slug_jabatan))->withInput();

        $kategori_jabatan = $this->request->getPost('kategori_jabatan');
        $jabatan = $this->request->getPost('jabatan');
        $slug_jabatan = url_title($jabatan, '-', true);
        $nama = $this->request->getPost('nama');

        $files = $this->request->getFile('image');
        $image_old = $this->request->getPost('image');
        $image = $activity_team['image'];

        if ($files->getError() !== 4) {
            $image_name = substr($files->getName(), 0, strrpos($files->getName(), '.'));
            $image = $image_name . '_' . $files->getRandomName();

            if ($files->getSize() > 1000000) {
                $this->image_compression($files, 'uploaded/images/', $image);
            } else {
                $files->move('uploaded/images/', $image);
            }

            // $files->move('uploaded/images/', $image);

            (is_file('uploaded/images/' . $image_old) && $image_old !== 'default.png') ? unlink('uploaded/images/' . $image_old) : '';
        }

        $data = [
            'kategori_jabatan' => $kategori_jabatan,
            'jabatan'     => $jabatan,
            'slug_jabatan' => $slug_jabatan,
            'nama'    => $nama,
            'image' => $image
        ];

        $this->team_model->update($activity_team['id_team'], $data);

        session()->setFlashdata('success', 'Berhasil Mengubah Kegiatan');

        return redirect()->to(base_url('admin/team'));
    }

    public function edit($slug_jabatan){
        $activity_team = $this->team_model->getTeam($slug_jabatan);

        $data = [
            'title' => "Edit Anggota - " . $activity_team['nama'],
            'activity_team'  => $activity_team,
            'config'    => $this->config->getConfig(),
            'validation'    => \Config\Services::validation()
        ];

         return view('admin/dashboard/investor/team/edit', $data);
    }

    public function delete($id_team){
        $activity_team = $this->team_model->find($id_team);

        
         try {
            $this->team_model->delete($id_team);
        } catch (\Exception $e) {
            $message = 'Data berkaitan dengan <b>' . $activity_team['nama'];
            session()->setFlashdata('message', $message);

            return redirect()->to(base_url('admin/team'));
        }

        if (is_file('uploaded/images/' . $activity_team['image']) && $activity_team['image'] !== 'default.png') {
            unlink('uploaded/images/' . $activity_team['image']);
        }

        session()->setFlashdata('success', 'Berhasil Menghapus Produk');

        return redirect()->to(base_url('admin/team'));
        }
}
?>