<?php
 //Page d'accueil
session_start();
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
    header("location: login.php");
    exit;
}
require_once 'db/db.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CRUD Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h1, h2 {
            color: #333;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 0 10px black;
        }
        .bienvenue {
            margin-top: 20px;
            position: relative;
            text-align: center;
        }
        .card {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin: 10px 0;
            padding: 15px;
            box-shadow: 0 2px 5px black;
        }
        .card h3 {
            margin: 0 0 10px 0;
        }
        .card p {
            margin: 5px 0;
            color: #666;
        }
        .actions {
            margin-top: 30px;
        }
        .actions a {
            text-decoration: none;
            padding: 10px 15px;
            margin-right: 5px;
            color: #fff;
            background-color: #007bff;
            border-radius: 3px;
            transition: background-color 0.3s ease;
            box-shadow: 0 2px 5px black ;
        }
        .actions a:hover {
            background-color: #0056b3;
        }
        .actions a.delete {
            background-color: #dc3545;
        }
        .actions a.delete:hover {
            background-color: #c82333;
        }
        .logout {
            text-decoration: none;
            padding: 10px 15px;
            margin-right: 5px;
            color: #fff;
            background-color: #dc3545;
            border-radius: 3px;
            transition: background-color 0.3s ease;
            margin-top: 20px;
            box-shadow: 0 2px 5px black ;
        }
        .logout:hover {
            background-color: #c82333;
        }

        .user-list {
            margin-top: 50px;
            margin-bottom: 20px;
            color: black;
            font-weight: bold;
        }

        .create-user {
            text-decoration: none;
            padding: 10px 15px;
            color: #fff;
            background-color: #28a745;
            border-radius: 3px;
            transition: background-color 0.3s ease;
            display: inline-block;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px black ;
        }
        .create-user:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class= "bienvenue"><h1>Bienvenue, <?php echo htmlspecialchars($_SESSION["username"]); ?></h1></div>
        <a href="logout.php" class="logout">Se déconnecter</a>

        <a href="C.php" class="create-user">Créer utilisateur</a>

        <h2 class="user-list">Liste des utilisateurs :</h2>
        <?php
        $sql = "SELECT id, username, email, created_at FROM users";
        if ($result = mysqli_query($link, $sql)) {
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_array($result)) {
                    echo "<div class='card'>";
                    echo "<h3>" . htmlspecialchars($row['username']) . "</h3>";
                    echo "<p>Email: " . htmlspecialchars($row['email']) . "</p>";
                    echo "<p>Créé à: " . htmlspecialchars($row['created_at']) . "</p>";
                    echo "<div class='actions'>";
                    echo "<a href='U.php?id=" . $row['id'] . "'>Modifier</a>";
                    echo "<a href='D.php?id=" . $row['id'] . "' class='delete'>Supprimer</a>";
                    echo "</div>";
                    echo "</div>";
                }
                mysqli_free_result($result);
            } else {
                echo "<p>Aucun utilisateur trouvé</p>";
            }
        } else {
            echo "ERROR $sql. " . mysqli_error($link);
        }
        mysqli_close($link);
        ?>
    </div>
</body>
</html>
