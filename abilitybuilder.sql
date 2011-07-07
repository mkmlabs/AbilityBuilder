-- phpMyAdmin SQL Dump
-- version 3.3.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 01, 2011 at 03:01 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `abilitybuilder`
--

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

CREATE TABLE IF NOT EXISTS `competencies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FRAMEWORK` int(11) NOT NULL,
  `DESCRIP` text COLLATE utf8_unicode_ci NOT NULL,
  `SECTION` int(11) NOT NULL,
  `SUBSECTION` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=242 ;

--
-- Dumping data for table `competencies`
--

INSERT INTO `competencies` (`ID`, `FRAMEWORK`, `DESCRIP`, `SECTION`, `SUBSECTION`) VALUES
(1, 1, 'How well can you prioritise objectives and plan work to make best use of time and resources?', 1, 1),
(2, 1, 'How well do you agree objectives for yourself which are SMART (Specific, Measurable, Achievable, Realistic and Time-bound)?', 1, 1),
(3, 1, 'How well do you recognise changes in circumstances promptly and adjust plans and activities accordingly?', 1, 1),
(4, 1, 'How well do you identify any gaps between the requirements of your job and your current knowledge, understanding and skills?', 1, 2),
(5, 1, 'How well do you undertake the activities identified in your personal development plan?', 1, 2),
(6, 1, 'How effectively do you get regular and useful feedback on your performance from those who are in a good position to judge it?', 1, 2),
(7, 1, 'How well do you identify and work with people and organisations that can provide support for your work?', 1, 3),
(8, 1, 'How effective are you at making active use of the information gained through your personal networks?', 1, 3),
(9, 1, 'How well do you clarify your own and others'' expectations of relationships even in conflict situations?', 1, 3),
(10, 1, 'How well do you evaluate available information and consult with others to prepare a realistic budget?', 2, 4),
(11, 1, 'How effectively do you discuss and negotiate the proposed budget with relevant people?', 2, 4),
(12, 1, 'How well do you use an agreed budget to actively monitor and control performance?', 2, 4),
(13, 1, 'How well do you identify the causes of any significant variances between budget and actual?', 2, 4),
(14, 1, 'How effectively do you provide ongoing information on performance against budget to relevant people in your organisation?', 2, 4),
(15, 1, 'How well do you present budget information clearly, concisely accurately and in ways that promote understanding?', 2, 4),
(16, 1, 'How effective are you at saying no to unreasonable budget requests?', 2, 4),
(17, 1, 'How effective are you at confirming your financial responsibilities including the limits of your authority?', 2, 4),
(18, 1, 'How well do you gather and evaluate available financial information and consult with colleagues to identify priorities, potential problems and risks?', 2, 4),
(19, 1, 'How well do you encourage colleagues to identify ways of reducing expenditure and increasing income?', 2, 4),
(20, 1, 'How effective are you at identifying the additional finance required to fund the organisation''s activities?', 2, 5),
(21, 1, 'How well do you seek and make effective use of specialist financial expertise?', 2, 5),
(22, 1, 'How well do you evaluate the costs, risks and benefits of the various types and providers of finance used by the organisation?', 2, 5),
(23, 1, 'How well do you select the types of finance which are most appropriate to the needs of the organisation taking into account the views of stakeholders?', 2, 5),
(24, 1, 'How well can you present fully-costed proposals and recommendations for additional finance within your organisation including stakeholders?', 2, 5),
(25, 1, 'How effective are you at putting formal agreements in place with providers of finance?', 2, 5),
(26, 1, 'How well do you put any contingency plans in place to deal with any problems in finance available?', 2, 5),
(27, 1, 'How well do you understand the different types of finance and different providers of finance?', 2, 5),
(28, 1, 'How well do you understand how to evaluate the costs, benefits and risks of different types and providers of finance?', 2, 5),
(29, 1, 'How well can you identify the approaches to and current use of technology within your organisation?', 2, 6),
(30, 1, 'How well do you understand the trends and developments in your industry/sector in relation to technology?', 2, 6),
(31, 1, 'How effective are you at consulting with people across the organisation and externally in order to identify the successful use of technology and future opportunity for its use?', 2, 6),
(32, 1, 'How well do you ensure that the organisation has a strategy for using technology that matches the vision of the organisation?', 2, 6),
(33, 1, 'How well do you communicate the strategy for using technology across the organisation?', 2, 6),
(34, 1, 'How well do you ensure that the use of technology is driven by customer needs?', 2, 6),
(35, 1, 'How effective are you at ensuring that contingency plans are in place in case technology fails?', 2, 6),
(36, 1, 'How well do you understand how to keep up to date with the key developments in technology?', 2, 6),
(37, 1, 'How well do you understand the difference between hazards and risks?', 2, 7),
(38, 1, 'How well do you understand your legal duties for health and safety?', 2, 7),
(39, 1, 'How well do you understand what hazards may exist in your workplace?', 2, 7),
(40, 1, 'How well do you understand the particular health and safety risks which may be present in your own job role?', 2, 7),
(41, 1, 'How well can you correctly name and locate the persons responsible for health and safety in your workplace?', 2, 7),
(42, 1, 'How effective are you at ensuring that the organisation''s written health and safety policy is clearly communicated to all people?', 2, 7),
(43, 1, 'How effective are you at ensuring that the health and safety policy is put into practice in your area?', 2, 7),
(44, 1, 'How well do you ensure that a system is in place for identifying hazards and assessing risks and that prompt and affective action is taken to control identified hazards and risks?', 2, 7),
(45, 1, 'How effective are you at ensuring that systems are in place for effective monitoring, measuring and reporting of health and safety performance?', 2, 7),
(46, 1, 'How well do you understand the health and safety risks, issues and developments which are particular to your industry or sector?', 2, 7),
(47, 1, 'How well do you ensure that sufficient resources are allocated across the organisation to deal with health and safety issues?', 2, 7),
(48, 1, 'How well do you establish working relationships with all colleagues?', 3, 8),
(49, 1, 'How well do you advise colleagues promptly of any difficulties or where it will be impossible to fulfill agreements?', 3, 8),
(50, 1, 'How effectively do you identify and resolve conflicts of interest and disagreements with colleagues?', 3, 8),
(51, 1, 'How well do you exchange information and resources with colleagues to make sure that all parties can work effectively?', 3, 8),
(52, 1, 'How effective are you at providing feedback to colleagues and also seeking feedback?', 3, 8),
(53, 1, 'How well do you develop an atmosphere of professionalism and mutual support?', 3, 8),
(54, 1, 'How well do you understand how to get and utilise feedback?', 3, 8),
(55, 1, 'How well do you understand the different types of stakeholder and key principles which underpin the stakeholder concept?', 3, 8),
(56, 1, 'How effectively do you review regularly the work required and identify any shortfalls in the number of colleagues, and /or the pool of skills, knowledge, understanding and experience?', 3, 9),
(57, 1, 'How effectively do you consult with others to discuss and agree stages in the recruitment and selection process?', 3, 9),
(58, 1, 'How well do you ensure that any information on vacancies is fair, clear and accurate?', 3, 9),
(59, 1, 'How effectively do you participate in the recruitment and selection process?', 3, 9),
(60, 1, 'How well do you understand how to review the workload in your area?', 3, 9),
(61, 1, 'How well do you understand what job descriptions and person specifications should cover?', 3, 9),
(62, 1, 'How well do you understand the different recruitment and selection methods and their associated advantages and disadvantages?', 3, 9),
(63, 1, 'How well do you know how to take account of equality and diversity issues, including legislation and any relevant codes of practice when recruiting and selecting people?', 3, 9),
(64, 1, 'How well do you understand employment policy and practices within the organisation?', 3, 9),
(65, 1, 'How well can you evaluate the organisation''s strategic objectives and plans to obtain information needed for workforce planning?', 3, 10),
(66, 1, 'How well can you identify the type of skills, knowledge, understanding and experience required to undertake current and planned organisational activities?', 3, 10),
(67, 1, 'How effective are you at seeking and making use of specialist expertise to assist in workforce planning activities?', 3, 10),
(68, 1, 'How well do you understand what an effective workforce plan should cover?', 3, 10),
(69, 1, 'How well do you understand the legislation and requirements relating to employment, workers welfare and rights, equality and health and safety?', 3, 10),
(70, 1, 'How well do you plan how the team will undertake its work, identifying any priorities or critical issues and making best use of resources?', 3, 11),
(71, 1, 'How well do you allocate work to team members on a fair basis taking account for skills, knowledge and understanding, experience and workloads and the opportunity for development?', 3, 11),
(72, 1, 'How well do you encourage team members to ask questions, make suggestions and seek clarification?', 3, 11),
(73, 1, 'How well do you check the progress and quality of the work of team members on a regular and fair basis?', 3, 11),
(74, 1, 'How well do you understand how to log information on the ongoing performance of team members and use this information for performance appraisal purposes?', 3, 11),
(75, 1, 'How effective are you at promoting the benefits of learning to colleagues?', 3, 12),
(76, 1, 'How effective are you at giving colleagues fair, regular and useful feedback on their work performance, discussing and agreeing how they can improve?', 3, 12),
(77, 1, 'How well do you work with colleagues to identify and prioritise learning needs based on any gaps between the requirements of their work-roles and their current knowledge and skill?', 3, 12),
(78, 1, 'How well do you discuss and agree  with each colleague their personal development plan?', 3, 12),
(79, 1, 'How well do you support colleagues in undertaking learning activities?', 3, 12),
(80, 1, 'How well do you understand how to identify learning needs?', 3, 12),
(81, 1, 'How well do you understand the different learning styles of individuals?', 3, 12),
(82, 1, 'How well do you develop and assign objectives to people together with the associated resources?', 4, 13),
(83, 1, 'How well do you set plans which are consistent with the objectives of your area of responsibility?', 4, 13),
(84, 1, 'How effective are you at creating a sense of common purpose?', 4, 13),
(85, 1, 'How well do you monitor and control your plan so that it achieves its overall objectives?', 4, 13),
(86, 1, 'How well do you identify strengths, weaknesses, opportunities and threats to current and future work?', 4, 14),
(87, 1, 'How well do you recognise systematic issues and trends and recognise their impact upon current and future work?', 4, 14),
(88, 1, 'How well do you consult with relevant colleagues and stakeholders on future organisational development?', 4, 14),
(89, 1, 'How well do you organise information and knowledge in a way that supports effective planning?', 4, 14),
(90, 1, 'How well do you understand the principles of strategic management and business planning?', 4, 15),
(91, 1, 'How well do you understand what a written strategic business plan should cover?', 4, 15),
(92, 1, 'How well do you understand how to develop strategic objectives which are SMART (Specific, Measurable, Achievable, Realistic and Time-bound)?', 4, 15),
(93, 1, 'How effectively do you establish a clear, achievable and compelling vision which sets out where the organisation should be going?', 4, 15),
(94, 1, 'How well do you identify and prioritise strategic objectives that are consistent with the vision of the organisation?', 4, 15),
(95, 1, 'How well do you delegate responsibility and allocate resources to support a strategic plan?', 4, 15),
(96, 1, 'How well do you understand how to assess and manage risk?', 4, 15),
(97, 1, 'How well do you identify and agree measures and methods for monitoring and evaluating a strategic plan?', 4, 15),
(98, 1, 'How well do you set out and positively communicate the purpose and objectives of your area?', 4, 16),
(99, 1, 'How well do you ensure that each member of your area has personal work objectives?', 4, 16),
(100, 1, 'How well do you encourage and support your people to achieve their personal work objectives and those of the whole area?', 4, 16),
(101, 1, 'How well do you steer your area successfully through difficulties and challenges including conflict situations?', 4, 16),
(102, 1, 'How well do you create a culture within your area which encourages and recognises creativity and innovation?', 4, 16),
(103, 1, 'How effectively do you use a range of leadership styles to appropriate situations and people?', 4, 16),
(104, 1, 'How well do you ensure that organisational plans support the organisation''s purpose, values and vision?', 4, 16),
(105, 1, 'How well do you monitor relevant legal, regulatory, ethical and social requirements and the effect they have on your area?', 4, 17),
(106, 1, 'How well do you develop policies and procedures to make sure that your organisation meets all necessary requirements?', 4, 17),
(107, 1, 'How well do you make sure that your relevant people have a clear understanding of compliance requirements and of their importance?', 4, 17),
(108, 1, 'How well do you identify and correct any failures to meet the requirements?', 4, 17),
(109, 1, 'How well do you make sure that your personal behaviour, actions and words consistently reinforce the value of your organisation?', 4, 18),
(110, 1, 'How well do you communicate agreed values to people across your organisation and motivate them to put these into practice?', 4, 18),
(111, 1, 'How well do you put in place policies and systems to support agreed values?', 4, 18),
(112, 1, 'How well do you counter messages that conflict with agreed values?', 4, 18),
(113, 1, 'How well do you understand the concept of culture as applied to an organisation?', 4, 18),
(114, 1, 'How effective are you at ensuring that your organisation has a written risk management policy?', 4, 19),
(115, 1, 'How effective are you at establishing and reviewing risk criteria for your organisation taking account of others'' views?', 4, 19),
(116, 1, 'How effective are you at evaluating significant current and planned organisational activities and identifying their risk?', 4, 19),
(117, 1, 'How well do you communicate information on identified risks to relevant people across the organisation?', 4, 19),
(118, 1, 'How well do you monitor and evaluate the risk management processes of your organisation?', 4, 19),
(119, 1, 'How well do you develop an organisational culture in which people are risk aware but are prepared to take acceptable risks?', 4, 19),
(120, 1, 'How well do you ensure commitment within your area of responsibility to promoting equality of opportunity and diversity?', 4, 20),
(121, 1, 'How well do you understand your personal responsibilities and liabilities under equality legislation and codes of practice?', 4, 20),
(122, 1, 'How well do you ensure that the organisation''s written equality and diversity policy is clearly communicated to your people?', 4, 20),
(123, 1, 'How effectively do you implement the organisation''s written equality and diversity policy in your area?', 4, 20),
(124, 1, 'How well do you understand the different forms which discrimination and harrassment might take?', 4, 20),
(125, 1, 'How well do you understand the methods for monitoring, reviewing and reporting on progress in relation to equality of opportunity and diversity?', 4, 20),
(126, 1, 'How effectively do you discuss and agree the key objectives and scope of a project and the available resources with the project sponsor(s)?', 5, 21),
(127, 1, 'How well do you develop in consultation with relevant people a realistic and thorough project plan?', 5, 21),
(128, 1, 'How effective are you at briefing all project team members on the project plan and their role and responsibilities?', 5, 21),
(129, 1, 'How effective are you at recognising changes in circumstances promptly and adjusting project plans accordingly?', 5, 21),
(130, 1, 'How effective are you at finding practical ways to overcome barriers to progress in a project?', 5, 21),
(131, 1, 'How effective are you at implementing a project plan including the selection and application of basic project management tools and techniques?', 5, 21),
(132, 1, 'How well do you communicate progress and completion to the project sponsor(s)?', 5, 21),
(133, 1, 'How well do you understand the role and key responsibilities of a project manager?', 5, 21),
(134, 1, 'How well do you understand the ways of identifying and managing potential risks in relation to a project?', 5, 21),
(135, 1, 'How effectively do you make sure that everyone involved is clear about how the programme links to strategic targets?', 5, 22),
(136, 1, 'How well do you translate strategic targets into practical, efficient and effective actions across the programme of projects?', 5, 22),
(137, 1, 'How effectively do you monitor and control the programme so that it achieves the stated objectives efficiently and within budget?', 5, 22),
(138, 1, 'How well do you provide support to allow programme team members to perform efficiently and effectively?', 5, 22),
(139, 1, 'How well do you monitor the quality of work and progress against plans and take corrective action where necessary?', 5, 22),
(140, 1, 'How well do you understand the difference between project and programme management?', 5, 22),
(141, 1, 'How well do you understand the basic principles, methods and techniques of total quality management?', 5, 22),
(142, 1, 'How well do you understand how to assess and manage risk?', 5, 22),
(143, 1, 'How effective are you at designing business processes that deliver outcomes based on business goals and aims?', 5, 23),
(144, 1, 'How effectively do you take account of influences that may affect and shape how processes work?', 5, 23),
(145, 1, 'How well do you link processes so that they interact across the organisation to form a complete system?', 5, 23),
(146, 1, 'How well do you provide information and support for staff and other stakeholders involved in business processes?', 5, 23),
(147, 1, 'How effectively do you develop process measures that are affordable and provide enough information for people to decide how to manage the process?', 5, 23),
(148, 1, 'How well do you comply with, and ensure others comply with, legal requirements, industry regulations, organisational policies and professional codes?', 5, 23),
(149, 1, 'How well do you identify systematic issues and trends and recognise their impact upon current and future work?', 5, 23),
(150, 1, 'How well do you understand how to assess process changes for risk and reward against their potential investment cost?', 5, 23),
(151, 1, 'How well you you understand the types of analytical and problem-solving tools that you can use when developing business processes?', 5, 23),
(152, 1, 'How well do you identify and assess your customer groups, their needs and the benefits of using your products and/or services?', 5, 24),
(153, 1, 'How effectively do you evaluate the need for branding or a special identity to capture a niche position or premium price in the market?', 5, 24),
(154, 1, 'How well do you identify the specific products and/or services you are going to sell and how they are going to be priced?', 5, 24),
(155, 1, 'How well do you identify the ways in which you are going to sell to and communicate with customers?', 5, 24),
(156, 1, 'How effectively do you identify the areas in which you will need specialist expertise in marketing?', 5, 24),
(157, 1, 'How well do you seek out and act on  new business opportunities?', 5, 24),
(158, 1, 'How well do you anticipate likely future scenarios based on a realistic analysis of trends and developments?', 5, 24),
(159, 1, 'How well do you understand the principles and techniques used for branding and pricing strategies?', 5, 24),
(160, 1, 'How well do you understand the different methods for communicating with customers and the associated advantages and disadvantages and costs?', 5, 24),
(161, 1, 'How well do you identify customer service problems including gathering and interpreting information and obtaining customer feedback?', 5, 25),
(162, 1, 'How well do you identify repeated problems and take appropriate action?', 5, 25),
(163, 1, 'How well do you select the best solution to resolve customer service problems including consultation with others?', 5, 25),
(164, 1, 'How well do you implement the solution to customer service problems including discussions with customers and others?', 5, 25),
(165, 1, 'How effective are you at solving problems within service systems and procedures that might affect customers before they become aware of them?', 5, 25),
(166, 1, 'How effective are you at checking with your customers to make sure the problem has been resolved to their satisfaction?', 5, 25),
(167, 1, 'How effective are you at communicating in a clear, polite and confident way when dealing with customer service problems?', 5, 25),
(168, 1, 'How well do you understand how to defuse potentially stressful situations?', 5, 25),
(169, 1, 'How effective are you at using feedback to identify potential customer service improvements?', 5, 26),
(170, 1, 'How well do you assist with the evaluation of changes in customer service including any negative aspect of changes?', 5, 26),
(171, 1, 'How well do you work with others to follow plans for improving customer service including contributing ideas for improvements?', 5, 26),
(172, 1, 'How well do you monitor your own performance against plans to improve customer service?', 5, 26),
(173, 1, 'How effectively do you monitor joint performance against plans for customer service improvements?', 5, 26),
(174, 1, 'How well do you understand the roles of others outside your organisation who have an impact on the products and services you provide?', 5, 26),
(175, 1, 'How well do you understand the goals or targets of your organisation in relation to customer service?', 5, 26),
(176, 1, 'How well do you identify your customers'' current and future needs and expectations?', 5, 27),
(177, 1, 'How well do you identify the market for your products and/or services and any market segments?', 5, 27),
(178, 1, 'How well do you identify and assess opportunities to expand into new markets and for innovations that meet customers needs?', 5, 27),
(179, 1, 'How effective are you at identifying the reasons why customers use your products and/or services rather than those from your competitors?', 5, 27),
(180, 1, 'How well do you identify and assess any threats to, and weaknesses in, your organisations'' products and services?', 5, 27),
(181, 1, 'How well do you make sure that there is a shared understanding across your organisation of your customers  and your competitive position in the market?', 5, 27),
(182, 1, 'How well do you anticipate likely future scenarios based on a realistic analysis of trends and developments?', 5, 27),
(183, 1, 'How well do you understand the principles of market segmentation and why this is important?', 5, 27),
(184, 1, 'How effectively do you establish a shared vision and understanding of how staff in your organisation will work with customers?', 5, 28),
(185, 1, 'How effective are you at establishing a set of values and beliefs which develop skills, behaviours and attitudes that put the customer first?', 5, 28),
(186, 1, 'How well do you measure periodically the level of customer service your organisation is providing?', 5, 28),
(187, 1, 'How effectively do you articulate a vision that generates excitement, enthusiasm and commitment?', 5, 28),
(188, 1, 'How well do you understand the factors that make customers satisfied?', 5, 28),
(189, 1, 'How well do you ensure that colleagues are briefed on and understand the expectations of customers and their own roles and responsibilities in meeting their expectations?', 5, 29),
(190, 1, 'How well do you empower colleagues to deliver good customer service?', 5, 29),
(191, 1, 'How well do you ensure that clear and effective processes are in place to support customers and to resolve their problems and any complaints?', 5, 29),
(192, 1, 'How effective are you at establishing and operating suitable processes for monitoring levels of customer satisfaction?', 5, 29),
(193, 1, 'How well do you understand the difference between customer service and customer satisfaction?', 5, 29),
(194, 1, 'How well do you establish valid and appropriate measures for evaluating the performance of your organisation?', 5, 30),
(195, 1, 'How effective are you at establishing systems for collecting and assessing information on the overall performance of your organisation?', 5, 30),
(196, 1, 'How well do you establish a culture where staff freely come forward with potential and actual performance problems and suggestions for improvement?', 5, 30),
(197, 1, 'How well do you ensure that knowledge and understanding of how improvements can be made is shared across the organisation?', 5, 30),
(198, 1, 'How well do you understand how to benchmark the performance of your organisation against others?', 5, 30),
(199, 1, 'How well do you motivate members of your team to identify ideas for new products, services and improvements?', 6, 31),
(200, 1, 'How effectively do you identify and pursue opportunities  to work with other teams to generate and develop ideas?', 6, 31),
(201, 1, 'How well do you discuss and agree with members of your team those ideas which should be developed further?', 6, 31),
(202, 1, 'How well do you encourage  and develop the creativity of members of your team?', 6, 31),
(203, 1, 'How effective are you at encouraging members of your team to take acceptable risks in pursuing innovation and to make and learn from mistakes?', 6, 31),
(204, 1, 'How well do you recognise the achievements and the success of others?', 6, 31),
(205, 1, 'How well do you understand the needs of your customers?', 6, 31),
(206, 1, 'How well do you understand how to recognise and manage risk in innovation?', 6, 31),
(207, 1, 'How well do you communicate your vision of the future, the reasons for the change and associated benefits to everyone involved?', 6, 32),
(208, 1, 'How effectively do you encourage everyone involved to welcome change as an opportunity?', 6, 32),
(209, 1, 'How well do you communicate progress to everyone involved and celebrate achievement?', 6, 32),
(210, 1, 'How well do you articulate a vision that generates excitement, enthusiasm and commitment?', 6, 32),
(211, 1, 'How well do you understand the main models and methods for leading organisational change?', 6, 32),
(212, 1, 'How well do you understand the principles and application of risk assessment?', 6, 32),
(213, 1, 'How well do you understand your organisation''s current position in the sector and market in which it operates compared with its competitors or peers?', 6, 32),
(214, 1, 'How well do you understand your organisation''s communication channels, both formal and informal?', 6, 32),
(215, 1, 'How well do you identify the procedures, systems, structures and roles that need to be changed, and assess the gap between their current and required future state?', 6, 32),
(216, 1, 'How effectively do you identify and assess barriers to change?', 6, 33),
(217, 1, 'How effectively do you develop strategies and plans for change that set out the way forward?', 6, 33),
(218, 1, 'How well do you ensure that your plans include short-term "wins" as well as longer-term deliverables?', 6, 33),
(219, 1, 'How effectively do you develop systems for monitoring and assessing progress of change?', 6, 33),
(220, 1, 'How effective are you at identifying training and support needs and plan how to meet these to support change?', 6, 33),
(221, 1, 'How well do you understand the main models and methods for managing change?', 6, 33),
(222, 1, 'How effectively do you put into practice the strategies and plans for change in line with the available resources?', 6, 34),
(223, 1, 'How effectively do you design new work processes, procedures, systems, structures and roles to achieve the vision behind the change?', 6, 34),
(224, 1, 'How well do you assess and deal with problems and barriers to change?', 6, 34),
(225, 1, 'How well do you make time available to support others?', 6, 34),
(226, 1, 'How effective are you at maintaining the momentum for change?', 6, 34),
(228, 2, 'The student is able to identify confidential and sensitive information', 7, 37),
(229, 2, 'The student understands relevant standards, policies and legislation', 7, 37),
(230, 2, 'The student selects appropriate information', 7, 38),
(231, 2, 'The student plans information delivery', 7, 38),
(232, 2, 'The student delivers information confidently and empathically', 7, 38),
(233, 2, 'The student reflects and modifies delivery of information', 7, 38),
(234, 2, 'The student checks service user understanding', 7, 38),
(235, 2, 'The student identifies potential risks and benefits during information delivery', 7, 38),
(236, 2, 'The student identifies appropriate resources', 7, 39),
(237, 2, 'The student recognises what can and can''t be shared', 7, 39),
(238, 2, 'The student recognises own and service users'' capabilities and needs', 7, 39),
(239, 2, 'The student adapts and interprets information suitable for target audience', 7, 39),
(240, 2, 'The student respects choices and diversity', 7, 39),
(241, 2, 'The student demonstrates skills in encouraging and motivating', 7, 39);

-- --------------------------------------------------------

--
-- Table structure for table `frameworks`
--

CREATE TABLE IF NOT EXISTS `frameworks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` text COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIP` text COLLATE utf8_unicode_ci NOT NULL,
  `SHORTTITLE` text COLLATE utf8_unicode_ci NOT NULL,
  `RIGHTSHOLDER` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATOR` text COLLATE utf8_unicode_ci NOT NULL,
  `PUBLISHER` text COLLATE utf8_unicode_ci NOT NULL,
  `SOURCE` text COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SCALE` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `frameworks`
--

INSERT INTO `frameworks` (`ID`, `TITLE`, `DESCRIP`, `SHORTTITLE`, `RIGHTSHOLDER`, `CREATOR`, `PUBLISHER`, `SOURCE`, `TIMESTAMP`, `SCALE`) VALUES
(1, 'Being an Effective Manager', 'A skills framework covering all common areas of the management profession.', 'Effective Manager', 'MyKnowledgeMap Ltd.', 'Dave Waller', 'http://www.mkmlabs.com/', 'http://www.mkmlabs.com/', '2011-06-30 16:57:20', 1),
(2, 'ALPS Communication Skills', 'A common competency map for communication skills across the healthcare profession', 'Communication Skills', 'Assessment and Learning in Practice Settings (ALPS) CETL February 2008', 'Assessment and Learning in Practice Settings (ALPS) CETL', 'http://www.mkmlabs.com', 'http://www.alps-cetl.ac.uk/alps_embedded/communications.html', '2011-07-01 08:39:23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `scales`
--

CREATE TABLE IF NOT EXISTS `scales` (
  `ID` int(11) NOT NULL,
  `LOWERBOUND` int(11) NOT NULL,
  `UPPERBOUND` int(11) NOT NULL,
  `LOWVAL` int(11) NOT NULL,
  `LOWTERM` text COLLATE utf8_unicode_ci NOT NULL,
  `MIDVAL` int(11) NOT NULL,
  `MIDTERM` text COLLATE utf8_unicode_ci NOT NULL,
  `HIVAL` int(11) NOT NULL,
  `HITERM` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `scales`
--

INSERT INTO `scales` (`ID`, `LOWERBOUND`, `UPPERBOUND`, `LOWVAL`, `LOWTERM`, `MIDVAL`, `MIDTERM`, `HIVAL`, `HITERM`) VALUES
(1, 1, 5, 1, 'I have no knowledge of this', 3, 'I have sufficient knowledge to undertake these tasks on my own', 5, 'I am an expert in this and can train others'),
(2, 0, 1, 0, 'Not met', 0, '', 1, 'Met');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FRAMEWORK` int(11) NOT NULL,
  `NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIP` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`ID`, `FRAMEWORK`, `NAME`, `DESCRIP`) VALUES
(1, 1, 'Managing self', ''),
(2, 1, 'Using resources', ''),
(3, 1, 'Working with people', ''),
(4, 1, 'Providing direction', ''),
(5, 1, 'Achieving results', ''),
(6, 1, 'Facilitating change', ''),
(7, 2, 'Providing Information', 'Provide information to service users, carers, colleagues and other professionals.'),
(8, 2, 'Relationships and Networks', 'Build relationships and trust with service users, carers and colleagues. Build networks with colleagues, institutions and outside agencies.'),
(9, 2, 'Gathering and Processing Information', 'Gather, interpret, synthesize, analyse and record information accurately from a variety of sources.'),
(10, 2, 'Influencing and Negotiating', 'Influence the behaviour of others, policies, services and procedures.');

-- --------------------------------------------------------

--
-- Table structure for table `subsections`
--

CREATE TABLE IF NOT EXISTS `subsections` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FRAMEWORK` int(11) NOT NULL,
  `NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIP` text COLLATE utf8_unicode_ci NOT NULL,
  `PARENT` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `subsections`
--

INSERT INTO `subsections` (`ID`, `FRAMEWORK`, `NAME`, `DESCRIP`, `PARENT`) VALUES
(1, 1, 'Managing your own resources', '', 1),
(2, 1, 'Managing your own professional development', '', 1),
(3, 1, 'Developing personal networks', '', 1),
(4, 1, 'Managing budgets', '', 2),
(5, 1, 'Obtaining additional finance', '', 2),
(6, 1, 'Promoting the use of technology', '', 2),
(7, 1, 'Managing health and safety', '', 2),
(8, 1, 'Creating productive working relationships', '', 3),
(9, 1, 'Recruiting, selecting and keeping colleagues', '', 3),
(10, 1, 'Planning the workforce', '', 3),
(11, 1, 'Allocating and monitoring work', '', 3),
(12, 1, 'Providing learning opportunities', '', 3),
(13, 1, 'Developing operational plans', '', 4),
(14, 1, 'Mapping your environment', '', 4),
(15, 1, 'Developing strategic plans', '', 4),
(16, 1, 'Providing leadership', '', 4),
(17, 1, 'Ensuring compliance', '', 4),
(18, 1, 'Developing organisational culture', '', 4),
(19, 1, 'Managing risk', '', 4),
(20, 1, 'Promoting equal opportunities', '', 4),
(21, 1, 'Managing a project', '', 5),
(22, 1, 'Managing complementary projects', '', 5),
(23, 1, 'Managing business processes', '', 5),
(24, 1, 'Developing a framework for marketing', '', 5),
(25, 1, 'Managing customer service problems', '', 5),
(26, 1, 'Supporting customer improvements', '', 5),
(27, 1, 'Understanding your market', '', 5),
(28, 1, 'Developing customer focus', '', 5),
(29, 1, 'Managing customer satisfaction', '', 5),
(30, 1, 'Improving performance', '', 5),
(31, 1, 'Encouraging innovation', '', 6),
(32, 1, 'Leading change', '', 6),
(33, 1, 'Planning change', '', 6),
(34, 1, 'Implementing change', '', 6),
(37, 2, 'Providing Information 1', 'The student manages confidential and sensitive information', 7),
(38, 2, 'Providing Information 2', 'The student communicates precise information clearly, completely and in a timely manner', 7),
(39, 2, 'Providing Information 3', 'The student provides relevant information in a manner that is empowering and enabling', 7),
(40, 2, 'Relationships and Networks 1', 'The student demonstrates the ability to foster appropriate professional relationships', 8),
(41, 2, 'Relationships and Networks 2', 'The student is able to adapt their communication style to suit different situations', 8),
(42, 2, 'Relationships and Networks 3', 'The student is able to utilise appropriate networks to facilitate an effective service', 8),
(43, 2, 'Gathering and Processing Information 1', 'The student uses a variety of verbal and non-verbal interactions to encourage people to provide them with relevant information', 9),
(44, 2, 'Gathering and Processing Information 2', 'The student uses a style of enquiry appropriate to the situation', 9),
(45, 2, 'Gathering and Processing Information 3', 'The student verifies the information gathered from a variety of sources', 9),
(46, 2, 'Gathering and Processing Information 4', 'The student is able to manage information', 9),
(47, 2, 'Influencing and Negotiating 1', 'The student is able to communicate in a way that has a positive impact on the service user''s attitude towards managing their own health', 10),
(48, 2, 'Influencing and Negotiating 2', 'The student is able to identify and articulate their role in a way that promotes positive interactions', 10),
(49, 2, 'Influencing and Negotiating 3', 'The student is able to identify, negotiate and agree realistic objectives', 10),
(50, 2, 'Influencing and Negotiating 4', 'The student is able to assess outcomes and adapt future strategies', 10);
