<h1>
    <%= @user.username %>
</h1>

<p>
    <strong>Email: </strong>
    <%= @user.email %>
</p>

<p>
    <strong>Edad: </strong>
    <%= @user.age %>
</p>


<% link_to 'Go back', games_index_path %>
<%= link_to "Editar perfil", edit_user_registration_path %>
<% end %>