import json
import random

# Function to generate a random film entry
def generate_film_entry(film_id):
    return {
        "id": film_id,
        "name": f"Film-{film_id}",
        "year": str(random.randint(2000, 2022)),
        "country": random.choice(["USA", "UK", "Canada", "France", "Germany"]),
        "director": [
            f"Director-{random.randint(1, 10)}",
            f"Director-{random.randint(1, 10)}",
        ]
    }

# Generate x film entries
def generate_json(iteration_limit):
    films_data = {
        "films": [generate_film_entry(i) for i in range(1, iteration_limit + 1)]
    }
    return films_data

# Create and save the JSON file
for i in [1000, 10000, 100000, 1000000]:
    filename = f"films_{i}_entries.json"
    with open(filename, "w") as json_file:
        json.dump(generate_json(i), json_file, indent=2)