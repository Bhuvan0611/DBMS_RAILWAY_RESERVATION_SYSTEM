# 🚆 Indian Railway Reservation System (MySQL Mini Project)

This mini project simulates the core functionalities of the Indian Railway Ticket Booking System using MySQL. It allows users to book confirmed or waitlisted tickets, calculates fare based on distance and class, manages train schedules, stations, and routes, and records payments with refund options. The system is implemented entirely with SQL using stored procedures, triggers, and relational constraints. It is designed to reflect real-world logic for a reservation system while demonstrating database normalization and efficient query design.

---

## 📦 Tables Used in the Project

- passenger  
- train  
- station  
- schedule  
- route  
- seat  
- ticket  
- payment  
- class_fare  

---

## 📐 Normalization

All tables are **normalized** and follow **Third Normal Form (3NF)** to reduce redundancy and ensure data integrity.

---

## 📊 Dummy Data Populated

- **Trains:** 4  
- **Stations:** 15  
- **Passengers:** 70+  
- **Seats per train per schedule:** 100+  
- **Routes:** Full coverage for each train over multiple stations  
- **Payments:** For all booked and waitlisted tickets

---

## 🛠️ Stored Procedures (16 Total)

1. `book_ticket`  
2. `cancel_ticket`  
3. `get_itemized_bill`  
4. `track_pnr_status`  
5. `available_seats_by_class`  
6. `passengers_on_train_by_date`  
7. `waitlisted_passengers_by_train`  
8. `total_refund_by_train`  
9. `total_revenue_by_date`  
10. `cancellation_records_with_refund`  
11. `busiest_route_by_passenger_count`  
12. `search_trains_between_stations`  
13. `available_classes_for_train`  
14. `discounted_fare_for_concession`  
15. `route_distance_lookup`  
16. `passenger_ticket_summary`

---

## 🔁 Triggers Used (3 Total)

1. `update_seat_status_on_ticket_cancel`  
2. `log_ticket_booking_time`  
3. `prevent_booking_if_no_schedule`

---

This project reflects strong database design practices with advanced SQL logic and is a complete working model of a simplified railway booking system.

