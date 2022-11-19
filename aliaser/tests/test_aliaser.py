import subprocess


def test_aliaser():
    result = subprocess.run(["aliaser"], capture_output=True)
    assert result.stdout == b"aliaser\n"

