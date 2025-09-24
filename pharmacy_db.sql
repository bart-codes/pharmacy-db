--
-- Database: `pharmacy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
`id` int(14) NOT NULL,
  `amount` varchar(64) DEFAULT NULL,
  `due` varchar(64) DEFAULT NULL,
  `paid` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_report`
--

CREATE TABLE IF NOT EXISTS `accounts_report` (
`id` int(14) NOT NULL,
  `transection_type` varchar(128) DEFAULT NULL,
  `transection_name` varchar(128) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `mtype` varchar(128) DEFAULT NULL,
  `cheque` varchar(128) DEFAULT NULL,
  `issuedate` varchar(128) DEFAULT NULL,
  `bankid` varchar(128) DEFAULT NULL,
  `amount` varchar(128) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_report`
--

INSERT INTO `accounts_report` (`id`, `transection_type`, `transection_name`, `description`, `mtype`, `cheque`, `issuedate`, `bankid`, `amount`, `entry_id`, `date`) VALUES
(26, 'Payment', 'dsfsf', 'sdfsdf', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(27, 'Receipt', 'dfgfdgd', 'sdfds', 'Cash', '', '', '1', '1000', 'U392', '1522778400'),
(28, 'Payment', 'fgdfds', 'fgdgfd', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(29, 'Payment', 'fgfdg', 'sdfsd', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(30, 'Payment', 'xfsdf', 'dsfs', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(31, 'Payment', 'fdsfs', 'sfs', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(32, 'Payment', 'fdsfs', 'sfs', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(33, 'Payment', 'fdgdfgd', 'dfssf', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(34, 'Payment', 'fsfs', 'dsfds', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(35, 'Payment', 'ghgf', 'fsd', 'Cash', '', '', '1', NULL, 'U392', '1522778400'),
(36, 'Payment', 'dasda', 'dfdsfs', 'Cash', '', '', '1', NULL, 'U392', '1522778400'),
(37, 'Payment', 'dsadsa', 'asdas', 'Cash', '', '', '1', '1000', 'U392', '1522778400'),
(38, 'Receipt', 'sdfsdfs', 'sdfds', 'Cash', '', '', '1', '1000', 'U392', '1522778400'),
(39, 'Payment', 'fsdfs', 'sdffsd', 'Cash', '', '', '1', '1000', 'U392', '1522778400');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE IF NOT EXISTS `ambulance` (
  `id` int(11) NOT NULL,
  `name` varchar(333) NOT NULL,
  `email` varchar(333) NOT NULL,
  `contact` varchar(333) NOT NULL,
  `address` varchar(333) NOT NULL,
  `hospital_name` varchar(333) NOT NULL,
  `notes` varchar(333) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
`bank_id` int(14) NOT NULL,
  `bank_name` varchar(256) DEFAULT NULL,
  `account_name` varchar(256) DEFAULT NULL,
  `account_number` varchar(512) DEFAULT NULL,
  `branch` varchar(512) DEFAULT NULL,
  `signature` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `closing`
--

CREATE TABLE IF NOT EXISTS `closing` (
`id` int(14) NOT NULL,
  `date` varchar(128) DEFAULT NULL,
  `opening_balance` varchar(128) DEFAULT NULL,
  `cash_in` varchar(128) DEFAULT NULL,
  `cash_out` varchar(128) DEFAULT NULL,
  `cash_in_hand` varchar(128) DEFAULT NULL,
  `closing_balance` varchar(128) DEFAULT NULL,
  `adjustment` varchar(128) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `closing`
--

INSERT INTO `closing` (`id`, `date`, `opening_balance`, `cash_in`, `cash_out`, `cash_in_hand`, `closing_balance`, `adjustment`, `entry_id`) VALUES
(1, '2023/07/10', '0', '25000', '0', '25000', '25000', '0', 'U392');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`id` int(11) NOT NULL,
  `company_name` varchar(128) NOT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `status`) VALUES
(1, 'ACI 1', 'ACTIVE'),
(2, 'ACI 2', 'ACTIVE'),
(3, 'ACI 3', 'ACTIVE'),
(4, 'ACI 4', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(14) NOT NULL,
  `c_id` varchar(64) DEFAULT NULL,
  `c_name` varchar(256) DEFAULT NULL,
  `pharmacy_name` varchar(256) DEFAULT NULL,
  `c_email` varchar(256) DEFAULT NULL,
  `c_type` enum('Regular','Wholesale') NOT NULL DEFAULT 'Regular',
  `barcode` varchar(512) DEFAULT NULL,
  `cus_contact` varchar(64) DEFAULT NULL,
  `c_address` varchar(512) DEFAULT NULL,
  `c_note` varchar(512) DEFAULT NULL,
  `c_img` varchar(128) DEFAULT NULL,
  `regular_discount` varchar(64) DEFAULT NULL,
  `target_amount` varchar(64) DEFAULT NULL,
  `target_discount` varchar(64) DEFAULT NULL,
  `entrydate` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `c_id`, `c_name`, `pharmacy_name`, `c_email`, `c_type`, `barcode`, `cus_contact`, `c_address`, `c_note`, `c_img`, `regular_discount`, `target_amount`, `target_discount`, `entrydate`) VALUES
(39, 'C1351', 'Stanley', '', 'stanley@gmail.com', 'Regular', '7487488', '0727908513', 'Nrb', '', 'C1351.png', '', '', '', '1687212000'),
(40, 'C262525', 'Customer', 'Prestine', 'customer@gmail.com', 'Wholesale', '8044586', '0727908510', 'Nrb', '', 'C262525.png', '', '', '', '1687212000');

-- --------------------------------------------------------

--
-- Table structure for table `customer_ledger`
--

CREATE TABLE IF NOT EXISTS `customer_ledger` (
`id` int(14) NOT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `total_balance` varchar(64) DEFAULT NULL,
  `total_paid` varchar(64) NOT NULL,
  `total_due` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_ledger`
--

INSERT INTO `customer_ledger` (`id`, `customer_id`, `total_balance`, `total_paid`, `total_due`) VALUES
(20, 'C1351', '25000', '25000', '0'),
(21, 'C262525', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
`id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `contact` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fire_service`
--

CREATE TABLE IF NOT EXISTS `fire_service` (
  `id` int(11) NOT NULL,
  `name` varchar(223) NOT NULL,
  `email` varchar(223) NOT NULL,
  `contact` varchar(223) NOT NULL,
  `address` varchar(223) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
`id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `contact` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE IF NOT EXISTS `login_history` (
`id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL,
  `login` varchar(64) DEFAULT NULL,
  `logout` varchar(64) DEFAULT NULL,
  `counter` varchar(64) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `em_id`, `date`, `login`, `logout`, `counter`, `status`) VALUES
(35, 'U392', '2023/06/20', '1687253931', '1687254322', 'ADMIN', ''),
(36, 'U392', '2023/06/20', '1687254462', '1687256494', 'ADMIN', ''),
(37, 'U392', '2023/06/20', '1687255320', '1687255347', 'ADMIN', ''),
(38, 'U392', '2023/06/20', '1687255413', '0', 'ADMIN', '1'),
(39, 'U310', '2023/06/20', '1687256529', '1687257434', 'SALESMAN', ''),
(40, 'U310', '2023/06/20', '1687258363', '1687258373', 'SALESMAN', ''),
(41, 'U392', '2023/06/20', '1687258508', '0', 'ADMIN', '1'),
(42, 'U392', '2023/07/10', '1688961375', '1688963122', 'ADMIN', ''),
(43, 'U392', '2023/07/10', '1688963944', '1688963977', 'ADMIN', ''),
(44, 'U392', '2023/07/10', '1688963991', '1688964347', 'ADMIN', ''),
(45, 'U322', '2023/07/10', '1688964361', '1688964415', 'ADMIN', ''),
(46, 'U322', '2023/07/10', '1688964476', '1688966293', 'MANAGER', ''),
(47, 'U322', '2023/07/10', '1688973341', '1688973918', 'SALESMAN', ''),
(48, 'U392', '2023/07/10', '1688973942', '0', 'ADMIN', '1');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
`id` bigint(20) NOT NULL,
  `product_id` varchar(64) DEFAULT NULL,
  `supplier_id` varchar(64) DEFAULT NULL,
  `batch_no` varchar(256) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `generic_name` varchar(64) DEFAULT NULL,
  `strength` varchar(64) DEFAULT NULL,
  `form` varchar(64) DEFAULT NULL,
  `box_size` varchar(64) DEFAULT NULL,
  `trade_price` varchar(64) DEFAULT NULL,
  `mrp` varchar(64) DEFAULT NULL,
  `box_price` varchar(64) DEFAULT NULL,
  `product_details` varchar(512) DEFAULT NULL,
  `side_effect` varchar(512) DEFAULT NULL,
  `expire_date` varchar(64) DEFAULT NULL,
  `instock` int(128) DEFAULT NULL,
  `w_discount` varchar(128) DEFAULT NULL,
  `product_image` varchar(256) DEFAULT NULL,
  `short_stock` int(128) DEFAULT NULL,
  `favourite` enum('1','0') NOT NULL DEFAULT '0',
  `date` varchar(256) DEFAULT NULL,
  `discount` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `sale_qty` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `product_id`, `supplier_id`, `batch_no`, `product_name`, `generic_name`, `strength`, `form`, `box_size`, `trade_price`, `mrp`, `box_price`, `product_details`, `side_effect`, `expire_date`, `instock`, `w_discount`, `product_image`, `short_stock`, `favourite`, `date`, `discount`, `sale_qty`) VALUES
(344, 'P46061', 'S17547', '1159399414', 'Capsules', 'Dennis', '50ml', 'Capsules', '1', '100', '200', '200.00', NULL, 'Dizziness, Headaches', '31/07/2023', 94, NULL, 'P46061.png', 10, '0', '0', 'NO', '6'),
(345, 'P12491', 'S17547', '431927490', 'eye drop', 'eye drop', '0.01%', 'Eye Drop', '1', '50', '250', '250.00', NULL, 'Headache', '10/07/2024', 0, NULL, 'P12491.png', 10, '0', '1696629600', 'NO', '100');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE IF NOT EXISTS `police` (
`id` int(14) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `contact` varchar(256) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
`id` int(14) NOT NULL,
  `p_id` varchar(64) DEFAULT NULL,
  `sid` varchar(64) DEFAULT NULL,
  `invoice_no` varchar(64) DEFAULT NULL,
  `pur_date` varchar(64) DEFAULT NULL,
  `pur_details` varchar(64) DEFAULT NULL,
  `total_discount` varchar(64) DEFAULT NULL,
  `gtotal_amount` varchar(64) DEFAULT NULL,
  `entry_date` varchar(64) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `p_id`, `sid`, `invoice_no`, `pur_date`, `pur_details`, `total_discount`, `gtotal_amount`, `entry_date`, `entry_id`) VALUES
(128, 'P4018225', 'S17547', '001', '1687212000', '', NULL, '5000', '1687197600', 'U392'),
(129, 'P777906', 'S17547', '002', '1688940000', 'Eye Drop', NULL, '5000', '1688925600', 'U392');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE IF NOT EXISTS `purchase_history` (
`ph_id` int(14) NOT NULL,
  `pur_id` varchar(128) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `supp_id` varchar(64) DEFAULT NULL,
  `qty` varchar(128) DEFAULT NULL,
  `supplier_price` varchar(128) DEFAULT NULL,
  `discount` varchar(128) DEFAULT NULL,
  `expire_date` varchar(128) DEFAULT NULL,
  `total_amount` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `pur_id`, `mid`, `supp_id`, `qty`, `supplier_price`, `discount`, `expire_date`, `total_amount`) VALUES
(236, 'P4018225', 'P46061', 'S17547', '100', '50', NULL, '0', '5000'),
(237, 'P777906', 'P12491', 'S17547', '100', '50', NULL, '1728237600', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE IF NOT EXISTS `purchase_return` (
`id` int(14) NOT NULL,
  `r_id` varchar(64) DEFAULT NULL,
  `pur_id` varchar(64) DEFAULT NULL,
  `sid` varchar(64) DEFAULT NULL,
  `invoice_no` varchar(128) DEFAULT NULL,
  `return_date` varchar(128) DEFAULT NULL,
  `total_deduction` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE IF NOT EXISTS `purchase_return_details` (
`id` int(14) NOT NULL,
  `r_id` varchar(128) DEFAULT NULL,
  `pur_id` varchar(128) DEFAULT NULL,
  `supp_id` varchar(64) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `return_qty` varchar(64) DEFAULT NULL,
  `deduction_amount` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
`id` int(14) NOT NULL,
  `sale_id` varchar(64) DEFAULT NULL,
  `cus_id` varchar(64) DEFAULT NULL,
  `total_discount` varchar(64) DEFAULT NULL,
  `total_amount` varchar(64) DEFAULT NULL,
  `paid_amount` varchar(64) DEFAULT NULL,
  `due_amount` varchar(64) DEFAULT NULL,
  `invoice_no` varchar(128) DEFAULT NULL,
  `create_date` varchar(128) DEFAULT NULL,
  `monthyear` varchar(64) DEFAULT NULL,
  `entryid` varchar(64) DEFAULT NULL,
  `counter` varchar(64) DEFAULT NULL,
  `pay_status` enum('Hold','Pay') NOT NULL DEFAULT 'Pay',
  `sales_time` varchar(12) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_id`, `cus_id`, `total_discount`, `total_amount`, `paid_amount`, `due_amount`, `invoice_no`, `create_date`, `monthyear`, `entryid`, `counter`, `pay_status`, `sales_time`) VALUES
(1, 'S4765451', 'C1351', '0', '500', '500', '0', '44849854', '1688925600', '2023-07', 'U392', 'ADMIN', 'Pay', '1688962987'),
(2, 'S3895874', 'C1351', '0', '500', '500', '0', '36888428', '1688925600', '2023-07', 'U392', 'ADMIN', 'Pay', '1688962991'),
(3, 'S3509599', 'C1351', '0', '500', '500', '0', '49688721', '1688925600', '2023-07', 'U392', 'ADMIN', 'Pay', '1688963009'),
(4, 'S9657662', 'C1351', '0', '23500', '23500', '0', '47030030', '1688925600', '2023-07', 'U322', 'Counter1', 'Pay', '1688973413'),
(5, 'S5437009', 'WalkIn', '0', '400', '400', '0', '27082519', '1688925600', '2023-07', 'U392', 'ADMIN', 'Pay', '1688974117'),
(6, 'S6742595', 'WalkIn', '0', '200', '200', '0', '17056884', '1688925600', '2023-07', 'U392', 'ADMIN', 'Pay', '1688975028'),
(7, 'S4037448', 'WalkIn', '0', '200', '200', '0', '48626709', '1688925600', '2023-07', 'U392', 'ADMIN', 'Pay', '1688975130'),
(8, 'S878289', 'WalkIn', '0', '200', '200', '0', '12208252', '1688925600', '2023-07', 'U392', 'ADMIN', 'Pay', '1688975164'),
(9, 'S433127', 'WalkIn', '0', '200', '200', '0', '14953613', '1688925600', '2023-07', 'U392', 'ADMIN', 'Pay', '1688976671');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE IF NOT EXISTS `sales_details` (
`sd_id` int(14) NOT NULL,
  `sale_id` varchar(128) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `cartoon` varchar(128) DEFAULT NULL,
  `qty` varchar(128) DEFAULT NULL,
  `rate` varchar(128) DEFAULT NULL,
  `supp_rate` varchar(128) NOT NULL,
  `total_price` varchar(128) DEFAULT NULL,
  `discount` varchar(128) DEFAULT NULL,
  `total_discount` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sd_id`, `sale_id`, `mid`, `cartoon`, `qty`, `rate`, `supp_rate`, `total_price`, `discount`, `total_discount`) VALUES
(1, 'S4765451', 'P12491', NULL, '2', '', '', '500', '0', NULL),
(2, 'S3895874', 'P12491', NULL, '2', '', '', '500', '0', NULL),
(3, 'S3509599', 'P12491', NULL, '2', '', '', '500', '0', NULL),
(4, 'S9657662', 'P12491', NULL, '94', '', '', '23500', '0', NULL),
(5, 'S5437009', 'P46061', NULL, '2', '', '', '400', '0', NULL),
(6, 'S6742595', 'P46061', NULL, '1', '', '', '200', '0', NULL),
(7, 'S4037448', 'P46061', NULL, '1', '', '', '200', '0', NULL),
(8, 'S878289', 'P46061', NULL, '1', '', '', '200', '0', NULL),
(9, 'S433127', 'P46061', NULL, '1', '', '', '200', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE IF NOT EXISTS `sales_return` (
`id` int(14) NOT NULL,
  `sr_id` varchar(128) DEFAULT NULL,
  `cus_id` varchar(128) DEFAULT NULL,
  `sale_id` varchar(128) DEFAULT NULL,
  `invoice_no` varchar(256) DEFAULT NULL,
  `return_date` varchar(128) DEFAULT NULL,
  `total_deduction` varchar(128) DEFAULT NULL,
  `total_amount` varchar(128) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL,
  `counter` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_details`
--

CREATE TABLE IF NOT EXISTS `sales_return_details` (
`id` int(14) NOT NULL,
  `sr_id` varchar(128) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `r_qty` varchar(128) DEFAULT NULL,
  `r_total` varchar(128) DEFAULT NULL,
  `r_deduction` varchar(128) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `sitelogo` varchar(128) DEFAULT NULL,
  `sitetitle` varchar(256) DEFAULT NULL,
  `description` text,
  `copyright` varchar(128) DEFAULT NULL,
  `contact` varchar(128) DEFAULT NULL,
  `currency` varchar(128) DEFAULT NULL,
  `symbol` varchar(64) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `sitelogo`, `sitetitle`, `description`, `copyright`, `contact`, `currency`, `symbol`, `email`, `address`) VALUES
(1, 'RAYCHEM PHARMACY ', 'raychem_logo-removebg-preview23.png', 'RAYCHEM PHARMACY ', 'Raychem Pharmacy Management System', 'Genit Bangladesh', '0791316984', 'KES', 'KES', 'info@raychempharmacy.com', 'Kasarani, Mwiki-Nairobi.');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`id` int(14) NOT NULL,
  `s_id` varchar(64) DEFAULT NULL,
  `s_name` varchar(256) DEFAULT NULL,
  `s_email` varchar(256) DEFAULT NULL,
  `s_note` varchar(512) DEFAULT NULL,
  `s_phone` varchar(128) DEFAULT NULL,
  `s_address` varchar(512) NOT NULL,
  `s_img` varchar(256) DEFAULT NULL,
  `entrydate` varchar(128) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `s_id`, `s_name`, `s_email`, `s_note`, `s_phone`, `s_address`, `s_img`, `entrydate`, `status`) VALUES
(74, 'S17547', 'Dennis Capsule', 'dennis@gmail.com', 'dennis', '0727908514', 'NYS', 'S17547.png', '06-20-2023', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_ledger`
--

CREATE TABLE IF NOT EXISTS `supplier_ledger` (
`id` int(14) NOT NULL,
  `supplier_id` varchar(256) DEFAULT NULL,
  `total_amount` varchar(256) DEFAULT NULL,
  `total_paid` varchar(256) DEFAULT NULL,
  `total_due` varchar(256) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_ledger`
--

INSERT INTO `supplier_ledger` (`id`, `supplier_id`, `total_amount`, `total_paid`, `total_due`) VALUES
(59, 'S17547', '10000', '10000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE IF NOT EXISTS `supplier_product` (
`sp_id` int(14) NOT NULL,
  `pro_id` varchar(64) DEFAULT NULL,
  `sup_id` varchar(64) DEFAULT NULL,
  `sup_price` varchar(64) DEFAULT NULL,
  `sup_date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supp_account`
--

CREATE TABLE IF NOT EXISTS `supp_account` (
`id` int(14) NOT NULL,
  `supplier_id` varchar(64) DEFAULT NULL,
  `pur_id` varchar(128) DEFAULT NULL,
  `total_amount` varchar(64) DEFAULT NULL,
  `paid_amount` varchar(64) DEFAULT NULL,
  `due_amount` varchar(256) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supp_account`
--

INSERT INTO `supp_account` (`id`, `supplier_id`, `pur_id`, `total_amount`, `paid_amount`, `due_amount`, `date`) VALUES
(31, 'S17547', 'P4018225', '5000', '5000', '0', ''),
(32, 'S17547', 'P777906', '5000', '5000', '0', '10/07/2023');

-- --------------------------------------------------------

--
-- Table structure for table `supp_payment`
--

CREATE TABLE IF NOT EXISTS `supp_payment` (
`id` int(14) NOT NULL,
  `supp_id` varchar(64) DEFAULT NULL,
  `pur_id` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `bank_id` int(14) DEFAULT NULL,
  `cheque_no` varchar(128) DEFAULT NULL,
  `issue_date` varchar(64) DEFAULT NULL,
  `receiver_name` varchar(128) DEFAULT NULL,
  `receiver_contact` varchar(128) DEFAULT NULL,
  `paid_amount` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supp_payment`
--

INSERT INTO `supp_payment` (`id`, `supp_id`, `pur_id`, `type`, `bank_id`, `cheque_no`, `issue_date`, `receiver_name`, `receiver_contact`, `paid_amount`, `date`) VALUES
(46, 'S17547', 'P4018225', 'Credit', NULL, NULL, NULL, '', '', '5000', ''),
(47, 'S17547', 'P777906', 'Credit', NULL, NULL, NULL, 'Dennis', 'Dennis', '5000', '10/07/2023');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `em_name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `em_role` enum('SALESMAN','ADMIN','MANAGER') NOT NULL DEFAULT 'SALESMAN',
  `em_contact` varchar(128) DEFAULT NULL,
  `em_address` varchar(512) DEFAULT NULL,
  `em_image` varchar(256) DEFAULT NULL,
  `em_details` varchar(512) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `em_entrydate` varchar(64) DEFAULT NULL,
  `em_ip` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `em_id`, `em_name`, `email`, `password`, `em_role`, `em_contact`, `em_address`, `em_image`, `em_details`, `status`, `em_entrydate`, `em_ip`) VALUES
(24, 'U392', 'admin', 'admin@admin.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'ADMIN', '0791316984', 'Kasarani', 'U392.jpg', 'Administrator', 'ACTIVE', '0', '::1'),
(28, 'U322', 'staff', 'staff@staff.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'SALESMAN', '0700100122', 'bnm nrb', NULL, '', 'ACTIVE', '1696629600', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_report`
--
ALTER TABLE `accounts_report`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
 ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `closing`
--
ALTER TABLE `closing`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_ledger`
--
ALTER TABLE `customer_ledger`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire_service`
--
ALTER TABLE `fire_service`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
 ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
 ADD PRIMARY KEY (`sd_id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_product`
--
ALTER TABLE `supplier_product`
 ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `supp_account`
--
ALTER TABLE `supp_account`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supp_payment`
--
ALTER TABLE `supp_payment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `accounts_report`
--
ALTER TABLE `accounts_report`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
MODIFY `bank_id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `closing`
--
ALTER TABLE `closing`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `customer_ledger`
--
ALTER TABLE `customer_ledger`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=346;
--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
MODIFY `ph_id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
MODIFY `sd_id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
MODIFY `sp_id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supp_account`
--
ALTER TABLE `supp_account`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `supp_payment`
--
ALTER TABLE `supp_payment`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(14) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
