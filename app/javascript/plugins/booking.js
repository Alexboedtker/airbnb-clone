const computeTotalPrice = () => {
  let startYear = document.getElementById("booking_start_date_1i").value;
  let startMonth = document.getElementById("booking_start_date_2i").value;
  let startDay = document.getElementById("booking_start_date_3i").value;
  let startDate = new Date(startYear, startMonth - 1, startDay);

  let endYear = document.getElementById("booking_end_date_1i").value;
  let endMonth = document.getElementById("booking_end_date_2i").value;
  let endDay = document.getElementById("booking_end_date_3i").value;
  let endDate = new Date(endYear, endMonth - 1, endDay);

  let numberOfDays = (Math.floor((endDate - startDate)/1000/60/60/24)+1);
  let pricePerDay = document.getElementById("price-per-day").innerHTML;
  let totalPrice = document.getElementById("total-price").innerHTML = numberOfDays * pricePerDay
};

export { computeTotalPrice };
