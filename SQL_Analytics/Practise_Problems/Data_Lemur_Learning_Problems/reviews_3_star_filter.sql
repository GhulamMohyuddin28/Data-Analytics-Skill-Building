-- Question: We have a reviews table that has columns like review_id, user_id,
-- submit_date, product_id, and stars. We need to get only the user_id and
-- stars columns of those reviews that have exactly 3 stars.

SELECT user_id, stars
FROM reviews
WHERE stars=3;
