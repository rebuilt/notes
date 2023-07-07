```eruby
<%= simple_fields_for(@claim) do |claim_form| %>
  <%= turbo_stream.update dom_id(@claim, :claim_address) do %>
    <%= render("claims/claims/edit/claim_address", claim_form: claim_form) %>
  <% end %>
<% end %>
```
