import pandas as pd

# Read CSV file
df = pd.read_csv(
    r"C:\Users\ADMIN\OneDrive\Apps\Designer\mi_matches.csv"
)

# Display column names
print(df.columns)

# Filter Mumbai Indians wins
mi_wins = df[
    df["winner"].astype(str).str.strip() == "Mumbai Indians"
].copy()

# Display results
print(mi_wins)

# Count total wins
print("Total wins:", len(mi_wins))