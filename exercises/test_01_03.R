test <- function(){
    if(!exists("num_vec")){
        stop("Where is the num_vec variable? Reset the code block if necessary.")
    }
    if(!exists("vec_len")){
        stop("Where is the vec_len variable? Reset the code block if necessary.")
    }
    if(!exists("second_elm")){
        stop("Where is the second_elm variable? Reset the code block if necessary.")
    }
    if(!exists("vec_range")){
        stop("Where is the vec_range variable? Reset the code block if necessary.")
    }
    if(vec_len != 5){
        stop("Did you correctly use the length() function?")
    }
    if(second_elm != 3.14){
        stop("Did you correctly isolate the second element in the vector?")
    }
    if(vec_range[1] != 3.14){
        stop("The first element of vec_range is incorrect. Did you use num_vec[2:4?]")
    }
    if(vec_range[2] != 5){
        stop("The second element of vec_range is incorrect. Did you use num_vec[2:4?]")
    }
    if(vec_range[3] != 200){
        stop("The third element of vec_range is incorrect. Did you use num_vec[2:4?]")
    }

    success("Well done!")
}