---
title: "Contact"
layout: "contact"
---



<style>
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 10px;
        }

        .form-label {
            font-weight: bold;
        }

        .form-textarea {
            resize: vertical;
            min-height: 100px; /* Adjust the minimum height as needed */
        }
    </style>
    
<div style="display: flex; justify-content: center; align-items: center; margin: 0;margin-top: 20;">
<br>        <div style="width: 50%;"> <a href = "https://contactresearch.substack.com/">Subscribe to our newsletter </a> or send us a message below.<br>&nbsp;<br>      
     <form class="form-container" action="https://public.herotofu.com/v1/c4ce2140-4c97-11ee-b711-0fdc810d0d65" method="POST" accept-charset="UTF-8">
        <div class="form-group">
            <label class="form-label" for="name">Your Name</label>
            <input class="form-input" name="Name" id="name" type="text" required />
        </div>
        <div class="form-group">
            <label class="form-label" for="email">Your Email</label>
            <input class="form-input" name="Email" id="email" type="email" required />
        </div>
        <div class="form-group">
            <label class="form-label" for="message">Your Message</label>
            <textarea class="form-textarea" name="Message" id="message" required></textarea>
        </div>
        <div class="form-group">
            <input class="form-input" type="submit" value="Send us a message" />
            <div style="text-indent:-99999px; white-space:nowrap; overflow:hidden; position:absolute;" aria-hidden="true">
                <input type="text" name="_gotcha" tabindex="-1" autocomplete="off" />
            </div>
        </div>
    </form>
</div>
</div>
