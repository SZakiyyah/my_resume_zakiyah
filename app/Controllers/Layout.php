<?php

namespace App\Controllers;

use App\Models\EducationModel;
use App\Models\ZakiyahModel;

class Layout extends BaseController
{
    protected $portfolio;
    protected $education;
    public function __construct()
    {
        $this->portfolio = new ZakiyahModel();
        $this->education = new EducationModel();
    }
    public function index(): string
    {
  
        $resume = $this->portfolio->findAll();
        $school = $this->education->findAll();

        $data =[
            'resume' => $resume,
            'school' => $school
        ];
        
        return view('layout/home',$data);
    }
}