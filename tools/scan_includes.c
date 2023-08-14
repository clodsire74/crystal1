#define PROGRAM_NAME "scan_includes"
#define USAGE_OPTS "[-h|--help] [-s|--strict] filename.asm"

#include "common.h"

void parse_args(int argc, char *argv[], bool *strict) {
	struct option long_options[] = {
		{"strict", no_argument, 0, 's'},
		{"help", no_argument, 0, 'h'},
		{0}
	};
	for (int opt; (opt = getopt_long(argc, argv, "sh", long_options)) != -1;) {
		switch (opt) {
		case 's':
			*strict = true;
			break;
		case 'h':
			usage_exit(0);
			break;
		default:
			usage_exit(1);
		}
	}
}

void scan_file(const char *filename, bool strict) {
	errno = 0;
	FILE *f = fopen(filename, "rb");
	if (!f) {
		if (strict) {
			error_exit("Could not open file \"%s\": %s\n", filename, strerror(errno));
		} else {
			return;
		}
	}

	long size = xfsize(filename, f);
	char *contents = xmalloc(size + 1);
	xfread((uint8_t *)contents, size, filename, f);
	fclose(f);
	contents[size] = '\0';

	for (char *ptr = contents; ptr && ptr - contents < size; ptr++) {
		bool is_incbin = false, is_include = false;
		ptr = strpbrk(ptr, ";\"Ii");
		if (!ptr) {
			break;
		}
		switch (*ptr) {
		case ';':
			// Skip comments until the end of the line
			ptr = strchr(ptr + 1, '\n');
			if (!ptr) {
				fprintf(stderr, "%s: no newline at end of file\n", filename);
				goto done;
			}
			break;
		case '"':
			// Skip string iteral until the closing quote
			ptr = strchr(ptr + 1, '"');
			if (ptr) {
				ptr++;
			} else {
				fprintf(stderr, "%s: unterminated string\n", filename);
				goto done;
			}
			break;
		case 'I':
		case 'i':
			/* empty statement between the label and the variable declaration */;
			// Check that an INCLUDE/INCBIN starts as its own token
			char before = ptr > contents ? *(ptr - 1) : '\n';
			if (before != ' ' && before != '\t' && before != '\n' && before != ':') {
				break;
			}
			is_incbin = !strncmp(ptr, "INCBIN", 6) || !strncmp(ptr, "incbin", 6);
			is_include = !strncmp(ptr, "INCLUDE", 7) || !strncmp(ptr, "include", 7);
			if (is_incbin || is_include) {
				// Check that an INCLUDE/INCBIN ends as its own token
				char after = is_include ? *(ptr + 7) : *(ptr + 6);
				if (after != ' ' && after != '\t' && after != '\n' && after != '"') {
					break;
				}
				ptr += strcspn(ptr, " \t");
				if (*ptr == '"') {
					// Print the file path and recursively scan INCLUDEs
					ptr++;
					char *include_path = ptr;
					size_t length = strcspn(ptr, "\"");
					ptr += length + 1;
					include_path[length] = '\0';
					printf("%s ", include_path);
					if (is_include) {
						scan_file(include_path, strict);
					}
				}
				else {
					fprintf(stderr, "%s: no file path after INC%s\n", filename, is_include ? "LUDE" : "BIN");
					if (!*ptr) {
						goto done;
					}
				}
			}
			break;
		}
	}

done:
	free(contents);
}

int main(int argc, char *argv[]) {
	bool strict = false;
	parse_args(argc, argv, &strict);

	argc -= optind;
	argv += optind;
	if (argc < 1) {
		usage_exit(1);
	}

	scan_file(argv[0], strict);
	return 0;
}
