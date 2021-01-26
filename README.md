```bash
  docker build -t test_wicked_pdf ./
  # without memory limitation
  docker run -it -v "$(pwd)"/pathcontainer:/test/path test_wicked_pdf bash
  # with memory limitation
  docker run -it --memory="1g" -v "$(pwd)"/pathcontainer:/test/path test_wicked_pdf bash
```