from .logger import get_logger
from dotenv import load_dotenv
import os

load_dotenv()
logger = get_logger(__name__)

def main():
    app_name = os.getenv("APP_NAME", "Unnamed App")
    logger.info("Hello from the starter template!")

if __name__ == "__main__":
    main()