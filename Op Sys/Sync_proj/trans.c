#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <errno.h>

/*
Eric Adams
ea11c
COP 4610
Project 3
*/

int main( int argc, char *argv[] ){
	const int SIZE = 4096;

	if(argc != 3){
		perror("Incorrect number of command line arguments, exiting program.");
		exit(0);
	}
	int input;
	char answer;
	input = open(argv[1], O_RDONLY);
	if(input < 0)
	{
		perror("Unable to open specified input file, exiting program.");
		exit(0);
	}
	int output;
	if(access(argv[2], W_OK) == 0){
		printf("Specified output file already exists do you want to override it? y/n\n");
		answer = fgetc(stdin);
		if(answer == 'n' || answer == 'N'){
			printf("Unable to open output file, exiting program.");
			exit(0);
		}
		else
			output = open(argv[2], O_RDWR | O_TRUNC, 0666);
	}
	else
		output = open(argv[2], O_RDWR | O_CREAT, 0666);

	int pipePwrite[2];
	int pipePread[2];
	pid_t wpid;
	
	if (pipe(pipePread) == -1){
		perror("error opening pipe");
		exit(0);
	}
	if (pipe(pipePwrite) == -1){
		perror("error opening pipe");
		exit(0);
	}
	int shm_fd;
	char *shm_base;
	char data[100000];
	int bytes_read;
	int block_num = 1;
	int bytes_received;
	int totalSize = 0;
	wpid = fork();
	if (wpid == -1){
		perror("error forking process");
		exit(0);
	}
	if(wpid == 0) { //child process write to file
                shm_fd = shm_open("/ea11c_cop4610", O_RDONLY, 0666);
                if(shm_fd == -1){
                        perror("Shared memory failed.");
                        _exit(0);
                }
		ftruncate(shm_fd, SIZE);
                shm_base = mmap(0, SIZE, PROT_READ, MAP_SHARED, shm_fd, 0);
                if(shm_base == MAP_FAILED){
                        perror("Mapping failed, exiting program.");
                        _exit(0);
                }

		close(pipePread[0]); //close unused read end
		close(pipePwrite[1]); //close unused write end

		while(1){
			read(pipePwrite[0], &block_num, sizeof(block_num));
			read(pipePwrite[0], &bytes_received, sizeof(bytes_received));
			if(block_num == 0)
			{
				close(pipePread[1]);
				close(pipePwrite[0]);
				if(munmap(shm_base, SIZE) == -1){
					perror("Unmap failed.");
					_exit(1);
				}
				if(close(shm_fd) == -1){
					perror("close faild");
					_exit(1);
				}
				_exit(0);
			}
			else{
				//read from shared memory and write to output
				write(output, shm_base, bytes_received);
				totalSize += bytes_received;
			}
			write(pipePread[1], &block_num, sizeof(block_num));

		}
	}
	else { //parent process read from file
		close(pipePread[1]); //close unused write end
		close(pipePwrite[0]); //close unused read end
		
		while(1){
			shm_fd = shm_open("/ea11c_cop4610", O_CREAT | O_RDWR, 0666);
			if(shm_fd == -1){
				perror("shared memory failed");
				exit(1);
			}
			ftruncate(shm_fd, SIZE);
			shm_base = mmap(0, SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, shm_fd, 0);
			if(shm_base == MAP_FAILED){
				perror("mapping failed exiting program.");
				exit(1);
			}
	                bytes_read = read(input, &data, SIZE);
			write(shm_fd, &data, sizeof(data));
                	if(bytes_read == 0){
				block_num = 0;
			}
                	write(pipePwrite[1], &block_num, sizeof(block_num));
                	write(pipePwrite[1], &bytes_read, sizeof(bytes_read));

			read(pipePread[0], &block_num, sizeof(block_num));

			if(block_num != 0)
				block_num += 1;
			else{
				close(pipePread[0]);
				close(pipePwrite[1]);
				if(munmap(shm_base, SIZE) == -1){
					perror("Unmap failed.");
					exit(1);
				}
				if(close(shm_fd) == -1){
					perror("Close failed.");
					exit(1);
				}
				if(shm_unlink("/ea11c_cop4610") == -1){
					perror("Error removing shm.");
					exit(1);
				}
				exit(0);
			}
			if(close(shm_fd) == -1){
				perror("close failed");
				exit(1);
			}
		}	
	}
	return 0;
}
