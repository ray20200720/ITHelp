Install
-------

`mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-6.0.101-linux-x64.tar.gz -C $HOME/dotnet`

`export DOTNET_ROOT=$HOME/dotnet`

`export PATH=$PATH:$HOME/dotnet`

[Create Console Application](https://dotnet.microsoft.com/en-us/learn/aspnet/hello-world-tutorial/intro)
--------------------------------------------------------------------------------------------------------

`dotnet new console -o MyApp`

`cd MyApp/`

`dotnet run`

[Create WinForm Application](https://github.com/dotnet/winforms/blob/main/docs/getting-started.md)
----------------------------------------------------------------------------------------------------

`dotnet new winforms -o MyWinFormsApp`

`cd MyWinFormsApp`

`dotnet run`

[Create WinForms .NET Core app](https://github.com/dotnet/winforms/blob/main/docs/winforms-designer.md)
----------------------------------------------------------------------------------------------------
`md SimpleWinForms`

`cd SimpleWinForms`

`dotnet new winforms -n SimpleWinForms`

`dotnet new sln`

`dotnet sln add SimpleWinForms`

`dotnet run --project SimpleWinForms\SimpleWinForms.csproj`

[Create Web Application](https://dotnet.microsoft.com/en-us/learn/aspnet/hello-world-tutorial/intro) 
-----------------------------------------------------------------------------------------------------

`dotnet new webapp -o MyWebApp --no-https`

`cd MyWebApp`

`dotnet watch`


[Create a web UI with ASP.NET Core](https://docs.microsoft.com/en-us/learn/modules/create-razor-pages-aspnet-core/)
---------------------------------


