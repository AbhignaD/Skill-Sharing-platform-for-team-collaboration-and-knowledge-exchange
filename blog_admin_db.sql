-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 10:59 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_admin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner_posts`
--

DROP TABLE IF EXISTS `banner_posts`;
CREATE TABLE `banner_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` int(10) UNSIGNED NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(190) NOT NULL,
  `tags` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(50) NOT NULL,
  `posted` varchar(40) NOT NULL,
  `date` date DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  `category` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `tags`, `content`, `photo`, `posted`, `date`, `author`, `category`) VALUES
(0, '8 Most Common Programming Errors Made by Beginners', 'Mistake, Coding', '<p class=\"MsoNormal\">Learning to code can be fun and absorbing but it can also be\r\na rocky road at first. If you have a feeling that your learning process could\r\nbe faster and more efficient, take a look at this list of common programming\r\nmistakes. Maybe you\'re making some of them?<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">When I first started learning to code it was a time of\r\nconstant fire in my belly—I was so excited about every new issue and every new\r\ntechnology! Alright, the enthusiasm was not really constant—it alternated with\r\nmoments of doubt when I was facing a problem with my code. Sometimes I was\r\nlearning just for the fun of learning and didn\'t care much if I was doing it\r\nthe best possible way. Looking back, I realize that I could have been learning\r\nmore efficiently, or at least I could have saved myself a lot of worries and\r\nstress. After talking to my coding friends I understood that it was not only\r\nme, that we\'ve all repeated the same mistakes. Here\'s a short list of what to\r\navoid in order to have a smooth start in programming.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">1. Learning Irregularly<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Most novice programmers are so excited about new things\r\nthey\'re learning that they use every minute to learn. Enthusiasm burns out\r\nquickly, but if you are thinking seriously about a programming career then you\r\ncan\'t let it go entirely. And you definitely can\'t stop learning. What\'s\r\ncrucial for learning to code, especially at the beginning, is to learn very\r\nregularly. When everything\'s new it\'s hard to remember all the information, and\r\nregular coding helps to put your knowledge in order. Coding once a week for a\r\nfew hours is not as efficient as coding every day for one hour. You won\'t be\r\nwasting your time trying to recall syntax or trying to figure out what was your\r\nidea for a certain function. Finding an appropriate source to learn from can\r\nhelp you keep to a regular schedule, and online courses, such as these at\r\nLEARNPYTHON.COM, allow you to learn at your own pace.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">2. Learning Everything at Once<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">For beginners every new technology is so tempting, they want\r\nto learn it immediately. You might have heard about a new framework at a tech\r\nmeetup, or you might have seen a tutorial of a new programming language on the\r\nInternet, and you want to try these out as soon as you can. At least I felt\r\nlike that at the beginning. As a result, I was endlessly switching between new\r\ntechnologies without gaining any in-depth knowledge. Without solid basics, you\r\nwon\'t be able to understand more complex ideas. Some technologies are based on\r\nothers and won\'t make any sense separately. Try to resist the temptation and\r\nchoose wisely the order you will learn new skills in. If you\'re not sure what\r\nthe right order is, take a look at the entry requirements while enrolling for a\r\ncourse.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">3. Messy Code Formatting<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Disorder in your code can be painful. At the beginning of\r\nlearning to code, I didn\'t entirely believe my mentors when they were stressing\r\nthe importance of tidying code. Sure, I understood it\'s a good practice but\r\nI\'ve paid so much attention to what I was writing, I didn\'t have time to think\r\nabout how I was writing it. I understood, however, the very first moment I had\r\nto DEBUG my code. Such a simple thing as finding a closing tag in HTML took\r\nhours when my code was messy and unindented.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">In some languages, such as Python, INCORRECT INDENTATION\r\nWILL CAUSE ERRORS, and your code won\'t work. During my first contact with\r\nPython, when I was taking my first courses, I used to spend a lot of time\r\ndouble-checking or even rewriting my functions—I was sure they were well\r\nwritten, but they still produced errors. Most often it was the fault not of\r\npoorly written conditions or loops but of incorrect indentation.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">4. Ignoring Naming Conventions<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Your code can be well-formatted but still untidy when it\r\ncomes to naming conventions. I know it\'s hard to find good names for your variables,\r\nclasses, or functions at the beginning. And what are good names actually? First\r\nof all, the name must be informative, must tell as precisely as possible what\r\nyour function is doing. At the same time, the shorter the name the better. It\r\ntakes some time for naming to become instinctive, but it\'s worth the effort.\r\nYou\'ll make your code a lot more readable, not only for your future self but\r\nalso for other team members if you\'re working in a team. Many entry-level\r\ncourses teach programming with no emphasis on variable and functions names. If\r\nyou create variables named \"a\", \"b\", and \"c\", it\r\nwould be good enough for the learning process, but it definitely would not be\r\nadequate for a real-life project. If you want to learn the best practices from\r\nthe very beginning, check out THIS NEW PYTHON COURSE in which the authors\r\nemphasize appropriate naming conventions.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">5. No Backups<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">They say that there are two types of people in the world,\r\npeople who make backups and people who will make backups. It applies to backing\r\nup both your data and your work. I am sure that all of my friends have lost\r\nsome part of their work, whether it was code, a chapter of a master\'s thesis,\r\nor an almost finished article. It has happened to me, too.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Fortunately, there is a good solution for backing up your\r\ncoding work: version control systems like GIT, SVN, and TFS. You can read more\r\nabout using Git in ONE OF OUR NEWEST BLOG POSTs.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">6. Over Complicating<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">You can easily tell if you\'re reading a beginner\'s code—not\r\nbecause it will be that simple, but, on the contrary, it will often be\r\nover-engineered. Novice programmers put in a lot of effort to make their code\r\nwork at all, so they are rarely trying to make it elegant at the same time. In\r\nmost cases, it\'s just a side effect of having little experience, but sometimes\r\njunior coders want to impress others with the complexity of their work.\r\nUnfortunately, such seemingly sophisticated code will give away the author\'s\r\nlack of expertise. There is a principle called KISS that originated in\r\nengineering but is quite popular in the programming industry. The acronym\r\nstands for \"keep it simple, stupid\" and it says that simplicity is an\r\nadvantage (in our case while writing code).<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Sometimes overly complicated code is a result of writing\r\nwithout a plan. It\'s a common mistake of programming beginners because planning\r\na good structure for your work is not an easy task, and it comes with\r\nexperience.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">7. Remorse Because of Googling for Solutions<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Have you ever felt guilty for Googling how to do something?\r\nMaybe you needed help writing a certain function, or maybe you simply needed to\r\nremind yourself of the syntax of a rarely used piece of code? You shouldn\'t\r\nfeel bad because it\'s a very common practice among professional programmers.\r\nIt\'s probable that someone already had the same problem that you do and it\'s\r\nalready been solved—it helps you save time.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Have you ever heard of Stack Overflow? There are hundreds of\r\nthousands of questions and probably millions of answers. This website and many\r\nsimilar ones come to the rescue when you\'re stuck. Using the expertise of\r\nothers helps you get your job done. And not only beginners get stuck—it happens\r\nto everybody. I\'ve seen each of my coding friends Googling for help or for tips\r\nat least once. Not to mention how often I do it myself.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Of course, if you work in a team you can ask someone for\r\nhelp personally, which can be much more efficient (and faster) than reading\r\nthrough many possible solutions on the internet, especially if English isn\'t\r\nyour mother tongue. If there\'s no one you can ask, ask Uncle Google and he\'ll\r\nhelp. But remember that looking for answers doesn\'t mean stealing someone\r\nelse\'s code. On the other hand, avoid copying and pasting code you don\'t\r\nunderstand, which is also a very common mistake of junior coders.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">8. Copying Code Without Understanding<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">You\'ve convinced yourself that getting help from the\r\nresources available on the Internet is nothing bad, and you\'re discovering the\r\nplenitude of answers at Stack Overflow. Someone had a very similar problem as\r\nyou and there\'s a working solution to this. You have no idea what this code is\r\ndoing but other users said it works, so let\'s paste it into your project. No,\r\nwait. It\'s not a good idea. If you don\'t understand how the piece of code is\r\nworking, avoid pasting it into your project, especially AVOID COMMITTING IT TO\r\nA WORKING REPOSITORY without double-checking it yourself and without code\r\nreview. Even if it solves your problem it may cause errors elsewhere in your\r\napplication. If you\'re not sure, ask the author of the code for clarification\r\nor talk to your more experienced colleagues to see if this solution is the\r\nright one.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Summary<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">How many of these common mistakes have you been making? It\r\ncan be frustrating at the beginning, but making mistakes makes us better\r\nprogrammers, as long as we make an effort to learn from them. Even though the\r\nfirst steps can be hard, don\'t give up easily, and keep coding!<o:p></o:p></p>', '13666100_1650039527.jpg', 'draft', '2022-04-15', 'admin', '7'),
(0, '8 Most Common Programming Errors Made by Beginners', 'Coding, Mistake', '<p class=\"MsoNormal\">Learning to code can be fun and absorbing but it can also be\r\na rocky road at first. If you have a feeling that your learning process could\r\nbe faster and more efficient, take a look at this list of common programming\r\nmistakes. Maybe you\'re making some of them?<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">When I first started learning to code it was a time of\r\nconstant fire in my belly—I was so excited about every new issue and every new\r\ntechnology! Alright, the enthusiasm was not really constant—it alternated with\r\nmoments of doubt when I was facing a problem with my code. Sometimes I was\r\nlearning just for the fun of learning and didn\'t care much if I was doing it\r\nthe best possible way. Looking back, I realize that I could have been learning\r\nmore efficiently, or at least I could have saved myself a lot of worries and\r\nstress. After talking to my coding friends I understood that it was not only\r\nme, that we\'ve all repeated the same mistakes. Here\'s a short list of what to\r\navoid in order to have a smooth start in programming.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">1. Learning Irregularly<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Most novice programmers are so excited about new things\r\nthey\'re learning that they use every minute to learn. Enthusiasm burns out\r\nquickly, but if you are thinking seriously about a programming career then you\r\ncan\'t let it go entirely. And you definitely can\'t stop learning. What\'s\r\ncrucial for learning to code, especially at the beginning, is to learn very\r\nregularly. When everything\'s new it\'s hard to remember all the information, and\r\nregular coding helps to put your knowledge in order. Coding once a week for a\r\nfew hours is not as efficient as coding every day for one hour. You won\'t be\r\nwasting your time trying to recall syntax or trying to figure out what was your\r\nidea for a certain function. Finding an appropriate source to learn from can\r\nhelp you keep to a regular schedule, and online courses, such as these at\r\nLEARNPYTHON.COM, allow you to learn at your own pace.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">2. Learning Everything at Once<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">For beginners every new technology is so tempting, they want\r\nto learn it immediately. You might have heard about a new framework at a tech\r\nmeetup, or you might have seen a tutorial of a new programming language on the\r\nInternet, and you want to try these out as soon as you can. At least I felt\r\nlike that at the beginning. As a result, I was endlessly switching between new\r\ntechnologies without gaining any in-depth knowledge. Without solid basics, you\r\nwon\'t be able to understand more complex ideas. Some technologies are based on\r\nothers and won\'t make any sense separately. Try to resist the temptation and\r\nchoose wisely the order you will learn new skills in. If you\'re not sure what\r\nthe right order is, take a look at the entry requirements while enrolling for a\r\ncourse.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">3. Messy Code Formatting<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Disorder in your code can be painful. At the beginning of\r\nlearning to code, I didn\'t entirely believe my mentors when they were stressing\r\nthe importance of tidying code. Sure, I understood it\'s a good practice but\r\nI\'ve paid so much attention to what I was writing, I didn\'t have time to think\r\nabout how I was writing it. I understood, however, the very first moment I had\r\nto DEBUG my code. Such a simple thing as finding a closing tag in HTML took\r\nhours when my code was messy and unindented.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">In some languages, such as Python, INCORRECT INDENTATION\r\nWILL CAUSE ERRORS, and your code won\'t work. During my first contact with\r\nPython, when I was taking my first courses, I used to spend a lot of time\r\ndouble-checking or even rewriting my functions—I was sure they were well\r\nwritten, but they still produced errors. Most often it was the fault not of\r\npoorly written conditions or loops but of incorrect indentation.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">4. Ignoring Naming Conventions<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Your code can be well-formatted but still untidy when it\r\ncomes to naming conventions. I know it\'s hard to find good names for your variables,\r\nclasses, or functions at the beginning. And what are good names actually? First\r\nof all, the name must be informative, must tell as precisely as possible what\r\nyour function is doing. At the same time, the shorter the name the better. It\r\ntakes some time for naming to become instinctive, but it\'s worth the effort.\r\nYou\'ll make your code a lot more readable, not only for your future self but\r\nalso for other team members if you\'re working in a team. Many entry-level\r\ncourses teach programming with no emphasis on variable and functions names. If\r\nyou create variables named \"a\", \"b\", and \"c\", it\r\nwould be good enough for the learning process, but it definitely would not be\r\nadequate for a real-life project. If you want to learn the best practices from\r\nthe very beginning, check out THIS NEW PYTHON COURSE in which the authors\r\nemphasize appropriate naming conventions.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">5. No Backups<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">They say that there are two types of people in the world,\r\npeople who make backups and people who will make backups. It applies to backing\r\nup both your data and your work. I am sure that all of my friends have lost\r\nsome part of their work, whether it was code, a chapter of a master\'s thesis,\r\nor an almost finished article. It has happened to me, too.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Fortunately, there is a good solution for backing up your\r\ncoding work: version control systems like GIT, SVN, and TFS. You can read more\r\nabout using Git in ONE OF OUR NEWEST BLOG POSTs.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">6. Over Complicating<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">You can easily tell if you\'re reading a beginner\'s code—not\r\nbecause it will be that simple, but, on the contrary, it will often be\r\nover-engineered. Novice programmers put in a lot of effort to make their code\r\nwork at all, so they are rarely trying to make it elegant at the same time. In\r\nmost cases, it\'s just a side effect of having little experience, but sometimes\r\njunior coders want to impress others with the complexity of their work.\r\nUnfortunately, such seemingly sophisticated code will give away the author\'s\r\nlack of expertise. There is a principle called KISS that originated in\r\nengineering but is quite popular in the programming industry. The acronym\r\nstands for \"keep it simple, stupid\" and it says that simplicity is an\r\nadvantage (in our case while writing code).<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Sometimes overly complicated code is a result of writing\r\nwithout a plan. It\'s a common mistake of programming beginners because planning\r\na good structure for your work is not an easy task, and it comes with\r\nexperience.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">7. Remorse Because of Googling for Solutions<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Have you ever felt guilty for Googling how to do something?\r\nMaybe you needed help writing a certain function, or maybe you simply needed to\r\nremind yourself of the syntax of a rarely used piece of code? You shouldn\'t\r\nfeel bad because it\'s a very common practice among professional programmers.\r\nIt\'s probable that someone already had the same problem that you do and it\'s\r\nalready been solved—it helps you save time.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Have you ever heard of Stack Overflow? There are hundreds of\r\nthousands of questions and probably millions of answers. This website and many\r\nsimilar ones come to the rescue when you\'re stuck. Using the expertise of\r\nothers helps you get your job done. And not only beginners get stuck—it happens\r\nto everybody. I\'ve seen each of my coding friends Googling for help or for tips\r\nat least once. Not to mention how often I do it myself.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Of course, if you work in a team you can ask someone for\r\nhelp personally, which can be much more efficient (and faster) than reading\r\nthrough many possible solutions on the internet, especially if English isn\'t\r\nyour mother tongue. If there\'s no one you can ask, ask Uncle Google and he\'ll\r\nhelp. But remember that looking for answers doesn\'t mean stealing someone\r\nelse\'s code. On the other hand, avoid copying and pasting code you don\'t\r\nunderstand, which is also a very common mistake of junior coders.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">8. Copying Code Without Understanding<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">You\'ve convinced yourself that getting help from the\r\nresources available on the Internet is nothing bad, and you\'re discovering the\r\nplenitude of answers at Stack Overflow. Someone had a very similar problem as\r\nyou and there\'s a working solution to this. You have no idea what this code is\r\ndoing but other users said it works, so let\'s paste it into your project. No,\r\nwait. It\'s not a good idea. If you don\'t understand how the piece of code is\r\nworking, avoid pasting it into your project, especially AVOID COMMITTING IT TO\r\nA WORKING REPOSITORY without double-checking it yourself and without code\r\nreview. Even if it solves your problem it may cause errors elsewhere in your\r\napplication. If you\'re not sure, ask the author of the code for clarification\r\nor talk to your more experienced colleagues to see if this solution is the\r\nright one.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoNormal\">Summary<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">How many of these common mistakes have you been making? It\r\ncan be frustrating at the beginning, but making mistakes makes us better\r\nprogrammers, as long as we make an effort to learn from them. Even though the\r\nfirst steps can be hard, don\'t give up easily, and keep coding!<o:p></o:p></p>', '07637000_1650039840.jpg', 'publish', '2022-04-15', 'admin', '7'),
(0, 'Multiple VM Autonomous Database on Exadata Cloud@Customer debuts', 'Database', '<p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\">I am excited to announce the launch of Multiple VM Autonomous Database on Exadata Cloud@Customer. One of our customers\' most frequently requested features has been the ability to create Autonomous Database VM clusters and Exadata Database VM clusters on a single Exadata Cloud@Customer infrastructure. With the launch of Multiple VM Autonomous Database, customers can now create multiple Autonomous Exadata VM Clusters and Exadata Database VM Clusters on all their existing Exadata Cloud@Customer platforms from X7 Gen 2 to the newest generation.</p><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\">Oracle\'s Exadata Cloud@Customer is the world\'s simplest path for customers to realize cloud benefits for database: self-service API agility, pay-per-use financial model, high availability, security, and standardization that reduces business risk. It brings these cloud benefits to the customer, behind their firewall, inside their data centers, and fully managed by Oracle using cloud native APIs. Exadata Cloud@Customer allows organizations to modernize their database estate and take advantage of cloud benefits without changing anything at the application layer in their enterprise architecture while meeting security, governance, and regulatory requirements.</p><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\">Oracle Autonomous Database is the most operationally complete and simple to use database service for developers and administrators of database applications. The service provides machine-learning driven touchless mission critical capabilities with automatic and dynamic scaling, performance, and security. The service is especially well suited for modern application architectures that utilize multiple data types, workloads, and analytic functions in a single solution. &nbsp;</p><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\">Autonomous Database on Exadata Cloud@Customer (ADB-C@C) were announced together in July 2020, providing an operationally complete and simple to use database service with all the benefits of the cloud in customers’ data centers.</p><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\">To take advantage of ADB-C@C, customers have to create four primary resources:</p><ul style=\"margin-right: 0px; margin-bottom: 1.1em; margin-left: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; overflow: hidden; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><li style=\"margin: 0px 1.25em 0.6em 0px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\">Exadata Cloud@Customer infrastructure</li><li style=\"margin: 0px 1.25em 0.6em 0px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\">Autonomous Exadata VM Cluster</li><li style=\"margin: 0px 1.25em 0.6em 0px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\">Autonomous Container Database</li><li style=\"margin: 0px 1.25em 0px 0px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\">Autonomous Database</li></ul>', '27466900_1650054777.png', 'publish', '2022-04-15', 'admin', '7'),
(0, 'Providing a Glide Path to Multicloud', 'Oracle, Database', '<p class=\"BodyText\" style=\"margin-bottom: 12px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: Calibri, sans-serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; letter-spacing: -0.5pt;\">IDC research shows that a movement is on by enterprises to ship most production data management to the public cloud. This move is problematic, however, for organizations with complex datacenters and deep commitments to multiple technologies that have different natural cloud platform targets. IDC research has also shown that over the decades, large numbers of Oracle customers use and depend on Microsoft technology. When using on-premises resources, these organizations run many applications on Microsoft clients and servers, and it is natural for them to shift to Microsoft Azure for those functions when they move to the public cloud. But many, if not most, of those customers’ enterprise applications also depend on the Oracle Database. The level of performance, scalability, and reliability delivered by the combined application plus database environment is critical to their business success. Running Oracle Database in an Azure VM is not the answer as it lacks the performance, scalability, and flexibility required to replicate or improve the customers’ on-premises solutions. The top cloud deployment option for Oracle Database is Oracle Exadata Cloud Service, which does not run in Azure datacenters. The top Oracle Database service is Oracle Autonomous Database, which is also not available on Azure.</span></span></span></p><p class=\"BodyText\" style=\"margin-bottom: 12px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: Calibri, sans-serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; letter-spacing: -0.5pt;\">The two companies have been working toward a solution. In June 2019, Oracle announced a high-speed interconnect agreement with Microsoft that allows Azure applications to connect to Oracle Database and Autonomous Database services running on Exadata platforms in Oracle Cloud Infrastructure (OCI). With the low latency afforded by the OCI-Azure interconnect, Azure-based applications can now benefit from Oracle Exadata performance, scale, and availability by using either Oracle Database or Autonomous Database running on Exadata Cloud Service. &nbsp;Customers can also use OCI-only features such as MySQL Database Service with HeatWave in conjunction with applications running on Azure-based services.</span></span></span></p><p class=\"BodyText\" style=\"margin-bottom: 12px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: Calibri, sans-serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; letter-spacing: -0.5pt;\">Oracle and Microsoft are now offering their common customers a multicloud capability, allowing users to link data and services across each company’s clouds. As part of their initial agreement, the companies also provided unified identity management services allowing for single sign-on to make it easier to use this integrated environment. They also eliminated data egress fees when moving data between their clouds. High-speed, secure, encrypted virtual circuits are used to link OCI elements (mainly Oracle Database or Autonomous Database on Exadata and its backups) directly to Azure elements (mainly applications). Regardless of the direction data is flowing, the OCI-Azure Interconnect delivers round-trip latency of between 1.2 ms and 2.1 ms. For all practical purposes, an Azure application can send requests to the Oracle Database on OCI and get responses with performance equivalent to that of a local database server.</span></span></span></p><p class=\"BodyText\" style=\"margin-bottom: 12px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: Calibri, sans-serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; letter-spacing: -0.5pt;\">In addition to core database and compute services, customers can sign up for a high availability option that provides a coordinated, fast fail-over across the two clouds. Oracle and Microsoft have also developed a number of observability and management, security, and data integration services that work across OCI and Azure to further simplify the implementation of multicloud environments. For database users this means that they can move their Microsoft-based applications to Azure, and connect them to the best possible configurations of Oracle Database.</span></span></span></p><p class=\"BodyText\" style=\"margin-bottom: 12px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: Calibri, sans-serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; letter-spacing: -0.5pt;\">The Oracle-Microsoft solution also addresses the fact that most large enterprises can’t just move all their IT assets to the public cloud in one fell swoop. Due to local dependencies and interconnections, organizations must do so gradually. IDC has found that a majority of larger enterprises have adopted an evolutionary approach to cloud migration, one that goes from private cloud to hybrid (parts on-premises and parts in the cloud) to full public cloud. (For Oracle Database users, Exadata Cloud@Customer provides a stepping-stone to the cloud with support for Autonomous Database as well.) The multicloud approach being offered by Oracle and Microsoft further supports customers on this journey since they can also link assets that are on-premises to either company’s cloud using a combination of Oracle FastConnect (for linking OCI to on-premises assets) and Microsoft ExpressRoute (for linking Azure to assets on-premises) and using cross-connect services provided by Equinix or other providers.</span></span></span></p><p class=\"BodyText\" style=\"margin-bottom: 12px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: Calibri, sans-serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; letter-spacing: -0.5pt;\">In addition to Oracle Database and Autonomous Database running on OCI, there are many other services in the Microsoft and Oracle public clouds that can be linked. We’ve primarily talked about customers using Oracle Database, which is fair when discussing moving enterprise applications to the cloud, however, many organizations – including most large ones – use the MySQL open-source database for other applications. The MySQL Database Service with HeatWave allows customers to use one database for OLTP and OLAP, accelerating both queries by orders of magnitude using scalable, in-memory technologies. HeatWave is only available in OCI, so Azure customers that want to take advantage of its scalable high-performance can now do so by linking their applications running in Azure to the MySQL Database Service with HeatWave through the low-latency, high-bandwidth OCI-Azure interconnect.</span></span></span></p><p class=\"BodyText\" style=\"margin-bottom: 12px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: Calibri, sans-serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; letter-spacing: -0.5pt;\">Clearly, the establishment of this service by Oracle and Microsoft delivers a level of integration that their joint customers need. The linked OCI plus Azure environment goes beyond simple interoperability to establish a high-performance interconnected cloud world. Enterprise IT is moving to the cloud, but in IDC surveys IT leaders have indicated a strong preference for a multicloud capability that doesn’t force them to operate in a proprietary, siloed cloud world where they must choose single clouds for multiple purposes for which those clouds are not good fits. They must also decide how much in the way of egress charges they can tolerate. IT leaders don’t just want multicloud options or multicloud connections. They want the freedom to deploy applications and databases as they wish, and to get the best that each service has to offer. Oracle and Microsoft have provided a solution that is intended to offer enterprises a way to achieve that multicloud freedom.</span></span></span></p>', '47805500_1650055228.png', 'publish', '2022-04-15', 'admin', '7'),
(0, 'Resource Model Update for Autonomous Database on Dedicated Exadata Infrastructure', 'Database', '<p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\">We are excited to announce the availability of the updated resource model for Autonomous Database on Dedicated Exadata Infrastructure. Until today, the infrastructure layer for Autonomous Database on Dedicated Exadata Infrastructure and Autonomous Database on Exadata Cloud@Customer used different resource models. With this launch, both the deployment types will have similar resource model. This resource model change lays the foundation for our goal of supporting Autonomous and non-Autonomous VM Clusters on the same Exadata Infrastructure.</p><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\">Support for multiple Autonomous Exadata VM Clusters on the same Exadata Infrastructure (roadmap item) will also provide the following advantages;</p><ul style=\"margin-right: 0px; margin-bottom: 1.1em; margin-left: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; overflow: hidden; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><li style=\"margin: 0px 1.25em 0.6em 0px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\">Allow managing Exadata resources more efficiently</li><li style=\"margin: 0px 1.25em 0.6em 0px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\">Have Autonomous Databases with different license models on the same Exadata infrastructure</li><li style=\"margin: 0px 1.25em 0.6em 0px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\">Separate maintenance scheduling for VM Cluster</li><li style=\"margin: 0px 1.25em 0px 0px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\">Network-level isolation through VM Clusters</li></ul><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-weight: 700;\">The service changes described in this communication will impact console, API, SDK, and Terraform for Fleet level resources only (Autonomous Exadata Infrastructures and Autonomous Container Databases). Autonomous Database resources will not be impacted by this change.</span></p>', '77379900_1650055356.jpg', 'publish', '2022-04-15', 'admin', '7');
INSERT INTO `blogs` (`id`, `title`, `tags`, `content`, `photo`, `posted`, `date`, `author`, `category`) VALUES
(0, 'Oracle Database 21c (21.3) comes with full production support for Oracle Sharding on Kubernetes and Docker', 'Database', '<p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; color: rgb(14, 16, 26);\">We are excited to announce that customers can now take advantage of Kubernetes and Docker based deployment for sharded databases starting with Oracle Database 21c (21.3).</span></span></span></p><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; color: rgb(14, 16, 26);\">Oracle Sharding distributes segments of a data set across many databases (shards) on independent compute resources, on-premises, or in the cloud. It enables globally distributed, linearly scalable, multi-model databases. It requires no specialized hardware or software. Oracle Sharding does all of this while providing strong consistency, the full power of SQL, support for structured and unstructured data, and the Oracle Database ecosystem. Oracle Sharding meets data sovereignty requirements and supports applications that require low latency and high availability.</span></span></span></p><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-weight: 800;\">Oracle Sharding on Kubernetes</span></span></span></p><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\">With many Oracle customers already using Kubernetes to deploy applications and databases,&nbsp;<span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; color: rgb(14, 16, 26);\">there is an increase in demand to manage large datasets with high-throughputs, and this is where Oracle Sharding can be very useful because it brings extreme scalability, fault isolation, and geographical distribution of data by distributing the data set across different shards.</span></span></span></p><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\">Oracle Sharding on Kubernetes uses StatefulSet to provide stable, unique network identifiers and stable, persistent storage so you can create and manage your Oracle Sharding replica set natively in Kubernetes with Oracle supported helm and chart templates. Data is stored on a persistent volume so when a pod is recreated, all the data is still there.&nbsp;<span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; color: rgb(14, 16, 26);\">Some of the other&nbsp;</span><span style=\"margin: 0px; padding: 0px; list-style: none; background: rgb(248, 248, 248); -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; color: rgb(29, 28, 29);\">benefits of running Oracle Sharding on Kubernetes are as follows:</span></span></span></span></p><ul style=\"margin-right: 0px; margin-bottom: 1.1em; margin-left: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; overflow: hidden; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><li style=\"margin: 0px 1.25em 0.6em 8px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\">Quick deployments using pre-built configurations</span></span></li><li style=\"margin: 0px 1.25em 0.6em 8px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\">Rapid provisioning and de-provisioning of Oracle Sharding makes CI/CD integration easier</span></span></li><li style=\"margin: 0px 1.25em 0.6em 8px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\">Self-monitoring for pod-failures</span></span></li><li style=\"margin: 0px 1.25em 0.6em 8px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\">Elasticity (scale-in and scale out) without losing data</span></span></li><li style=\"margin: 0px 1.25em 0px 8px; padding: 0px; list-style: none; background: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; position: relative; left: 1.25em;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\">Seamless lifecycle management including patching</span></span></li></ul><p style=\"margin-bottom: 1.1em; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; line-height: 1.4; color: rgb(22, 21, 19); font-family: OracleSansVF, OracleSansVFCyGr, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14.336px; background-color: rgb(251, 249, 248);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-size: 12pt;\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; font-family: &quot;Times New Roman&quot;, serif;\">The architecture diagram below provides an overview of Oracle Sharding deployment on Kubernetes for both on-premise and cloud.&nbsp;<span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; color: rgb(14, 16, 26);\">To get started with Oracle Sharding on Kubernetes, follow the instructions on&nbsp;</span><a href=\"https://github.com/oracle/db-sharding/tree/master/oke-based-sharding-deployment\" target=\"_blank\" style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; color: rgb(0, 107, 143);\"><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; color: rgb(74, 110, 224);\">GitHub</span></a><span style=\"margin: 0px; padding: 0px; list-style: none; background-repeat: no-repeat; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-font-smoothing: antialiased; color: rgb(14, 16, 26);\">.</span></span></span></p>', '86424000_1650055741.jpg', 'publish', '2022-04-15', 'admin', '7');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`) VALUES
(7, 'Database'),
(8, 'Machine Learning'),
(9, 'Deep Learning');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`) VALUES
(1, 'Testing', 'email@email.com', 'Hello Everyone.'),
(2, 'abc', 'admin@localhost.com', '\'\r\n'),
(3, 'Musab Bin Abdul Bari', 'purecodingofficial@gmail.com', 'Hello Everyone. How are you. Please Subscribe Pure Coding YouTube Channel.'),
(4, 'ABC', 'abc@gmail.com', 'ABC'),
(5, 'Tathagata Ghosh', 'tghosh12101997@gmail.com', 'hello'),
(6, 'Tathagata Ghosh', 'tghosh12101997@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `editors_choice`
--

DROP TABLE IF EXISTS `editors_choice`;
CREATE TABLE `editors_choice` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(40) DEFAULT NULL,
  `twitter` varchar(40) DEFAULT NULL,
  `googleplus` varchar(40) DEFAULT NULL,
  `pinterest` varchar(40) DEFAULT NULL,
  `dribble` varchar(40) DEFAULT NULL,
  `comments_script` text DEFAULT NULL,
  `sharing_script` text DEFAULT NULL,
  `javascript` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `facebook`, `twitter`, `googleplus`, `pinterest`, `dribble`, `comments_script`, `sharing_script`, `javascript`) VALUES
(1, 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.plus.google.com', 'https://www.pinterest.com', 'https://www.dribble.com', NULL, NULL, '<script>(function(d, s, id) {\r\n		var js, fjs = d.getElementsByTagName(s)[0];\r\n		if (d.getElementById(id)) return;\r\n		js = d.createElement(s); js.id = id;\r\n		js.src = \'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.11&appId=298807240601869\';\r\n		fjs.parentNode.insertBefore(js, fjs);\r\n	}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57587edcb1479678\"></script>');

-- --------------------------------------------------------

--
-- Table structure for table `membership_grouppermissions`
--

DROP TABLE IF EXISTS `membership_grouppermissions`;
CREATE TABLE `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT 0,
  `allowEdit` tinyint(4) NOT NULL DEFAULT 0,
  `allowDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(37, 5, 'titles', 1, 3, 3, 3),
(38, 5, 'links', 1, 3, 3, 3),
(39, 5, 'blog_categories', 1, 3, 3, 3),
(40, 5, 'blogs', 1, 3, 3, 3),
(41, 5, 'editors_choice', 1, 3, 3, 3),
(47, 4, 'titles', 0, 1, 0, 0),
(48, 4, 'links', 0, 1, 1, 1),
(49, 4, 'blog_categories', 0, 0, 0, 0),
(50, 4, 'blogs', 1, 3, 3, 3),
(51, 4, 'editors_choice', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `membership_groups`
--

DROP TABLE IF EXISTS `membership_groups`;
CREATE TABLE `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(4, 'anonymous', 'Anonymous group created automatically on 2022-03-24', 0, 0),
(5, 'Admins', 'Admin group created automatically on 2022-03-24', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `membership_userpermissions`
--

DROP TABLE IF EXISTS `membership_userpermissions`;
CREATE TABLE `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT 0,
  `allowEdit` tinyint(4) NOT NULL DEFAULT 0,
  `allowDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_userrecords`
--

DROP TABLE IF EXISTS `membership_userrecords`;
CREATE TABLE `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(18, 'blog_categories', '7', 'admin', 1648128189, 1648128189, 5),
(19, 'blog_categories', '8', 'admin', 1648128200, 1648128200, 5),
(20, 'blog_categories', '9', 'admin', 1648128211, 1648128211, 5),
(22, 'blogs', '0', 'admin', 1650039527, 1650039527, 5);

-- --------------------------------------------------------

--
-- Table structure for table `membership_users`
--

DROP TABLE IF EXISTS `membership_users`;
CREATE TABLE `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text DEFAULT NULL,
  `custom2` text DEFAULT NULL,
  `custom3` text DEFAULT NULL,
  `custom4` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'ronniengoda@gmail.com', '2022-03-24', 5, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2022-03-24', NULL, NULL),
('guest', NULL, NULL, '2022-03-24', 4, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2022-03-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_hits`
--

DROP TABLE IF EXISTS `page_hits`;
CREATE TABLE `page_hits` (
  `page` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_hits`
--

INSERT INTO `page_hits` (`page`, `count`) VALUES
('', 1),
('8 Most Common Programming Errors Made by Beginners', 13),
('Finding List Form Field Elements', 12);

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
CREATE TABLE `titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `website_name` varchar(40) DEFAULT NULL,
  `tagline` varchar(40) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `keywords` varchar(220) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `bannertext1` varchar(150) DEFAULT NULL,
  `bannertext2` varchar(150) DEFAULT NULL,
  `bannertext3` varchar(150) DEFAULT NULL,
  `bannertext4` varchar(150) DEFAULT NULL,
  `detailed_description` text DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `googlemap` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `website_name`, `tagline`, `icon`, `keywords`, `short_description`, `bannertext1`, `bannertext2`, `bannertext3`, `bannertext4`, `detailed_description`, `address`, `email`, `phone`, `googlemap`) VALUES
(1, 'Team 6', 'DBSE Project', 'unnamed.jpg', 'A Skill sharing platform for team collaboration and knowledge exchange', 'This is a blog and content management system. Anyone can easily setup their blog and customize it according to your needs. This is a short description of our blog, you can change this.', NULL, NULL, NULL, NULL, 'An online platform where students are allowed to interact when submitting an assignment or a report under the supervision of an instructor. We have created it by taking inspiration from WordPress.\r\n\r\nTeam - \r\n1. Spandan Gude\r\n2. Abhigna Domakonda\r\n3. Tathagata Ghosh', 'Magdeburg, Germany', 'tathagata.ghosh@st.ovgu.de', '+4915208258194', 'https://maps.google.com/maps?q=ovgu%20g29&t=&z=17&ie=UTF8&iwloc=&output=embed');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_info`
--

DROP TABLE IF EXISTS `visitor_info`;
CREATE TABLE `visitor_info` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `time_accessed` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_info`
--

INSERT INTO `visitor_info` (`id`, `ip_address`, `user_agent`, `time_accessed`) VALUES
(0, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.46', '2022-03-24 13:30:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner_posts`
--
ALTER TABLE `banner_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editors_choice`
--
ALTER TABLE `editors_choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog` (`blog`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_groups`
--
ALTER TABLE `membership_groups`
  ADD PRIMARY KEY (`groupID`);

--
-- Indexes for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  ADD PRIMARY KEY (`recID`),
  ADD UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  ADD KEY `pkValue` (`pkValue`),
  ADD KEY `tableName` (`tableName`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `membership_users`
--
ALTER TABLE `membership_users`
  ADD PRIMARY KEY (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `page_hits`
--
ALTER TABLE `page_hits`
  ADD PRIMARY KEY (`page`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_info`
--
ALTER TABLE `visitor_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner_posts`
--
ALTER TABLE `banner_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `editors_choice`
--
ALTER TABLE `editors_choice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `membership_groups`
--
ALTER TABLE `membership_groups`
  MODIFY `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  MODIFY `recID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
