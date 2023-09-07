-- Can you explain why the subquery solution returns five more rows?
--	Is it possible to modify the query in question 2 to return 27
--	rows? If so, how would you do it?


-- Lmao this is really funny. Yes, it is returning all of the staff members, including those who are
--	not teachers. I appreciate this question, but the wording of the second question asked for each
--	staff member, not just teachers, so I used an outer join (which is what the author is asking for now)
--	initially. Despite that not being reflected in the author's answer