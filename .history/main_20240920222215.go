package main
import "fmt"
func main(){
fmt.Println("heloo world")


var x int =10


if x>5{
	fmt.Println("x is greater than 5");
}else{
fmt.Println("x is 5 or less")	
}
for i:=0;i<5;i++{
	fmt.Println(i)
}


var arr [5]int
arr[0]=1
slice:=[]int{1,2,3}
slice=append(slice, 4)


go func(){
	fmt.Println("runingn is a goroutines")
}()

m:=make(map[string]int)
m["age"]=30

type Person struct{
	Name string
	Age int
}
ch:=make(chan string)
go func(){
	ch <-"hello from channel "
}()
msg:=<-ch
fmt.Println(msg)
p:=Person{Name:"Alice" ,Age:25}
}
func add(a int,b int) int{
	return a+b
}
func divide(a,b int) (int ,error){
	if b==0{
		return 0, fmt.Errorf("division by zero")
	}
	return a/b,nil
}
type Shape interface{
	Area() float64
}
type Circle struct{
	Radius float64
}
func (c Circle) Area()