from .logger import get_logger

logger = get_logger(__name__)

def main():
    logger.info("Hello from the starter template!")

if __name__ == "__main__":
    main()