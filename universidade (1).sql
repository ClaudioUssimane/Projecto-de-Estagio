-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Out-2024 às 19:46
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `universidade`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `grade` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departamento_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sigla` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `courses`
--

INSERT INTO `courses` (`id`, `departamento_id`, `name`, `sigla`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Licenciatura em Informática', 'IT', 'Curso', '2024-09-25 08:20:19', '2024-09-25 08:20:19'),
(2, 1, 'Licenciatura em Matematica', 'MAT', 'Matematica', '2024-09-25 11:03:56', '2024-09-25 11:03:56'),
(3, 2, 'Licenciatura em Contabilidade e Auditoria', 'COA', 'llht', '2024-10-04 07:02:39', '2024-10-04 07:02:39'),
(4, 2, 'Licenciatura em Gestão Aduanéira', 'GEA', 'jsjnd', '2024-10-04 07:03:39', '2024-10-04 07:03:39'),
(5, 3, 'Licenciatura em Gestão de Recursos Humanos', 'GRH', 'kkgbng', '2024-10-04 07:05:10', '2024-10-04 07:05:10'),
(6, 3, 'Licenciatura em Gestão Pública e Autárquica', 'GEPA', 'kdksfd', '2024-10-04 07:06:17', '2024-10-04 07:06:17'),
(7, 3, 'Licenciatura em Gestão de Empresas', 'GE', 'ihhb', '2024-10-04 07:07:50', '2024-10-04 07:07:50'),
(8, 4, 'Licenciatura em Física', 'LF', 'dgswgerh', '2024-10-04 22:48:49', '2024-10-04 22:48:49'),
(9, 4, 'Licenciatura em Química', 'LQ', 'dfswg', '2024-10-04 22:49:23', '2024-10-04 22:49:23'),
(10, 4, 'Licenciatura em Biologia', 'LBIO', 'dfsggui', '2024-10-04 22:49:54', '2024-10-04 22:49:54'),
(11, 5, 'Licenciatura em Ambiente e Sustentabilidade Comunitária', 'ASC', 'fetwty', '2024-10-04 22:51:35', '2024-10-04 22:51:35'),
(12, 5, 'Licenciatura em Gestão Ambiental e Desenvolvimento Comunitário', 'GADC', 'ddsgd', '2024-10-04 22:52:54', '2024-10-04 22:52:54'),
(13, 5, 'Licenciatura em Geografia', 'GE', 'dsafg', '2024-10-04 22:53:24', '2024-10-04 22:53:24'),
(14, 6, 'Licenciatura em Medicina Veterinária', 'MV', 'iskaf', '2024-10-05 00:34:14', '2024-10-05 00:34:14'),
(15, 7, 'Licenciatura em Zootecnia', 'ZTC', 'sdegegw', '2024-10-05 00:35:45', '2024-10-05 00:35:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `date_ranges`
--

CREATE TABLE `date_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sigla` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `departamentos`
--

INSERT INTO `departamentos` (`id`, `faculty_id`, `name`, `sigla`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'Departamento de Matemática', 'DMAT', 'Inclui dois Cursos', '2024-09-25 08:18:55', '2024-09-25 08:18:55'),
(2, 5, 'Departamento de Economia e Gestão', 'DEP', 'uns cursos', '2024-10-04 06:59:54', '2024-10-04 06:59:54'),
(3, 5, 'Departamento de Administração e Gestão', 'DAG', 'uns crusos', '2024-10-04 07:01:14', '2024-10-04 07:01:14'),
(4, 2, 'Departamento de Ciências Naturais', 'DCN', 'fhsjdfs', '2024-10-04 22:45:58', '2024-10-04 22:45:58'),
(5, 2, 'Departamento de Ciências da Terra e Recursos Naturais', 'DCTRN', 'esgaefewgt', '2024-10-04 22:46:48', '2024-10-04 22:46:48'),
(6, 7, 'Departamento de Veterinária', 'DV', 'jdjfbwba', '2024-10-05 00:32:32', '2024-10-05 00:32:32'),
(7, 7, 'Departamento de Zootecnia', 'DZ', 'gwsdf', '2024-10-05 00:33:08', '2024-10-05 00:33:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `head_of_department` varchar(255) DEFAULT NULL,
  `department_start_date` varchar(255) DEFAULT NULL,
  `no_of_students` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sigla` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `sigla`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Faculdade de Educação e Psicologia', 'FACEP', 'Inclui dois Cursos', '2024-09-24 02:23:57', '2024-09-24 02:23:57'),
(2, 'Faculdade de Ciências Naturais e Exactas', 'FCNE', 'Cursos e Mais', '2024-09-24 02:24:42', '2024-09-24 02:24:42'),
(3, 'Faculdade de Letras e Ciências Sociais', 'FLCS', 'Faculdade de Dois Cursos', '2024-09-24 02:25:32', '2024-09-24 02:25:32'),
(4, 'Faculdade de Ciências de Saúde e Desportos', 'FCSD', 'Faculdades', '2024-09-24 02:26:08', '2024-09-24 02:26:08'),
(5, 'Faculdade de Economia e Administração', 'FEA', 'Faculdades', '2024-09-24 02:26:42', '2024-09-24 02:26:42'),
(6, 'Faculdade de Engenharias', 'FE', 'Faculdade', '2024-09-24 02:27:22', '2024-09-24 02:27:22'),
(7, 'Faculdade de Medicina Veterinária e Zootecnia', 'FMVZ', 'Faculdade', '2024-09-24 02:31:33', '2024-09-24 02:31:33'),
(8, 'Escola Superior de Ciências Agrárias', 'ESCA', 'Escola', '2024-09-24 02:32:04', '2024-09-24 02:32:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fees_information`
--

CREATE TABLE `fees_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `fees_type` varchar(255) DEFAULT NULL,
  `fees_amount` varchar(255) DEFAULT NULL,
  `paid_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fees_types`
--

CREATE TABLE `fees_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fees_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fees_types`
--

INSERT INTO `fees_types` (`id`, `fees_type`, `created_at`, `updated_at`) VALUES
(1, 'Class Test', NULL, NULL),
(2, 'Exam Fees', NULL, NULL),
(3, 'Hostel Fees', NULL, NULL),
(4, 'Transport Fees', NULL, NULL),
(5, 'Mess Fees', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscriptions`
--

CREATE TABLE `inscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `departamento_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `extetion` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `inscriptions`
--

INSERT INTO `inscriptions` (`id`, `user_id`, `faculty_id`, `departamento_id`, `course_id`, `extetion`, `title`, `level`, `created_at`, `updated_at`) VALUES
(2, 10, 2, 1, 1, 'Chongoene', 'SGTCC', '5º Ano', '2024-09-27 00:12:05', '2024-09-27 00:12:05'),
(3, 13, 2, 1, 1, 'Chongoene', 'Sistema de Gestao de Recusros Humanos', '4º Ano', '2024-10-01 18:20:25', '2024-10-01 18:20:25'),
(4, 2, 2, 1, 1, 'Chongoene', 'OJS', '4º Ano', '2024-10-04 02:28:28', '2024-10-04 02:28:28'),
(5, 17, 2, 5, 13, 'Maxixe', 'Apresentacao do Ambiente', '2º Ano', '2024-10-14 08:54:18', '2024-10-14 08:54:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice_additional_charges`
--

CREATE TABLE `invoice_additional_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `service_charge` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice_customer_names`
--

CREATE TABLE `invoice_customer_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `enable_tax` varchar(255) DEFAULT NULL,
  `recurring_incoice` varchar(255) DEFAULT NULL,
  `by_month` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `invoice_from` longtext DEFAULT NULL,
  `invoice_to` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice_discounts`
--

CREATE TABLE `invoice_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `offer_new` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice_payment_details`
--

CREATE TABLE `invoice_payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `add_terms_and_Conditions` varchar(255) DEFAULT NULL,
  `add_notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice_total_amounts`
--

CREATE TABLE `invoice_total_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `taxable_amount` varchar(255) DEFAULT NULL,
  `round_off` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `upload_sign` varchar(255) DEFAULT NULL,
  `name_of_the_signatuaory` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `from_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_08_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_08_03_061844_create_user_types_table', 1),
(4, '2022_08_03_061918_create_role_type_users_table', 1),
(5, '2023_02_26_224452_create_students_table', 1),
(6, '2023_04_17_223959_create_teachers_table', 1),
(7, '2023_10_15_120501_create_subjects_table', 1),
(8, '2023_11_06_120643_create_departments_table', 1),
(9, '2023_12_03_013131_create_invoice_customer_names_table', 1),
(10, '2023_12_03_013232_create_invoice_details_table', 1),
(11, '2023_12_03_013327_create_invoice_payment_details_table', 1),
(12, '2023_12_03_013436_create_invoice_total_amounts_table', 1),
(13, '2023_12_03_013554_create_invoice_additional_charges_table', 1),
(14, '2023_12_03_013631_create_invoice_discounts_table', 1),
(15, '2024_03_10_025955_create_fees_types_table', 1),
(16, '2024_03_13_104555_create_fees_information_table', 1),
(17, '2024_09_04_113420_create_faculties_table', 1),
(18, '2024_09_04_145324_create_departamentos_table', 1),
(19, '2024_09_04_152900_create_courses_table', 1),
(20, '2024_09_07_090026_create_norms_table', 1),
(21, '2024_09_07_101051_create_inscriptions_table', 1),
(22, '2024_09_08_081141_create_reports_table', 1),
(23, '2024_09_10_023046_create_certificates_table', 1),
(24, '2024_09_10_070410_add_grade_to_reports_table', 1),
(25, '2024_09_10_091802_add_access_level_to_users_table', 1),
(26, '2024_09_15_180258_create_messages_table', 1),
(27, '2024_09_25_181109_add_course_id_to_users_table', 2),
(28, '2024_09_28_070450_create_programs_table', 3),
(29, '2024_10_14_055357_create_programations_table', 4),
(30, '2024_10_14_105929_create_date_ranges_table', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `norms`
--

CREATE TABLE `norms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `formatation` varchar(255) NOT NULL,
  `stucture` varchar(255) NOT NULL,
  `example` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `programations`
--

CREATE TABLE `programations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `hour` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `programations`
--

INSERT INTO `programations` (`id`, `user_id`, `title`, `date`, `hour`, `created_at`, `updated_at`) VALUES
(3, 17, 'Apresentacao do Ambiente', '2024-10-16', '09:00:00', '2024-10-14 09:15:29', '2024-10-14 09:15:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `document_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `course_id`, `document_path`, `created_at`, `updated_at`, `grade`) VALUES
(4, 2, 1, 'report/Ata numero dois.pdf', '2024-09-30 07:00:44', '2024-09-30 07:00:44', NULL),
(5, 13, 1, 'report/Ficha_2.pdf', '2024-10-01 18:21:17', '2024-10-01 19:18:54', 7),
(6, 10, 1, 'report/Ficha_2.pdf', '2024-10-03 22:39:36', '2024-10-03 22:51:31', 12),
(7, 17, 13, 'report/programacao_2.pdf', '2024-10-14 08:58:29', '2024-10-14 09:04:32', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_type_users`
--

CREATE TABLE `role_type_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_type_users`
--

INSERT INTO `role_type_users` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Super Admin', NULL, NULL),
(3, 'Normal User', NULL, NULL),
(4, 'Teachers', NULL, NULL),
(5, 'Student', NULL, NULL),
(6, 'Staff', NULL, NULL),
(7, 'Client', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `roll` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `admission_id` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `upload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` varchar(255) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `access_level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_name`, `course_id`, `password`, `remember_token`, `access_level`, `created_at`, `updated_at`) VALUES
(1, 'Claudio Zito Ussimane', 'claudio15@gmail.com', 'Coordenador', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 1, NULL, NULL),
(2, 'Betuel Sumbane', 'betuza@gmail.com', 'Estudante', NULL, '$2y$10$j.alKbHB5IyAbMggBRu8j.vOCgZ9NDwsa1HEfVHxEL18cFNbB08bu', NULL, NULL, '2024-09-24 00:41:37', '2024-09-24 00:41:37'),
(3, 'Mirson Mboa', 'mirson@gmail.com', 'Estudante', NULL, '$2y$10$g0yU/bJeaMQPRLeUu8kzGeUq3kc8FXLNRw.8Tr8IiOgjoCfsGqXcS', NULL, NULL, '2024-09-24 01:39:42', '2024-09-24 01:39:42'),
(5, 'Geraldo Junio Macoo', 'macoger@gmail.com', 'Diretor', NULL, '$2y$10$TIfap/Qjf7.xhPhNjiZz9e7quqK.TbA2ksy3Is3S4M3CAa4.tZOtm', NULL, 1, '2024-09-25 09:22:30', '2024-09-25 09:22:30'),
(6, 'Jacinto Vilanculos', 'macoger@gmail.com', 'Diretor', 1, '$2y$10$KcFzEg8HX12Ycoy7ldz4j.v3V8/y5m/4VRg0Y1OBApSx9lAqzlXKa', NULL, NULL, '2024-09-25 10:31:42', '2024-09-25 10:31:42'),
(7, 'Narcisio Mula', 'mula@gmail.com', 'Diretor', 1, '$2y$10$3Z72ec6X9dEgyiFOCVlV7OrVXpqQdw4ulCQ1f6uSu7y/O6GdmoFpK', NULL, 2, '2024-09-25 10:44:33', '2024-09-25 10:44:33'),
(9, 'Fancisco Tsembane', 'francisco@gmail.com', 'Diretor', 2, '$2y$10$AtRhWhYwJN9MGzNlYrw48.dl4SopOGflVPTvJCKaPJHAZcDjOCEti', NULL, 2, '2024-09-25 11:42:16', '2024-09-25 11:42:16'),
(10, 'Fermino Mutemba', 'fsalvadormuthemba@gmail.com', 'Estudante', NULL, '$2y$10$/GzoGnPJT.fUdvCY3LcQj.7FDeqWX2U9bkzbUwQCj.IiZ9Hp2mYX.', NULL, NULL, '2024-09-27 00:10:06', '2024-09-27 00:10:06'),
(11, 'Carlos Matavele', 'carlos@gmail.com', 'Diretor', 1, '$2y$10$PjJ06l/C3epp8CjjyhxiVe.V2B8jG2HzyLtFLgIqYpsDHf8757Lyq', NULL, 2, '2024-09-27 00:19:23', '2024-09-27 00:19:23'),
(12, 'Issufito Nanla', 'issufonanla@gmail.com', 'Estudante', NULL, '$2y$10$H3JVZ49rixaxyOJtunZzX.be0d2aHZnckh/lAQ0wH3ANalhbR0KRi', NULL, NULL, '2024-09-30 06:18:12', '2024-09-30 06:18:12'),
(13, 'Shelton Duvane', 'shalton@gmail.com', 'Estudante', NULL, '$2y$10$eMVwZ0uPCx6HSipKRv4F4eevnqROcY3AP2Y9K9cGA/5dLHN1pTzhu', NULL, NULL, '2024-10-01 18:18:19', '2024-10-01 18:18:19'),
(14, 'Casemiro Mavanga', 'casemiro@gmail.com', 'Diretor', 2, '$2y$10$Y2KTfB/3xSadKP.YBV1ydeRK7NyevEqhfq04Zvw0VTbMqX.26GH5e', NULL, 2, '2024-10-03 23:23:07', '2024-10-03 23:23:07'),
(15, 'Osvaldo Singo', 'osvaldosingo3@gmail.com', 'Estudante', NULL, '$2y$10$xhLCobb/7F0ALNPQ3YZGj.DYBpiyhyU1uhoMu61MTeHcBDnRjrK8W', NULL, NULL, '2024-10-04 04:35:36', '2024-10-04 04:35:36'),
(16, 'Rodolfo Salgado', 'rodolfo@gmail.com', 'Diretor', 1, '$2y$10$SxwfNGWJcJqMD17cEFSyF.PT5OlUKIrTkHcC3dI/vqvgC3dAZ3IEq', NULL, 2, '2024-10-14 00:54:18', '2024-10-14 00:54:18'),
(17, 'Lidia Solomao Mula', 'lidia@gmail.com', 'Estudante', NULL, '$2y$10$Bb6k8Pds6hfOx380G3gBeOVG48/1LSmuEhC86Py6EEjoDvsLGRfyW', NULL, NULL, '2024-10-14 08:49:03', '2024-10-14 08:49:03'),
(18, 'Americo Mahumane', 'mahumane@gmail.com', 'Diretor', 13, '$2y$10$mK8QVQ0sasqiNm.HwwyrlOIrbALqMxXJK0WA3cwcVClz38pj9jq8C', NULL, 2, '2024-10-14 09:02:46', '2024-10-14 09:02:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Inactive', NULL, NULL),
(3, 'Disable', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_user_id_foreign` (`user_id`),
  ADD KEY `certificates_course_id_foreign` (`course_id`);

--
-- Índices para tabela `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_departamento_id_foreign` (`departamento_id`);

--
-- Índices para tabela `date_ranges`
--
ALTER TABLE `date_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamentos_faculty_id_foreign` (`faculty_id`);

--
-- Índices para tabela `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fees_information`
--
ALTER TABLE `fees_information`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fees_types`
--
ALTER TABLE `fees_types`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inscriptions_user_id_foreign` (`user_id`),
  ADD KEY `inscriptions_faculty_id_foreign` (`faculty_id`),
  ADD KEY `inscriptions_departamento_id_foreign` (`departamento_id`),
  ADD KEY `inscriptions_course_id_foreign` (`course_id`);

--
-- Índices para tabela `invoice_additional_charges`
--
ALTER TABLE `invoice_additional_charges`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `invoice_customer_names`
--
ALTER TABLE `invoice_customer_names`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `invoice_discounts`
--
ALTER TABLE `invoice_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `invoice_payment_details`
--
ALTER TABLE `invoice_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `invoice_total_amounts`
--
ALTER TABLE `invoice_total_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `norms`
--
ALTER TABLE `norms`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `programations`
--
ALTER TABLE `programations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programations_user_id_foreign` (`user_id`);

--
-- Índices para tabela `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`),
  ADD KEY `reports_course_id_foreign` (`course_id`);

--
-- Índices para tabela `role_type_users`
--
ALTER TABLE `role_type_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `date_ranges`
--
ALTER TABLE `date_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `fees_information`
--
ALTER TABLE `fees_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fees_types`
--
ALTER TABLE `fees_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `invoice_additional_charges`
--
ALTER TABLE `invoice_additional_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `invoice_customer_names`
--
ALTER TABLE `invoice_customer_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `invoice_discounts`
--
ALTER TABLE `invoice_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `invoice_payment_details`
--
ALTER TABLE `invoice_payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `invoice_total_amounts`
--
ALTER TABLE `invoice_total_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `norms`
--
ALTER TABLE `norms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `programations`
--
ALTER TABLE `programations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `role_type_users`
--
ALTER TABLE `role_type_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `certificates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`);

--
-- Limitadores para a tabela `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`);

--
-- Limitadores para a tabela `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD CONSTRAINT `inscriptions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `inscriptions_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`),
  ADD CONSTRAINT `inscriptions_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `inscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `programations`
--
ALTER TABLE `programations`
  ADD CONSTRAINT `programations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
