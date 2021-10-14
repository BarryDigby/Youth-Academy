test <- function(){
    if(!exists("Q1")){
        stop("Please attempt to finish the exercise before submitting.\n I cannot check your answers if the 4 variables I have asked for are not present (Q1, Q2, Q3, Q4)")
    }
    if(!exists("Q2")){
        stop("Please attempt to finish the exercise before submitting.\n I cannot check your answers if the 4 variables I have asked for are not present (Q1, Q2, Q3, Q4)")
    }
    if(!exists("Q3")){
        stop("Please attempt to finish the exercise before submitting.\n I cannot check your answers if the 4 variables I have asked for are not present (Q1, Q2, Q3, Q4)")
    }
    if(!exists("Q4")){
        stop("Please attempt to finish the exercise before submitting.\n I cannot check your answers if the 4 variables I have asked for are not present (Q1, Q2, Q3, Q4)")
    }
    if(Q1 != 150){
        stop("Did you correctly add 100 + 50?")
    }
    if(Q2 != 468){
        stop("Did you correctly subtract 500 - 38?")
    }
    if(Q3 != 70200){
        stop("Did you correctly multiply Q1*Q2?")
    }
    if(Q4 != 468){
        stop("Did you correctly divide Q3/Q1?")
    }
    success("Well done!")
}