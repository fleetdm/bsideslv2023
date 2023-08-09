def detect(record):
    return "nonstandard_ssh" in record.deepget("name")
