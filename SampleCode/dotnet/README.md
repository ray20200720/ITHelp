Install
-------

`mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-6.0.101-linux-x64.tar.gz -C $HOME/dotnet`

`export DOTNET_ROOT=$HOME/dotnet`

`export PATH=$PATH:$HOME/dotnet`

[Create Console Application](https://dotnet.microsoft.com/en-us/learn/aspnet/hello-world-tutorial/intro)
---------------------------------------------------------------------------

`dotnet new console -o MyApp`

`cd MyApp/`

`dotnet run`

[Create Web Application](https://dotnet.microsoft.com/en-us/learn/aspnet/hello-world-tutorial/intro) 
-----------------------------------------------------------------------------------------------------

`dotnet new webapp -o MyWebApp --no-https`

`cd MyWebApp`

`dotnet watch`


[Create a web UI with ASP.NET Core](https://docs.microsoft.com/en-us/learn/modules/create-razor-pages-aspnet-core/)
---------------------------------


