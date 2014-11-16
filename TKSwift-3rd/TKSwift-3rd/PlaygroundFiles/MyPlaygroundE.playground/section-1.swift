// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
// print


/*!
*  @author tinkl, 14-11-16 21:11:45
*
*  正则表达式
*
*  @since 1.0.0
*/
struct ERgexHelper {
    let regex:NSRegularExpression
    
    init(_ pattern:String)
    {
        var error : NSError?
        
        regex = NSRegularExpression(pattern: pattern, options: NSRegularExpressionOptions.CaseInsensitive, error: &error)!
            
    }
    
    
    /*!
    处理
    
    :param: input 输入源
    
    :returns: 是否匹配
    */
    func match(input:String) -> Bool
    {
        let matchs = regex.matchesInString(input, options: nil, range: NSMakeRange(0, countElements(input)))
        return matchs.count > 0;
    }
    
    
    
}


let mailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"

let matcher = ERgexHelper(mailPattern)

let maybeMail = "nicolastinkl@gmail.com"

if matcher.match(maybeMail)
{
    println("OK")
}else{
    println("invaild email address")
}




infix operator =~~ {    associativity none    precedence 160}

func =~~(lhs:String,rhs:String)->Bool
{
    return ERgexHelper(rhs).match(lhs)
}


if "asdfhjasklf@gmail.com" =~~ mailPattern
{
    println("OK")
}




