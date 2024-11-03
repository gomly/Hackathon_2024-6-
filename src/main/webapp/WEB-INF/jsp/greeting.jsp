
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    // Retrieve spending values from sliders, or set defaults
    String housingStr = request.getParameter("housing") != null ? request.getParameter("housing") : "0";
    String groceriesStr = request.getParameter("groceries") != null ? request.getParameter("groceries") : "0";
    String leisureStr = request.getParameter("leisure") != null ? request.getParameter("leisure") : "0";
    String transportStr = request.getParameter("transport") != null ? request.getParameter("transport") : "0";

    int housing = Integer.parseInt(housingStr);
    int groceries = Integer.parseInt(groceriesStr);
    int leisure = Integer.parseInt(leisureStr);
    int transport = Integer.parseInt(transportStr);

    // Calculate total spending
    int totalSpending = housing + groceries + leisure + transport;

    // Define category budgets and calculate total
    int maxBudgetPerCategory = 20;
    int totalBudget = 4 * maxBudgetPerCategory;

    // Determine spending message
    String message = "";
    int difference = totalBudget - totalSpending;
    if (totalSpending > 0) {
        if (difference < 0) {
            message = "You have overspent by $" + Math.abs(difference) + ". Try reducing your spending in some areas.";
        } else if (difference > 0) {
            message = "Great! You underspent by $" + difference + ". Consider saving the extra amount!";
        } else {
            message = "You spent exactly your budget. Good job on sticking to your limits!";
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Budget Tracker</title>
    <style>

        .slider-container {
            margin-bottom: 20px;
        }

        .total-display {
            font-weight: bold;
            font-size: 24px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<!-- Header Container -->
<header class="header-container">
    <div class="header-inner-container-logo">
        <img src="../../student-bud-logo.png" alt="StudentBud Logo" id="student-bud-logo" style="width: 100px;">
    </div>
    <div class="header-inner-container navigation">
        <nav>
            <ul>
                <li><a href="#budget-section">Budget</a></li>
                <li><a href="#guide-section">Year Checklist</a></li>
            </ul>
        </nav>
    </div>
</header>

<!-- Home-Middle Container -->
<main class="home-middle-container">
    <!-- Welcome Section -->
    <div id="Welcome-section" class="home-middle-inner-container-section3">
        <section class="concept concept-three">
            <div class="word">
                <%
                    String[] letters = {"W", "e", "l", "c", "o","m", "e","",
                            "t", "o" ,"","S","t","u","d","e","n","t","B","u","d"};
                    for (int i = 0; i < letters.length; i++) {
                %>
                <div class="hover">
                    <div></div>
                    <div></div>
                    <h1><%= letters[i] %></h1>
                </div>
                <%
                    }
                %>

            </div>

        </section>

    </div>
    <!-- intro Section -->
    <div id="intro-section" class="home-middle-inner-container section3">
        <div class="Main-ID">
            <h1>The Ultimate Guide<br> to Your <br>University!</h1>
            <p style="font-style:italic; font-size:20px">Whether you are a new student ready to start a new stage in life or an upper classman ready for the world
            of work, we at StudentBud have you covered.</p>
        </div>
    </div>
    <!-- Budget Section -->
    <div id="budget-section" class="home-middle-inner-container section1">
        <h2>Budgeting</h2>
        <p>Track your spending across categories to stay within budget. Adjust each slider to reflect your spending, then submit for insights.</p>

        <!-- Total Spending Display -->
        <div class="total-display"><span id="totalValue"></span></div>

        <!-- Sliders Form -->
        <form method="post">
            <!-- Housing Slider -->
            <div class="slider-container">
                <label for="housingSlider">Housing</label>
                <input type="range" id="housingSlider" name="housing" min="0" max="250" value="0" oninput="updateSliderValues()">
                <span id="housingValue">0</span> / 250
                <div id="contentBox"></div>
            </div>

            <!-- Groceries Slider -->
            <div class="slider-container">
                <label for="groceriesSlider">Groceries</label>
                <input type="range" id="groceriesSlider" name="groceries" min="0" max="100" value="0" oninput="updateSliderValues()">
                <span id="groceriesValue">0</span> / 100
                <div id="contentBox2"></div>
            </div>

            <!-- Leisure Slider -->
            <div class="slider-container">
                <label for="leisureSlider">Leisure</label>
                <input type="range" id="leisureSlider" name="leisure" min="0" max="100" value="0" oninput="updateSliderValues()">
                <span id="leisureValue">0</span> / 100
                <div id="contentBox3"></div>
            </div>

            <!-- Transport Slider -->
            <div class="slider-container">
                <label for="transportSlider">Transport</label>
                <input type="range" id="transportSlider" name="transport" min="0" max="100" value="0" oninput="updateSliderValues()">
                <span id="transportValue">0</span> / 100
                <div id="contentBox4"></div>
            </div>

            <!-- Submit Button -->
            <button type="submit">Submit Weekly Spending</button>
        </form>

        <!-- Display Spending Message -->
        <p><%= message %></p>
    </div>
    <!-- Guide Section -->
    <div id="guide-section" class="home-middle-inner-container section2">
        <h2 id="guide-heading">Yearwise Checklist</h2>
        <p style="font-size: 20px; font-style: italic;">Navigate university life with ease using our student guide! This checklist provides steps tailored for every stage. Whether you're a first-year, second-year, third-year, or even an international student, this guide can help you make the most of each year.</p>


        <div class="year1-checklist" id="year-checklist"></div>
        <h3 class="year1-checklist-h3">Year 1</h3>
            <p padding="0px">This is a checklist for students entering into year 1 of their studies.<p>
            <ul class="year1-checklist-list">
                <li>View your timetable - This will be available at the start of the term</li>
                <li>Register with a GP</li>
                <li>Join the university's Instagram and Student Life Facebook channels to make friends before you arrive</li>
                <li>Find out about Welcome Events and book your place</li>
                <li>Explore the Student's Union and plan what societies you want to join.</li>
                <li>Apply for a RailCard to save money on Rail Travel</li>
            </ul>
    


        <div class="year1-checklist" id="year-checklist"></div>
        <h3 class="year1-checklist-h3">Year 2</h3>
            <p padding="20px">This is a checklist for students progressing into year 2 of their studies.<p>
            <ul class="year1-checklist-list">
                <li>Apply for internships and summer programmes</li>
                <ul style="list-style-type: none;">
                    <li margin-left="10px";><a href="https://targetjobs.co.uk/" target="_blank" style="text-decoration: none;" class="jobs-links">Target Jobs</a></li>
                    <li margin-left="10px";><a href="https://mycareers.le.ac.uk/unauth" target="_blank" style="text-decoration: none;" class="jobs-links">MyCareers</a></li>
                    <li margin-left="10px";><a href="https://www.brightnetwork.co.uk/" target="_blank" style="text-decoration: none;" class="jobs-links">Bright Network</a></li>
                </ul>
                <li>Apply for Year Abroad</li>
                <li>Join societies on campus</li>
                <li>Confirm your academic standing and credits</li>
            </ul>
        
        

        <div class="year1-checklist" id="year-checklist"></div>
            <h3 class="year1-checklist-h3">Year 3</h3>
                <p padding="0px">This is a checklist for students entering into year 3 of their studies.<p>
                <ul class="year1-checklist-list">
                    <li>Checkout plans for Masters</li>
                    <li>Graduate Programmes
                    <li><a href="https://targetjobs.co.uk/" target="_blank" class="jobs-links">Target Jobs Uk</a></li>
                    <li><a href="https://www.ucas.com/" target="_blank" class="jobs-links">UCAS for Masters</a></li>
                    <li>Careers</li>
                </ul>

         <div class="year1-checklist" id="year-checklist"></div>
                    <h3 class="year1-checklist-h3">International Students</h3>
                        <p padding="0px">This is a checklist for international students.<p>
                        <ul class="year1-checklist-list">
                            <li>Check and renew your passport if necessary</li>
                            <li>Apply for your visa</li>
                            <li>Get some british currency to use during first few days</li>
                            <li><a href="https://le.ac.uk/study/welcome/your-next-steps/plan-travel" target="_blank" class="jobs-links">Plan how to get to university</a></li>
                            <li><a href="https://le.ac.uk/study/welcome/your-arrival/open-uk-bank-account" target="_blank" class="jobs-links">Research banking in the UK</a></li>
                            <li>Plan and book your accommodation</li>
                            <li>Read the <a href="https://www.leicesterunion.com/pageassets/support/studentresources/LSU-UoL-Unlocked.pdf" target="_blank" class="jobs-links">International Welcome Guide</a> from thr Student Union</li>
                        </ul>
        

    </div>
</main>

<!-- Footer Container -->
<footer class="footer-container">
    <p class="text2"> &copy 2024 MyWebsite. All rights reserved.</p>
    <p class="text2"> <img src="phone.png" height = "25" width = "25" <img/> 02344897609 </p>
    <p class="text2"> <img src="mail.png" height ="25" width ="25" <img/> CustomerService@StudentBud.biz </p>
    <p class="home-middle-container"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109515.33484418485!2d-1.2260080439416987!3d52.66052175398609!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4877612fa55d947f%3A0xf8da17fed74e0044!2sUniversity%20of%20Leicester!5e0!3m2!1sen!2suk!4v1730590682463!5m2!1sen!2suk" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
</footer>

    <script>
        function updateSliderValues() {
            // Get slider elements
            const housing = parseInt(document.getElementById('housingSlider').value);
            const groceries = parseInt(document.getElementById('groceriesSlider').value);
            const leisure = parseInt(document.getElementById('leisureSlider').value);
            const transport = parseInt(document.getElementById('transportSlider').value);

            // Update individual values
            document.getElementById('housingValue').textContent = housing;
            document.getElementById('groceriesValue').textContent = groceries;
            document.getElementById('leisureValue').textContent = leisure;
            document.getElementById('transportValue').textContent = transport;

            // Calculate and update total spending
            const total = housing + groceries + leisure + transport;
            document.getElementById('totalValue').textContent = total;

            // Update content boxes for each slider with multiple information
            updateContentBox('housingSlider', 'contentBox', [
                "Housing tip 1: Consider sharing to save money.\nMake sure to discuss responsibilities with your roommate.",
                "Housing tip 2: Look for deals on long-term leases.\nAsk about any promotions for new tenants.",
                "Housing tip 3: Explore off-campus housing options.\nSometimes they can be more affordable than on-campus.",
                "Housing tip 4: Make sure you have renter's insurance.\nIt's a small price to pay for peace of mind.",
                "Housing tip 5: Check local regulations for landlords.\nEnsure you're in a safe and legal rental agreement."
            ]);
            updateContentBox('groceriesSlider', 'contentBox2', [
                "Groceries tip 1: Consider meal prepping to save time.\nPrepare meals in bulk to avoid food waste.",
                "Groceries tip 2: Explore local markets for fresh produce.\nOften cheaper and fresher than grocery stores.",
                "Groceries tip 3: Buy in bulk for pantry staples.\nIt saves money and reduces the frequency of shopping.",
                "Groceries tip 4: Look for coupons and discounts.\nAlways check before shopping, both online and in-store.",
                "Groceries tip 5: Track your spending to avoid waste.\nPlan meals according to what you already have."
            ]);
            updateContentBox('leisureSlider', 'contentBox3', [
                "Leisure tip 1: Check for student discounts on activities.\nMany venues offer reduced prices for students.",
                "Leisure tip 2: Find free events on campus.\nThere are often concerts, lectures, and activities.",
                "Leisure tip 3: Join clubs for social activities.\nThey provide great opportunities to meet new people.",
                "Leisure tip 4: Balance leisure spending with other expenses.\nConsider setting a monthly cap for entertainment.",
                "Leisure tip 5: Consider low-cost hobbies to save money.\nExplore activities like hiking, reading, or crafting."
            ]);
            updateContentBox('transportSlider', 'contentBox4', [
                "Transport tip 1: Look into public transport options.\nCheck for student passes for discounts.",
                "Transport tip 2: Consider a bike for short distances.\nIt's a cost-effective and healthy option.",
                "Transport tip 3: Carpool with friends to save on gas.\nIt's fun and reduces individual expenses.",
                "Transport tip 4: Track transport expenses monthly.\nIdentify areas where you can save.",
                "Transport tip 5: Research student discounts for transport.\nMany transit systems offer reduced fares for students."
            ]);
        }

        function updateContentBox(sliderId, contentBoxId, messages) {
            const slider = document.getElementById(sliderId);
            const contentBox = document.getElementById(contentBoxId);
            const value = parseInt(slider.value, 10);

            // Determine which message to display based on slider value
            let messageIndex;
            if (value >= 0 && value <= 20) {
                messageIndex = 0; // First message
            } else if (value > 20 && value <= 40) {
                messageIndex = 1; // Second message
            } else if (value > 40 && value <= 60) {
                messageIndex = 2; // Third message
            } else if (value > 60 && value <= 80) {
                messageIndex = 3; // Fourth message
            } else {
                messageIndex = 4; // Fifth message
            }

            // Show the content box and update its text content
            contentBox.innerHTML = messages[messageIndex].replace(/\n/g, '<br>'); // Use <br> for line breaks
            contentBox.style.display = "block"; // Show content box
        }
    </script>
</body>
</html>
