---
title: "Get Involved"
summary: "Join the Contact Research Network or subscribe to our newsletter."
date: 2024-10-28
type: "page"
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
        min-height: 110px;
    }
</style>

## Join the Network

Interested in joining the Contact Research Network? Fill out the form below to get involved!
<div class="form-container" style="width: 80%;">
    <form action="https://public.herotofu.com/v1/b49c9690-952e-11ef-a0ee-650b92707733" method="post" accept-charset="UTF-8" style="width: 75%;">
        <div class="form-group">
            <label for="name" class="form-label">Your Name</label>
            <input name="Name" id="name" type="text" required />
        </div>
        <div class="form-group">
            <label for="email" class="form-label">Your Email</label>
            <input name="Email" id="email" type="email" required />
        </div>
        <div class="form-group">
            <label for="role" class="form-label">Current role</label>
            <select name="Role" id="role" required onchange="toggleOtherField()">
                <option value="" disabled selected>Select your role</option>
                <option value="PhD Student">PhD Student</option>
                <option value="Post Doc">Post Doc</option>
                <option value="Academic Faculty">Academic Faculty</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div id="other-role" class="form-group" style="display: none;">
            <label for="otherRole" class="form-label">Please specify your role</label>
            <input name="OtherRole" id="otherRole" type="text" />
        </div>
        <div class="form-group">
            <label class="form-label" for="message">Your interest/expertise</label>
            <textarea class="form-textarea" name="Message" id="message" required>Please describe your interest and/or expertise regarding contact research in just 1-2 sentences.</textarea>
        </div>
        <div class="form-group">
            <input type="submit" value="Request to join" />
            <div style="text-indent:-99999px; white-space:nowrap; overflow:hidden; position:absolute;" aria-hidden="true">
                <input type="text" name="_gotcha" tabindex="-1" autocomplete="off" />
            </div>
        </div>
    </form>
</div>

<script>
function toggleOtherField() {
  const roleSelect = document.getElementById("role");
  const otherRoleField = document.getElementById("other-role");
  otherRoleField.style.display = roleSelect.value === "Other" ? "block" : "none";
}
</script>

<p>&nbsp;</p>

## Subscribe to Our Newsletter

Stay up-to-date with the latest news and events by subscribing to our newsletter. [Click here to subscribe](https://contactresearch.substack.com/).

## Any other questions

Please email one of the network convenors, or [send us a message here.](../#contact)
