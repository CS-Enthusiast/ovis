import argparse
from ldmsv_args import setup_arguments
from ldmsv_handlers import handle_command

def main():
    # Create the parser
    parser = argparse.ArgumentParser(description="LDMSV: LDMS Visualization Tool")
    # Setup arguments by calling a function from ldmsv_args.py
    setup_arguments(parser)
    # Parse the arguments
    args = parser.parse_args()
    # Handle the parsed arguments by calling a function from ldmsv_handlers.py
    handle_command(args)
if __name__ == "__main__":
    main()
