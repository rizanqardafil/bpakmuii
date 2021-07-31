<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->library('calendar', $this->_setting());
	}

	function index($year = null, $mon = null){
		$site  		= $this->mConfig->list_config();
		$slider     = $this->mSlider->listSlider();
		$sekilasperusahaan = $this->mTentangKami->listSekilasPerusahaan();
		$organisasi = $this->mOrganisasi->listOrganisasi();
		$kegiatan   = $this->mKegiatan->listKegiatan();
		$year = (empty($year) || !is_numeric($year))?  date('Y') :  $year;
		$mon  = (empty($mon) || !is_numeric($mon))?  date('m') :  $mon;
		
		$date = $this->mynotes->getCalendar($year, $mon);
		$data = array(
					'title'	=> 'Home',
                    'site'   => $site,
                    'sliders' => $slider,
					'active' => 'home',
					'sekilasperusahaan' => $sekilasperusahaan,
					'organisasi' => $organisasi,
					'notes' => $this->calendar->generate($year, $mon, $date),
					'year'  => $year,
					'mon'   => $mon,
				);
		$this->load->view('home2', $data);
	}
	
	// untuk konversi nama bulan
	function _month($mon){
		$mon = (int) $mon;
		switch($mon){
			case 1 : $mon = 'Januari'; Break;
			case 2 : $mon = 'Februari'; Break;
			case 3 : $mon = 'Maret'; Break;
			case 4 : $mon = 'April'; Break;
			case 5 : $mon = 'Mei'; Break;
			case 6 : $mon = 'Juni'; Break;
			case 7 : $mon = 'Juli'; Break;
			case 8 : $mon = 'Agustus'; Break;
			case 9 : $mon = 'September'; Break;
			case 10 : $mon = 'Oktober'; Break;
			case 11 : $mon = 'November'; Break;
			case 12 : $mon = 'Desember'; Break;
		}
		return $mon;
	}
	
	// setting tampilan kalender
	function _setting(){
		return array(
			'start_day' 		=> 'monday',
			'show_next_prev' 	=> true,
			'next_prev_url' 	=> site_url('calender/notes'),
			'month_type'   		=> 'long',
            'day_type'     		=> 'short',
			'template' 			=> '{table_open}<table class="date" width="95%">{/table_open}
								   {heading_row_start}&nbsp;{/heading_row_start}
								   {heading_previous_cell}<caption><a href="{previous_url}" class="prev_date" title="Previous Month">&lt;&lt;</a>{/heading_previous_cell}
								   {heading_title_cell}{heading}{/heading_title_cell}
								   {heading_next_cell}<a href="{next_url}" class="next_date"  title="Next Month">&gt;&gt;</a></caption>{/heading_next_cell}
								   {heading_row_end}<col><col class="weekday" span="5"><col class="weekend_sun">{/heading_row_end}
								   {week_row_start}<thead><tr>{/week_row_start}
								   {week_day_cell}<th>{week_day}</th>{/week_day_cell}
								   {week_row_end}</tr></thead><tbody>{/week_row_end}
								   {cal_row_start}<tr>{/cal_row_start}
								   {cal_cell_start}<td>{/cal_cell_start}
								   {cal_cell_content}<div class="kactive act_note" val="{day}" title="Edit/Hapus catatan untuk tanggal {day}">{day}</div><div class="notes">{content}</div></div>{/cal_cell_content}
								   {cal_cell_content_today}<div class="t_kactive" title="Edit/Hapus catatan untuk tanggal {day}">{day}</div><div class="t_notes">{content}</div>{/cal_cell_content_today}
								   {cal_cell_no_content}{day}</div>{/cal_cell_no_content}
								   {cal_cell_no_content_today}<div class="today" title="Tambah catatan untuk tanggal {day}">{day}</div>{/cal_cell_no_content_today}
								   {cal_cell_blank}&nbsp;{/cal_cell_blank}
								   {cal_cell_end}</td>{/cal_cell_end}
								   {cal_row_end}</tr>{/cal_row_end}
								   {table_close}</tbody></table>{/table_close}');
	}
}
?>
