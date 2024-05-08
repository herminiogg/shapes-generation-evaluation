import filecmp
import os
import copy
import hashlib

# List of files
files = [
    "scoop-shacl-extended-all-RML+OWL.ttl",
    "scoop-shacl-extended-all-RML+OWL+XSD.ttl",
    "scoop-shacl-extended-all-RML+OWL+XSD+PA.ttl",
    "scoop-shacl-extended-all-RML+XSD.ttl",
    "scoop-shacl-extended-priority-RML+OWL.ttl",
    "scoop-shacl-extended-priority-RML+OWL+XSD.ttl",
    "scoop-shacl-extended-priority-RML+OWL+XSD+PA.ttl",
    "scoop-shacl-extended-priority-RML+XSD.ttl",
    "scoop-shacl-extended-priorityR-RML+OWL.ttl",
    "scoop-shacl-extended-priorityR-RML+OWL+XSD.ttl",
    "scoop-shacl-extended-priorityR-RML+OWL+XSD+PA.ttl",
    "scoop-shacl-extended-priorityR-RML+XSD.ttl"
]

for filename in files:
    with open(filename, 'rb') as file:
        buffer = file.read()
        hasher = hashlib.sha256()
        hasher.update(buffer)
        hash = hasher.hexdigest()
        print(f"{filename}: ", hash)

files_b = copy.copy(files)

different_files = set()

# Apply diff
for filename in files:
    different_files.add(filename) # first one is always different
    files_b.remove(filename) # this removes this one from the inner iteration to avoid checking twice
    files.remove(filename) # this removes this one from the inner iteration to avoid checking twice
    for filename_to_compare in files_b:
        are_equal = filecmp.cmp(filename, filename_to_compare)
        if(are_equal):
            files.remove(filename_to_compare) # this removes the one that is equal from the comparison
            files_b.remove(filename_to_compare) # this removes the one that is equal from the inner iteration

print("\nDifferent files:")
for filename in set(different_files):
    print(f"{filename}")

