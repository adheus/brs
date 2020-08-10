sub init()
    m.componentField = "componentField value"
end sub

function componentFunction(args as object) as object
    print "component: inside componentFunction, args.test: " args.test
    print "component: componentField:" m.componentField
    print "component: mainField:" m.mainField

    return { "success": true }
end function

sub componentVoidFunction()
    print "component: inside componentVoidFunction"
end sub

function componentPrivateFunction() as string
    print "component: inside componentPrivateFunction"
    return "private return value"
end function

function componentFunctionMultipleParams(args as object, args2 as object) as object
    print "component: inside componentFunctionMultipleParams, args.test: " args.test
    print "component: inside componentFunctionMultipleParams, args2.test: " args2.test

    argsCount = 0
    if args <> invalid
        argsCount += 1
    end if

    if args2 <> invalid
        argsCount += 1
    end if
    return { "success": argsCount = 2 }
end function
