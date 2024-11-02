
<%--<%@ page import="javax.servlet.http.*, javax.servlet.*" %>--%>
<%--<%--%>
<%--    // Retrieve spending values from sliders, or set defaults--%>
<%--    String housingStr = request.getParameter("housing") != null ? request.getParameter("housing") : "0";--%>
<%--    String groceriesStr = request.getParameter("groceries") != null ? request.getParameter("groceries") : "0";--%>
<%--    String leisureStr = request.getParameter("leisure") != null ? request.getParameter("leisure") : "0";--%>
<%--    String transportStr = request.getParameter("transport") != null ? request.getParameter("transport") : "0";--%>

<%--    int housing = Integer.parseInt(housingStr);--%>
<%--    int groceries = Integer.parseInt(groceriesStr);--%>
<%--    int leisure = Integer.parseInt(leisureStr);--%>
<%--    int transport = Integer.parseInt(transportStr);--%>

<%--    // Calculate total spending--%>
<%--    int totalSpending = housing + groceries + leisure + transport;--%>

<%--    // Define category budgets and calculate total--%>
<%--    int maxBudgetPerCategory = 20;--%>
<%--    int totalBudget = 4 * maxBudgetPerCategory;--%>

<%--    // Determine spending message--%>
<%--    String message = "";--%>
<%--    int difference = totalBudget - totalSpending;--%>
<%--    if (totalSpending > 0) {--%>
<%--        if (difference < 0) {--%>
<%--            message = "You have overspent by $" + Math.abs(difference) + ". Try reducing your spending in some areas.";--%>
<%--        } else if (difference > 0) {--%>
<%--            message = "Great! You underspent by $" + difference + ". Consider saving the extra amount!";--%>
<%--        } else {--%>
<%--            message = "You spent exactly your budget. Good job on sticking to your limits!";--%>
<%--        }--%>
<%--    }--%>
<%--%>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <link rel="stylesheet" href="style.css">--%>
<%--    <title>Budget Tracker</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<!-- Header Container -->--%>
<%--<header class="header-container">--%>
<%--    <div class="header-inner-container logo">--%>
<%--        <img src="../../student-bud-logo.png" alt="StudentBud Logo" id="student-bud-logo" style="width: 100px;">--%>
<%--    </div>--%>
<%--    <div class="header-inner-container navigation">--%>
<%--        <nav>--%>
<%--            <ul>--%>
<%--                <li><a href="#budget-section">Budget</a></li>--%>
<%--                <li><a href="#guide-section">Year Checklist</a></li>--%>
<%--            </ul>--%>
<%--        </nav>--%>
<%--    </div>--%>
<%--</header>--%>

<%--<!-- Home-Middle Container -->--%>
<%--<main class="home-middle-container">--%>
<%--    <!-- Budget Section -->--%>
<%--    <div id="budget-section" class="home-middle-inner-container section1">--%>
<%--        <h2>Budgeting</h2>--%>
<%--        <p>Track your spending across categories to stay within budget. Adjust each slider to reflect your spending, then submit for insights.</p>--%>

<%--        <!-- Sliders Form -->--%>
<%--        <form method="post">--%>
<%--            <!-- Housing Slider -->--%>
<%--            <label for="housingSlider">Housing</label>--%>
<%--            <input type="range" id="housingSlider" name="housing" min="0" max="20" value="0" oninput="updateSliderValues()">--%>
<%--            <span id="housingValue">0</span> / 20--%>

<%--            <!-- Groceries Slider -->--%>
<%--            <label for="groceriesSlider">Groceries</label>--%>
<%--            <input type="range" id="groceriesSlider" name="groceries" min="0" max="20" value="0" oninput="updateSliderValues()">--%>
<%--            <span id="groceriesValue">0</span> / 20--%>

<%--            <!-- Leisure Slider -->--%>
<%--            <label for="leisureSlider">Leisure</label>--%>
<%--            <input type="range" id="leisureSlider" name="leisure" min="0" max="20" value="0" oninput="updateSliderValues()">--%>
<%--            <span id="leisureValue">0</span> / 20--%>

<%--            <!-- Transport Slider -->--%>
<%--            <label for="transportSlider">Transport</label>--%>
<%--            <input type="range" id="transportSlider" name="transport" min="0" max="20" value="0" oninput="updateSliderValues()">--%>
<%--            <span id="transportValue">0</span> / 20--%>

<%--            <!-- Total Spending Slider (Read-Only) -->--%>
<%--            <label for="totalSlider">Total Spending</label>--%>
<%--            <input type="range" id="totalSlider" name="total" min="0" max="80" value="0" readonly>--%>
<%--            <span id="totalValue">0</span> / 80--%>

<%--            <!-- Submit Button -->--%>
<%--            <button type="submit">Submit Weekly Spending</button>--%>
<%--        </form>--%>

<%--        <!-- Display Spending Message -->--%>
<%--        <p><%= message %></p>--%>
<%--    </div>--%>

<%--    <!-- Guide Section -->--%>
<%--    <div id="guide-section" class="home-middle-inner-container section2">--%>
<%--        <h2>Guide</h2>--%>
<%--        <p>Navigate university life with ease using our student guide! This checklist provides steps tailored for every stage. Whether you're a first-year, second-year, third-year, or an international student, this guide can help you make the most of each year.</p>--%>
<%--    </div>--%>
<%--</main>--%>

<%--<!-- Footer Container -->--%>
<%--<footer class="footer-container">--%>
<%--    <p>© 2024 MyWebsite. All rights reserved.</p>--%>
<%--</footer>--%>

<%--<script>--%>
<%--    function updateSliderValues() {--%>
<%--        // Get slider elements--%>
<%--        const housing = parseInt(document.getElementById('housingSlider').value);--%>
<%--        const groceries = parseInt(document.getElementById('groceriesSlider').value);--%>
<%--        const leisure = parseInt(document.getElementById('leisureSlider').value);--%>
<%--        const transport = parseInt(document.getElementById('transportSlider').value);--%>

<%--        // Update individual values--%>
<%--        document.getElementById('housingValue').textContent = housing;--%>
<%--        document.getElementById('groceriesValue').textContent = groceries;--%>
<%--        document.getElementById('leisureValue').textContent = leisure;--%>
<%--        document.getElementById('transportValue').textContent = transport;--%>

<%--        // Calculate and update total spending--%>
<%--        const total = housing + groceries + leisure + transport;--%>
<%--        document.getElementById('totalSlider').value = total;--%>
<%--        document.getElementById('totalValue').textContent = total;--%>
<%--    }--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>

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
        /* Additional styling for sliders and total display */
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
    <div class="header-inner-container logo">
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
        <h2>Guide</h2>
        <p>Navigate university life with ease using our student guide! This checklist provides steps tailored for every stage. Whether you're a first-year, second-year, third-year, or an international student, this guide can help you make the most of each year.</p>
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
