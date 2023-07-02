//
//  Post.swift
//  Navigation
//
//  Created by Роман on 07.02.2023.
//

import Foundation

struct Post {
    let title: String
    
}

/*
Создайте ColorSet используя Hex-code: #4885CC.
Иконку VK скачайте из папки с Макетами, файл с именем Logo.png.
В папке Profile создайте в ней новый файл LogInViewController.swift.

В этом файле создайте одноименный класс-наследник UIViewController.
Теперь при переключении таба Profile в TabBar должен открываться экран LogInViewController.swift.

Скройте NavigationBar, используя navigationBar.isHidden = true.
 
 В классе LogInViewController у вас должна быть реализована вёрстка экрана «Log In» согласно макету Lesson_6_Layout_1.png. Вёрстку нужно выполнить кодом, используя Auto Layout.

 Вам нужно учесть тот факт, что диагональ устройства может быть разной, клавиатура может перекрывать поля ввода, поэтому используйте UIScrollView по аналогии с примером из лекции.
Поле password должно скрывать введенные данные, как показано в макете Lesson_6_Layout_1_typing.png.
Обработайте появление и исчезновение клавиатуры, используя код из лекции.
Кнопка 'Log In' независимо от введённых данных должна отправлять юзера на экран профиля — ProfileViewController.
Чтобы покрасить кнопку 'Log In' в соответствии с макетом, используйте изображение blue_pixel.png, которое также находится в папке Макеты, файл с именем Logo.png.
*/
