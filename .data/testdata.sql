SET IDENTITY_INSERT [dbo].[DemoModule_Companies] ON 
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (1, 0, N'Techtronics Inc', N'123 Main Street', N'10001', N'New York', N'USA', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (2, 0, N'Globe Widgets Co.', N'456 Oak Avenue', N'90210', N'Beverly Hills', N'USA', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (3, 0, N'Innovate Solutions Ltd', N'789 Elm Street', N'WC1X 0XH', N'London', N'UK', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (4, 0, N'Apex Enterprises', N'101 Maple Drive', N'M5V 2T6', N'Toronto', N'Canada', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (5, 0, N'Global Dynamics', N'555 Pine Street', N'94102', N'San Francisco', N'USA', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (6, 0, N'Tech Innovations GmbH', N'777 Berliner Strasse', N'10115', N'Berlin', N'Germany', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (7, 0, N'FutureTech Solutions', N'888 Silicon Alley', N'94043', N'Mountain View', N'USA', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (8, 0, N'Creative Concepts LLC', N'999 Broadway', N'90001', N'Los Angeles', N'USA', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (9, 0, N'Bright Ideas Ltd', N'111 Sunset Boulevard', N'SW1A 1AA', N'London', N'UK', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Companies] ([CompanyId], [PortalId], [CompanyName], [Address], [PostalCode], [City], [Country], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (10, 0, N'Synergy Solutions', N'222 Park Avenue', N'10170', N'New York', N'USA', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DemoModule_Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[DemoModule_Products] ON 
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (51, 1, 7, N'AB1234567890', N'Cubicle A-101', CAST(N'2025-04-30' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (52, 2, 12, N'CD9876543210', N'Behind the reception desk', CAST(N'2025-06-15' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (53, 3, 5, N'EF2468135790', N'Storage room on the first floor', CAST(N'2025-08-20' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (54, 4, 18, N'GH1357924680', N'Next to the printer', CAST(N'2025-07-10' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (55, 5, 3, N'IJ9876543210', N'Opposite the conference room', CAST(N'2025-09-25' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (56, 6, 15, N'KL1234567890', N'Kitchen area', CAST(N'2025-11-05' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (57, 7, 8, N'MN2468135790', N'Beside the server rack', CAST(N'2025-10-15' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (58, 8, 11, N'OP1357924680', N'Third floor corridor', CAST(N'2025-12-20' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (59, 9, 2, N'QR2468135790', N'Storage closet', CAST(N'2025-11-30' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (60, 10, 17, N'ST1357924680', N'Basement level', CAST(N'2025-10-05' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (61, 1, 14, N'UV1234567890', N'Office of HR department', CAST(N'2025-08-10' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (62, 2, 9, N'WX2468135790', N'Under the staircase', CAST(N'2025-06-25' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (63, 3, 6, N'YZ1357924680', N'Meeting room B', CAST(N'2025-09-15' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (64, 4, 13, N'AB2468135790', N'In the break room', CAST(N'2025-07-20' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (65, 5, 1, N'CD1357924680', N'Next to CEO''s office', CAST(N'2025-11-10' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (66, 6, 16, N'EF2468135790', N'Beside the elevator', CAST(N'2025-12-30' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (67, 7, 4, N'GH2468135790', N'Second floor lobby', CAST(N'2025-10-20' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (68, 8, 10, N'IJ2468135790', N'Inside the IT department', CAST(N'2025-09-10' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (69, 9, 7, N'KL2468135790', N'By the window', CAST(N'2025-07-05' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (70, 10, 12, N'MN2468135790', N'Third floor restroom', CAST(N'2025-08-15' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (71, 1, 5, N'AB2468135790', N'Storage room on the second floor', CAST(N'2025-09-10' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (72, 2, 10, N'CD1357924680', N'By the water cooler', CAST(N'2025-11-25' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (73, 3, 15, N'EF2468135790', N'In the corner of the office', CAST(N'2025-12-15' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (74, 4, 2, N'GH1357924680', N'Next to the filing cabinets', CAST(N'2025-08-30' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (75, 5, 17, N'IJ2468135790', N'Fourth floor conference room', CAST(N'2025-10-05' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (76, 6, 8, N'KL2468135790', N'Outside the CEO''s office', CAST(N'2025-07-20' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (77, 7, 13, N'MN2468135790', N'Reception area', CAST(N'2025-09-30' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (78, 8, 1, N'OP1357924680', N'By the photocopier', CAST(N'2025-06-10' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (79, 9, 16, N'QR2468135790', N'In the server room', CAST(N'2025-08-05' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (80, 10, 3, N'ST1357924680', N'First floor hallway', CAST(N'2025-07-15' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (81, 1, 6, N'UV1357924680', N'Underneath the desk', CAST(N'2025-09-20' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (82, 2, 11, N'WX2468135790', N'Beside the vending machine', CAST(N'2025-12-10' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (83, 3, 18, N'YZ1357924680', N'On top of the filing cabinet', CAST(N'2025-10-30' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (84, 4, 4, N'AB1357924680', N'Second floor restroom', CAST(N'2025-11-20' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (85, 5, 9, N'CD2468135790', N'By the printer station', CAST(N'2025-07-30' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (86, 6, 14, N'EF1357924680', N'Next to the server rack', CAST(N'2025-08-25' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (87, 7, 7, N'GH1357924680', N'Third floor balcony', CAST(N'2025-10-15' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (88, 8, 12, N'IJ2468135790', N'Office supply closet', CAST(N'2025-06-05' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (89, 9, 1, N'KL1357924680', N'By the receptionist desk', CAST(N'2025-09-10' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (90, 10, 16, N'MN2468135790', N'Beside the fire exit', CAST(N'2025-11-05' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (91, 1, 3, N'OP1357924680', N'By the conference room door', CAST(N'2025-07-25' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (92, 2, 18, N'QR2468135790', N'Under the conference table', CAST(N'2025-08-20' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (93, 3, 5, N'ST1357924680', N'Third floor restroom', CAST(N'2025-10-30' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (94, 4, 10, N'UV1357924680', N'Next to the CEO''s chair', CAST(N'2025-09-15' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (95, 5, 15, N'WX2468135790', N'Fourth floor kitchen', CAST(N'2025-11-10' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (96, 6, 2, N'YZ1357924680', N'In the IT department', CAST(N'2025-06-30' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (97, 7, 17, N'AB2468135790', N'By the window', CAST(N'2025-08-05' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (98, 8, 4, N'CD1357924680', N'Beside the water fountain', CAST(N'2025-07-20' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (99, 9, 9, N'EF2468135790', N'By the server racks', CAST(N'2025-12-05' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_Products] ([ProductId], [CompanyId], [ProductModelId], [SerialNr], [Location], [ExpiryDate], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (100, 10, 14, N'GH1357924680', N'Next to the main entrance', CAST(N'2025-10-25' AS Date), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DemoModule_Products] OFF
GO
SET IDENTITY_INSERT [dbo].[DemoModule_ProductModels] ON 
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (1, 0, N'Lifepak CR Plus', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (2, 0, N'Lifepak 1000', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (3, 0, N'Primedic HeartSave', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (4, 0, N'Laerdal HeartStart', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (5, 0, N'Cardiac Science G3 Plus', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (6, 0, N'Cardiac Science G3 Pro', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (7, 0, N'Zoll AED Plus', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (8, 0, N'Weinmann Meducore Easy', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (9, 0, N'Philips FRX', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (10, 0, N'Defibtech Lifeline View', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (11, 0, N'Schiller Fred Easy', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (12, 0, N'Cardiac Science G5', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (13, 0, N'Defibtech Lifeline semi-automatic', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (14, 0, N'Defibtech Lifeline automatic', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (15, 0, N'Philips FRx', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (16, 0, N'Laerdal FR2+', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (17, 0, N'Heartsine 500 P', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (18, 0, N'Philips HS1', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (19, 0, N'Cardiaid', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoModule_ProductModels] ([ProductModelId], [PortalId], [ModelName], [CreatedByUserID], [CreatedOnDate], [LastModifiedByUserID], [LastModifiedOnDate]) VALUES (20, 0, N'Primedic HeartSave', 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-05-15T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DemoModule_ProductModels] OFF
GO
