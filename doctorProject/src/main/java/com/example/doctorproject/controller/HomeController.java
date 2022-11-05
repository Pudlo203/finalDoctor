package com.example.doctorproject.controller;

import com.example.doctorproject.dto.RegisterDto;
import com.example.doctorproject.model.Doctor;
import com.example.doctorproject.model.Treatment;
import com.example.doctorproject.model.User;
import com.example.doctorproject.repository.DoctorRepository;
import com.example.doctorproject.repository.SpecializationRepository;
import com.example.doctorproject.repository.TreatmentsRepository;
import com.example.doctorproject.repository.UserRepository;
import com.example.doctorproject.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;

@RequiredArgsConstructor
@Controller
public class HomeController {

    private final UserRepository userRepository;
    private final UserService userService;
    private final TreatmentsRepository treatmentsRepository;
    private final DoctorRepository doctorRepository;
    private final HttpSession session;
    private final SpecializationRepository specializationRepository;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String welcomeForm() {
        return "/home";
    }
    @RequestMapping(value = "", method = RequestMethod.POST)
    public String welcomeSubmit(@RequestParam String spec, @RequestParam String cit, Model model) {
        List<Doctor> doctors = doctorRepository.findAllBySpecializationIgnoreCaseAndCityIgnoreCase(spec, cit);
        model.addAttribute("doctors", doctors);
        return "/homeDoctor";
    }
    @ModelAttribute("spects")
    public List<String> specialization() {
        return Arrays.asList("Ginekolog", "Psycholog", "Ortopeda", "Stomatolog", "Psychiatra", "Chirurg", "Dermatolog", "Okulista");
    }
    @ModelAttribute("cities")
    public List<String> city() {
        return Arrays.asList("Warszawa", "Kraków", "Łódź", "Wrocław", "Poznań", "Szczecin", "Bydgoszcz", "Lublin");
    }



//    @RequestMapping(value = "", method = RequestMethod.POST)
//    public String welcomeSubmit(@RequestParam Long specId, @RequestParam String cit, Model model) {
//        List<Doctor> doctors = doctorRepository.findAllBySpecializationIgnoreCaseAndCityIgnoreCase(specId, cit);
//        model.addAttribute("doctors", doctors);
//        return "/homeDoctor";
//    }
//    @ModelAttribute("spects")
//    public List<Specialization> specializations(){
//        return specializationRepository.findAll();
//    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String welcomeHome() {
        return "/home";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String lorem() {
        return "/about";
    }


    @RequestMapping(value = "/homeTreatments/{specialization}", method = RequestMethod.GET)
    public String chooseYourTreatmentsForm(@PathVariable String specialization, Model model) {
        Long id = specializationRepository.findIdByName(specialization);
        List<Treatment> treatments = treatmentsRepository.findAllBySpecializationId(id);
        model.addAttribute("treatments", treatments);
        return "/treatments";
    }

//    @RequestMapping(value = "/homeTreatments/{id}", method = RequestMethod.POST)
//    public String chooseYourTreatmentsFormSubmit(@PathVariable Long id, Model model) {
//
//        return "/homeTreatments";
//    }

    @ModelAttribute
    public List<Treatment> treatment() {
        return treatmentsRepository.findAll();
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("registerDto", new RegisterDto());
        return "/register";
    }
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(@Valid @ModelAttribute RegisterDto registerDto, BindingResult result){
        User user=null;

        if(!result.hasErrors() ){
            user=userService.registerUser(registerDto);
            if(user!=null) {
                return "redirect:/login";
            }
        }
        return "/register";
    }
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }


}
