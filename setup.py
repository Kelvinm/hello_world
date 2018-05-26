import setuptools

# This is just a basic setup.py file pulled off PSF website for packaging  modules (usually use conda or something)

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="hello_world",
    version="0.0.1",
    author="Kelvin Malyar",
    author_email="kelvin.malyar@gmail.com",
    description="Teladoc example",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/Kelvinm/hello_world",
    packages=setuptools.find_packages(),
    classifiers=(
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ),
)