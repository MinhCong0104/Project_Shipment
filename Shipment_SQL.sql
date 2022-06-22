USE Project_shipment

--Tính tổng doanh thu, lợi nhuận, giảm giá, tiền ship
SELECT SUM(Sales) AS Sales, ROUND(SUM(Profit),2) AS Profit, 
ROUND(SUM(Discount),2) AS Discount, ROUND(SUM([Shipping Cost]),2) AS Ship_cost
FROM ['Sales Data$'] 

--Doanh thu, lợi nhuận, số khách hàng theo khu vực
SELECT Region,SUM(Sales) AS Sales, ROUND(SUM(Profit),2) AS Profit, COUNT([Customer ID]) AS Customers
FROM ['Sales Data$']
GROUP BY Region

--Doanh thu, lợi nhuận, số lượng theo loại hàng         
SELECT [Product Category], SUM(Sales) AS Sales, ROUND(SUM(Profit),2) AS Profit, SUM(Quantity) AS Quantity
FROM ['Sales Data$']
GROUP BY [Product Category]

--Doanh thu, lợi nhuận theo tháng
SELECT Months, SUM(Sales) AS Sales, ROUND(SUM(Profit),2) AS Profit
FROM ['Sales Data$']
GROUP BY Months
