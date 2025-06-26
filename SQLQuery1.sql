CREATE TABLE [dbo].[address] (
    [Id]        INT          IDENTITY (1, 1) NOT NULL,
    [cus_id]    INT          NULL,
    [invoice]   VARCHAR (50) NULL,
    [full_name] VARCHAR (50) NULL,
    [city]      VARCHAR (50) NULL,
    [state]     VARCHAR (50) NULL,
    [pincode]   VARCHAR (50) NULL,
    [address]   VARCHAR (50) NULL,
    [number]    VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[bill] (
    [bill_Id]      INT          IDENTITY (1, 1) NOT NULL,
    [ship_id]      INT          NULL,
    [cus_id]       INT          NULL,
    [pr_id]        INT          NULL,
    [invoice]      VARCHAR (50) NULL,
    [qty]          INT          NULL,
    [total_amount] INT          NULL,
    [date_time]    VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([bill_Id] ASC)
);

CREATE TABLE [dbo].[category] (
    [cat_id]   INT          IDENTITY (1, 1) NOT NULL,
    [category] VARCHAR (50) NULL,
    [status]   VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([cat_id] ASC)
);

CREATE TABLE [dbo].[subcategory] (
    
    [sub_id]   INT          IDENTITY (1, 1) NOT NULL,
    [subcategory] VARCHAR (50) NULL,
    [cat_id]     INT           NOT NULL,
    [status]   VARCHAR (50) NULL,
    
    PRIMARY KEY CLUSTERED ([sub_id] ASC)
);

CREATE TABLE [dbo].[client] (
    [user_id]  INT           IDENTITY (1, 1) NOT NULL,
    [name]     VARCHAR (100) NOT NULL,
    [email]    VARCHAR (100) NOT NULL,
    [Password] VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([user_id] ASC)
);

CREATE TABLE [dbo].[orderdetail] (
    [order_id]  INT          IDENTITY (1, 1) NOT NULL,
    [proid]     INT          NULL,
    [custid]    INT          NULL,
    [invoice]   VARCHAR (50) NULL,
    [size]      VARCHAR(50)  NULL,
    [orderdate] DATETIME     NULL,
    [totalqty]  INT          NULL,
    PRIMARY KEY CLUSTERED ([order_id] ASC)
);



CREATE TABLE [dbo].[product] (
    [product_id] INT           IDENTITY (10000, 1) NOT NULL,
    [cat_id]     INT           NOT NULL,
    [sub_id]     INT           NOT NULL,
    [product]    VARCHAR (MAX) NULL,
    [price]      INT           NOT NULL,
    [color]      VARCHAR (50)  NULL,
    [image]      VARCHAR (MAX) NULL,
    [desc]       VARCHAR (MAX) NULL,
    [status]     VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([product_id] ASC)
);
