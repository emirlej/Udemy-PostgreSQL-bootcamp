/* Assessment test 2
Need to use cd-schema (cd.) before table name since it is non-public
*/

-- 1. How can you retrieve all the information from the cd.facilities table?
SELECT * FROM cd.facilities;

-- 2. You want to print out a list of all of the facilities and their cost to members. 
-- How would you retrieve a list of only facility names and costs?
SELECT name, membercost FROM cd.facilities;

-- 3. How can you produce a list of facilities that charge a fee to members?
SELECT name, guestcost FROM cd.facilities
WHERE guestcost > 0
ORDER BY guestcost DESC;

-- 4. How can you produce a list of facilities that charge a fee to members,
-- and that fee is less than 1/50th of the monthly maintenance cost? 
-- Return the facid, facility name, member cost, and monthly maintenance of 
-- the facilities in question.
SELECT * -- ,(membercost/monthlymaintenance)
FROM cd.facilities
WHERE (membercost > 0) AND (membercost/monthlymaintenance) < 0.02;

-- 5. How can you produce a list of all facilities with the word 'Tennis' in their name?
SELECT * 
FROM cd.facilities
WHERE name ILIKE '%TENNIS%';

-- 6. How can you retrieve the details of facilities with ID 1 and 5? 
-- Try to do it without using the OR operator.
SELECT *
FROM cd.facilities
WHERE facid IN (1, 5);

-- Show all from members
SELECT * FROM cd.members;

-- 7. How can you produce a list of members who joined after the start of September 2012?
-- Return the memid, surname, firstname, and joindate of the members in question.
SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01';

-- 8. How can you produce an ordered list of the first 10 surnames in the members table? 
-- The list must not contain duplicates.
SELECT DISTINCT surname
FROM cd.members
ORDER BY surname
LIMIT 10;

-- 9. You'd like to get the signup date of your last member. How can you 
-- retrieve this information?
SELECT joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1;
-- alternatively, or smartly
SELECT MAX(joindate) FROM cd.members;

-- 10. Produce a count of the number of facilities that have a cost to guests 
-- of 10 or more.
SELECT COUNT(*)
FROM cd.facilities
WHERE guestcost >= 10.0;

-- No number 11 question :P
SELECT * FROM cd.bookings LIMIT 5;

-- 12. Produce a list of the total number of slots booked per facility in the 
-- month of September 2012. Produce an output table consisting of facility id and slots,
-- sorted by the number of slots.
SELECT facid, SUM(slots) AS total_slots
FROM cd.bookings
WHERE extract(month from starttime) = 9
GROUP BY facid
ORDER BY total_slots;

-- 13. Produce a list of facilities with more than 1000 slots booked. Produce an output 
-- table consisting of facility id and total slots, sorted by facility id.
SELECT facid, SUM(slots) AS total_slots
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

-- 14. How can you produce a list of the start times for bookings for tennis courts, 
-- for the date '2012-09-21'? Return a list of start time and facility name pairings,
-- ordered by the time.
SELECT f.name, b.starttime
FROM cd.bookings AS b
INNER JOIN cd.facilities AS f ON f.facid = b.facid
WHERE b.starttime >= '2012-09-21' AND b.starttime < '2012-10-22' AND f.name ILIKE '%tennis%'
ORDER BY b.starttime;

-- How can you produce a list of the start times for bookings by members named 'David Farrell'?
SELECT bks.starttime, mbs.firstname || ' ' || mbs.surname AS fullname
FROM cd.members AS mbs
INNER JOIN cd.bookings AS bks ON mbs.memid = bks.memid
WHERE mbs.surname ILIKE '%farrel%' AND mbs.firstname ILIKE '%david%';
