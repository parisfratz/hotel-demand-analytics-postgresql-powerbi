CREATE OR REPLACE VIEW v_cleaned_hotel_bookings AS
WITH ranked_bookings AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY hotel, is_canceled, lead_time, arrival_date_year, 
                            arrival_date_month, arrival_date_day_of_month, 
                            adults, children, babies, country, adr, customer_type
               ORDER BY arrival_date_year -- Κρατάμε τη μία από τις διπλές
           ) as rn
    FROM hotel_bookings
    WHERE adr >= 0 
      AND (adults + children + babies) > 0
)
SELECT 
    hotel, is_canceled, lead_time, arrival_date_year, arrival_date_month,
    arrival_date_week_number, arrival_date_day_of_month, stays_in_weekend_nights,
    stays_in_week_nights, adults, children, babies, meal, country,
    market_segment, distribution_channel, is_repeated_guest, previous_cancellations,
    previous_bookings_not_canceled, reserved_room_type, assigned_room_type,
    booking_changes, deposit_type, agent, company, days_in_waiting_list,
    customer_type, adr, required_car_parking_spaces, total_of_special_requests,
    reservation_status, reservation_status_date
FROM ranked_bookings
WHERE rn = 1;
