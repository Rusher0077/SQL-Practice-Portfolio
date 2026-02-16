-- Laptop vs Mobile Viewership
-- Return the total number of views from laptops (laptop_views) 
-- and the total number of views from mobile devices (mobile_views = phone + tablet).
-- Output should be a single row with exactly these two columns.
SELECT sum(
        case
            when device_type = 'laptop' then 1
            else 0
        end
    ) as laptop_views,
    sum(
        case
            when device_type = 'phone' then 1
            when device_type = 'tablet' then 1
            else 0
        end
    ) as mobile_views
FROM (
        SELECT device_type,
            count(user_id) over(partition by device_type) as dev_count
        from viewership
    ) t