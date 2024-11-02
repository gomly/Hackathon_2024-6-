
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
            <p> Weather you are a new student ready to start a new stage in life or a upper classman ready for the world
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
                <input type="range" id="housingSlider" name="housing" min="0" max="20" value="0" oninput="updateSliderValues()">
                <span id="housingValue">0</span> / 20
            </div>

            <!-- Groceries Slider -->
            <div class="slider-container">
                <label for="groceriesSlider">Groceries</label>
                <input type="range" id="groceriesSlider" name="groceries" min="0" max="20" value="0" oninput="updateSliderValues()">
                <span id="groceriesValue">0</span> / 20
            </div>

            <!-- Leisure Slider -->
            <div class="slider-container">
                <label for="leisureSlider">Leisure</label>
                <input type="range" id="leisureSlider" name="leisure" min="0" max="20" value="0" oninput="updateSliderValues()">
                <span id="leisureValue">0</span> / 20
            </div>

            <!-- Transport Slider -->
            <div class="slider-container">
                <label for="transportSlider">Transport</label>
                <input type="range" id="transportSlider" name="transport" min="0" max="20" value="0" oninput="updateSliderValues()">
                <span id="transportValue">0</span> / 20
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
        <p style="font-size: 20px; font-style: italic;">Navigate university life with ease using our student guide! This checklist provides steps tailored for every stage. Whether your'e a <a href="#year1-checklist">first-year</a>, second-year, third-year, or an international student, this guide can help you make the most of each year.</p>
        
        
        <div class="year1-checklist" id="year1-checklist"></div>
            <h3 class="year1-checklist-h3">Year 1<h3>
            <p padding="0px">This is a checklist for students entering into year 1 of their studies.<p>
            <ul class="year1-checklist-list">
              <li>View your timetable - This will be available at the start of the term</li>
              <li>Register with a GP</li>
              <li>Join the university's Instagram and Student Life Facebook channels to make friends before you arrive</li>
              <li>Find out about Welcome Events and book your place</li>
              <li>Explore the Student's Union and plan what societies you want to join.</li>
              <li>Apply for a RailCard to save money on Rail Travel</li>
            </ul>
        </div>
     </div>
</main>

<!-- Footer Container -->
<footer class="footer-container">
    <p>© 2024 MyWebsite. All rights reserved.</p>
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
    }
</script>
</body>
</html>
