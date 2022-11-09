package com.example.doctorproject.controller;

import com.example.doctorproject.dto.RegisterDto;
import com.example.doctorproject.model.Clinic;
import com.example.doctorproject.model.Doctor;
//import com.example.doctorproject.model.History;
import com.example.doctorproject.model.Treatment;
import com.example.doctorproject.model.User;
import com.example.doctorproject.repository.*;
import com.example.doctorproject.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.validation.constraints.Size;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static org.mindrot.jbcrypt.BCrypt.hashpw;

@RequiredArgsConstructor
@Controller
@SessionAttributes("User")
public class HomeController {

    private final UserRepository userRepository;
    private final UserService userService;
    private final TreatmentsRepository treatmentsRepository;
    private final DoctorRepository doctorRepository;
    private final HttpSession session;
    private final SpecializationRepository specializationRepository;
    private final ClinicRepository clinicRepository;


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String welcomeForm() {
        return "/home";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String welcomeSubmit(@RequestParam String spec, @RequestParam String cit, Model model) {
        List<Doctor> doctors = doctorRepository.findAllBySpecializationIgnoreCaseAndCityIgnoreCase(spec, cit);
        model.addAttribute("doctors", doctors);
        if(doctors.isEmpty()){
            return "/empty";
        }
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
    @RequestMapping(value = "/listDoctor", method = RequestMethod.GET)
    public String showYourDoctorsOk() {
        return "/listDoctors";
    }

    @RequestMapping(value = "/listDoctor", method = RequestMethod.POST)
    public String showYourDoctors(@RequestParam String cit, Model model) {
        List<Doctor> doctorList = doctorRepository.findAllByCityIgnoreCase(cit);
        model.addAttribute("doctorList", doctorList);
        return "/listChoose";
    }

    @RequestMapping(value = "/listClinic", method = RequestMethod.GET)
    public String showYourClinicOk() {
        return "/listDoctors";
    }

    @RequestMapping(value = "/listClinic", method = RequestMethod.POST)
    public String showYourClinic(@RequestParam String cit, Model model) {
        List<Clinic> clinicList = clinicRepository.findAllByCityIgnoreCase(cit);
        model.addAttribute("clinicList", clinicList);
        return "/listclinic";
    }

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

//    @RequestMapping(value = "/homeTreatments/{specialization}", method = RequestMethod.GET)
//    public String chooseYourTreatmentsForm(@PathVariable String specialization, Model model) {
//        Long id = specializationRepository.findIdByName(specialization);
//        session.setAttribute("specId", id);
////        List<Treatment> treatments = treatmentsRepository.findAllBySpecializationId(id);
////        model.addAttribute("treatments", treatments);
//        return "/register";
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
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@Valid @ModelAttribute("registerDto") RegisterDto registerDto, BindingResult result) {
        User user = null;
        if (!result.hasErrors()) {
            user = userService.registerUser(registerDto);
            if (user != null) {
                return "redirect:/login";
            }
        }
        return "/register";
    }
//    @RequestMapping(value = "/register", method = RequestMethod.POST)
//    public String register(@Valid @ModelAttribute("registerDto") RegisterDto registerDto, BindingResult result, Model model, History history) {
//        User user = null;
//        Long specId = (Long) session.getAttribute("specId");
//        List<Treatment> treatments = treatmentsRepository.findAllBySpecializationId(specId);
//        model.addAttribute("treatments", treatments);
//        model.addAttribute("history", history);
//        if (!result.hasErrors()) {
//            user = userService.registerUser(registerDto);
//            if (user != null) {
//                return "/treatments";
//            }
//        }
//        return "/register";
//    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/login";
    }

    @RequestMapping(value = "/*/about", method = RequestMethod.GET)
    public String loginAbout() {
        return "/about";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginOk(@RequestParam("username") String username, @RequestParam("password") String password) {
        if (userRepository.findByUsername(username) != null && userRepository.findByUsername(username).getPassword().equals(password)) {
            session.setAttribute("logged", userRepository.findByUsername(username));
            return "/summary";
        }
        return "/login";
    }

//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    public String loginOk(@RequestParam("username") String username, @RequestParam("password") String password, Model model, History history) {
//        if (userRepository.findByUsername(username) != null && userRepository.findByUsername(username).getPassword().equals(password)) {
//            session.setAttribute("logged", userRepository.findByUsername(username));
//            Long specId = (Long) session.getAttribute("specId");
//            List<Treatment> treatments = treatmentsRepository.findAllBySpecializationId(specId);
//            model.addAttribute("treatments", treatments);
//            model.addAttribute("history", history);
//            return "redirect:/saveTreatments";
//        }
//        return "/login";
//    }

//    @RequestMapping(value = "/saveTreatments", method = RequestMethod.GET)
//    public String saveTreatmentsget(History history, Model model) {
//        User user = (User) session.getAttribute("logged");
//        Long specId = (Long) session.getAttribute("specId");
//        List<Treatment> treatments = treatmentsRepository.findAllBySpecializationId(specId);
//        model.addAttribute("history", history);
//        model.addAttribute("treatments", treatments);
//        return "/treatments";
//    }
//
//    @RequestMapping(value = "/saveTreatments", method = RequestMethod.POST)
//    public String saveTreatments(@RequestParam String name, @RequestParam String day, @RequestParam String month, @RequestParam String hour, Model model) {
//        History history = new History();
//        history.setName(name);
//        history.setDay(day);
//        history.setMonth(month);
//        history.setHour(hour);
//        User user = (User) session.getAttribute("logged");
//        Long specId = (Long) session.getAttribute("specId");
//        model.addAttribute("history", history);
//        user.getHistory().add(history);
//        userService.update(user);
//        return "/summary";
//    }

    @RequestMapping(value = "/login/login", method = RequestMethod.GET)
    public String loginHistory() {
        return "/login";
    }

    @RequestMapping(value = "/login/login", method = RequestMethod.POST)
    public String loginHistorySubmit(@RequestParam("username") String username, @RequestParam("password") String password) {
        if (userRepository.findByUsername(username) != null && userRepository.findByUsername(username).getPassword().equals(password)) {
            session.setAttribute("logged", userRepository.findByUsername(username));
            return "/history";
        }
        return "/login";
    }


}
