<?php

namespace App\Models;

use CodeIgniter\Model;

class GaleriModel extends Model
{
    protected $table = 'galeri_foto';
    protected $primaryKey = "id_galeri_foto";
    protected $useTimestamps = true;
    protected $allowedFields = ['nama_foto', 'slug_galeri_foto', 'path_foto', 'id_album'];

    public function getAlbum($limit = 0)
    {
        $builder = $this->db->table('album');
        $builder->select('id_album, nama_album, slug_album, path_cover');
        $builder->orderBy('album.created_at', 'DESC');

        if (!$limit) {
            $result = $builder->get()->getResult();

            return $result;
        }

        $result = $builder->get($limit)->getResult();

        return $result;
    }

    public function getImage($slug_album = '')
    {
        $builder = $this->db->table($this->table);
        $builder->select('galeri_foto.id_galeri_foto, 
        galeri_foto.nama_foto, galeri_foto.slug_galeri_foto, galeri_foto.path_foto,
        album.nama_album, album.slug_album');
        $builder->join('album', 'album.id_album = galeri_foto.id_album', 'left');
        $builder->orderBy('galeri_foto.created_at', 'DESC');

        if ($slug_album) {
            $builder->where('album.slug_album', $slug_album);
        }

        $results = $builder->get()->getResult();

        return $results;
    }

    public function getVideo($limit = 0)
    {
        $builder = $this->db->table('galeri_video');
        $builder->select('id_galeri_video, nama_video, slug_galeri_video, path_video');
        $builder->orderBy('created_at', 'DESC');

        $results = $builder->get(null, 0, false)->getResult();

        if ($limit) {
            $results = $builder->get($limit)->getResult();
        }

        foreach ($results as $result) {
            $result->path_video = $this->getUniqueCode($result->path_video);
        }

        return $results;
    }

    public function getUniqueCode($url_link)
    {
        $url_link = trim($url_link);
        $unique_token = '';
        $link_length = strlen($url_link);
        $slash_position = strrpos($url_link, '/');
        $equal_position = strrpos($url_link, '=');

        $unique_token = substr($url_link, $slash_position + 1, $link_length - 1);

        if ($equal_position) {
            $unique_token = substr($url_link, $equal_position + 1, $link_length - 1);
        }

        return $unique_token;
    }
}