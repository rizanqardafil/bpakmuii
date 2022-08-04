<?php 
namespace App\Controllers;


class ContactController extends BaseController{
    protected $contact_model;

    public function __construct()
    {
        helper(['form', 'url']);
    }

    public function index(){
        $data = [
            'titles' => 'Contact | BPA KM UII',
            'config' => $this->config->getConfig()
        ];

        return view('pages/kontak/index', $data);
    }

    public function sendEmail(){
        $inputs = $this->validate([
            'email' => [
                'label' => 'E-Mail',
                'rules' => 'required|valid_email',
                'errors' => [
                    'required' => 'Please enter your e-mail address.',
                    'valid_email' => 'Please entera valid e-mail address'
                ]
            ],
            'subject' => [
                'label' => 'Subject',
                'rules' => 'required|min_length[5]',
                'errors' => [
                    'required' => 'Please enter a subject',
                    'min_length' => 'Please enter a subject with at least 5 characters'
                ]
            ],
            'message' => [
                'label' => 'Message',
                'rules' => 'required|min_length[10]',
                'errors' => [
                    'required' => 'Please enter a message',
                    'min_length' => 'Please enter a message with at least 10 characters'
                ]
            ]
        ]);

        if(!$inputs){
            return view('pages/kontak/index', [
                'validation' => $this->validator
            ]);
        }else{
            $email = $this->request->getPost('email');
            $subject = $this->request->getPost('subject');
            $message = $this->request->getPost('message');

            $mail = \Config\Services::email();
            $mail-> setFrom($email);
            $mail-> setTo('20312606@students.uii.ac.id');
            $mail-> setSubject($subject);
            $mail-> setMessage($message);
            if($mail->send()){
                session()->setFlashdata('success', 'Your message has been sent successfully');
                return redirect()->to('/contact');
            }else{
                session()->setFlashdata('error', 'Sorry, your message could not be sent');
                return redirect()->to('pages/kontak/index');
            }
        }
    }
}
?>