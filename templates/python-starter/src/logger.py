import logging
import sys

class ColorFormatter(logging.Formatter):
    COLORS = {
        logging.DEBUG: "\033[90m",      # Gray
        logging.INFO: "\033[94m",       # Blue
        logging.WARNING: "\033[93m",    # Yellow
        logging.ERROR: "\033[91m",      # Red
        logging.CRITICAL: "\033[95m",   # Magenta
    }
    RESET = "\033[0m"

    def format(self, record):
        color = self.COLORS.get(record.levelno, self.RESET)
        message = super().format(record)
        return f"{color}{message}{self.RESET}"

def get_logger(name: str) -> logging.Logger:
    logger =logging.getLogger(name)
    if not logger.handlers:
        handler = logging.StreamHandler(sys.stdout)
        formatter = ColorFormatter("[%(levelname)s] %(name)s: %(message)s")
        handler.setFormatter(formatter)
        logger.addHandler(handler)
        logger.setLevel(logging.INFO)
    return logger