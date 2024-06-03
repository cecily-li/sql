# Assignment 1: Design a Logical Model

## Question 1
Create a logical model for a small bookstore. 📚

At the minimum it should have employee, order, sales, customer, and book entities (tables). Determine sensible column and table design based on what you know about these concepts. Keep it simple, but work out sensible relationships to keep tables reasonably sized. Include a date table. There are several tools online you can use, I'd recommend [_Draw.io_](https://www.drawio.com/) or [_LucidChart_](https://www.lucidchart.com/pages/).

See Uploaded png Q1

## Question 2
We want to create employee shifts, splitting up the day into morning and evening. Add this to the ERD.

See uploaded png for Q2. 

## Question 3
The store wants to keep customer addresses. Propose two architectures for the CUSTOMER_ADDRESS table, one that will retain changes, and another that will overwrite. Which is type 1, which is type 2?

_Hint, search type 1 vs type 2 slowly changing dimensions._

Bonus: Are there privacy implications to this, why or why not?
```
RESPONSE: 
To retain changes for the CUSTOMER_ADDRESS table, the store should consider implementing Type 1 or Type 2 slowly changing dimensions. 

Type 1 slowly changing dimensions does not retain historical data, and instead overwrites data with the new value. Type 2 slowly changing dimensions allows for retention of historical data even when data has been updated. For example, in a Type 2 scenario, the original data row is retained and a new row is created to accommodate the updated data, whereas the original row would be overwritten in Type 1. 

When it comes to data retention of sensitive customer information such as addresses, it is important to consider the privacy and security aspects of the decision. If the store database with sensitive customer information (such as addresses is compromised), it could result in the data being used maliciously against the customer base in phishing attacks or impersonation schemes. Additionally, news of a compromised database may adversely impact public perception of the store and result in defamation and a decreased customer base. 


## Question 4
Review the AdventureWorks Schema [here](https://i.stack.imgur.com/LMu4W.gif)

Highlight at least two differences between it and your ERD. Would you change anything in yours?
```
RESPONSE: 
In comparison to my ERDs for the bookstore, the AdventureWorks Schema is categorized by business functions such as Human Resources, Purchasing, and Production, which makes it easier to read at a glance and allows the user to focus in on only the section they are interested in viewing. Additionally, another difference is the AdventureWorks Schema integrated a separate column to indicate primary and foreign keys, which allows data users to more easily pick up the overlapping categories between tables. I would change my ERD to integrate both of these changes to enhance usability and ease of use.


# Criteria

[Assignment Rubric](./assignment_rubric.md)

# Submission Information

🚨 **Please review our [Assignment Submission Guide](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md)** 🚨 for detailed instructions on how to format, branch, and submit your work. Following these guidelines is crucial for your submissions to be evaluated correctly.

### Submission Parameters:
* Submission Due Date: `June 1, 2024`
* The branch name for your repo should be: `model-design`
* What to submit for this assignment:
    * This markdown (design_a_logical_model.md) should be populated.
    * Two Entity-Relationship Diagrams (preferably in a pdf, jpeg, png format).
* What the pull request link should look like for this assignment: `https://github.com/<your_github_username>/sql/pull/<pr_id>`
    * Open a private window in your browser. Copy and paste the link to your pull request into the address bar. Make sure you can see your pull request properly. This helps the technical facilitator and learning support staff review your submission easily.

Checklist:
- [x] Create a branch called `model-design`.
- [x] Ensure that the repository is public.
- [x] Review [the PR description guidelines](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#guidelines-for-pull-request-descriptions) and adhere to them.
- [x] Verify that the link is accessible in a private browser window.

If you encounter any difficulties or have questions, please don't hesitate to reach out to our team via our Slack at `#cohort-3-help`. Our Technical Facilitators and Learning Support staff are here to help you navigate any challenges.
