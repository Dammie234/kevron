<template>
    <div>
        <!-- Header -->
        <header class="top-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-lg-8">
                        <ul class="top-info-links">
                            <li><i class="icofont-clock-time"></i> 8.00 AM - 6.00 PM</li>
                            <li>|</li>
                            <li><a href="/contact">Contact Us</a></li>
                            <!-- <li>
                <i class="icofont-phone-circle"></i> +234 134 245 78, +234 708 653 8967,
                +234 803 976 4250
              </li> -->
                        </ul>
                    </div>
                    <div class="col-md-4 col-lg-4 text-end">
                        <ul class="top-social-links">
                            <li>
                                <a target="_blank" href="https://twitter.com/kevronconsult"><i
                                        class="icofont-twitter"></i></a>
                            </li>
                            <li>
                                <a target="_blank" href="https://web.facebook.com/kevronconsulting/?_rdc=1&_rdr"><i
                                        class="icofont-facebook"></i></a>
                            </li>
                            <li>
                                <a href="https://www.linkedin.com/company/kevron-consulting"><i
                                        class="icofont-linkedin"></i></a>
                            </li>
                            <!-- <li><a href="#"><i class="icofont-instagram"></i></a></li> -->
                        </ul>
                        <!-- <ul class="login-regi-links">
                            <li><router-link :to="{ name: 'login' }">Login</router-link></li>

                        </ul> -->
                    </div>
                </div>
            </div>
        </header>
        <!-- End top header -->
    </div>
</template>
<script>
export default {
    name: "Header",
};
</script>
