#include <stdio.h>

struct Process {
    int pid;
    int bt;   // Burst Time
    int wt;   // Waiting Time
    int tat;  // Turnaround Time
};

int main() {
    int n, i;
    struct Process p[20];
    float avg_wt = 0, avg_tat = 0;

    printf("Enter number of processes: ");
    scanf("%d", &n);

    // Input
    for(i = 0; i < n; i++) {
        printf("Enter Burst Time for P%d: ", i+1);
        p[i].pid = i + 1;
        scanf("%d", &p[i].bt);
    }

    // Waiting Time
    p[0].wt = 0;
    for(i = 1; i < n; i++) {
        p[i].wt = p[i-1].wt + p[i-1].bt;
    }

    // Turnaround Time
    for(i = 0; i < n; i++) {
        p[i].tat = p[i].wt + p[i].bt;
    }

    // Output
    printf("\nPID\tBT\tWT\tTAT\n");
    for(i = 0; i < n; i++) {
        printf("P%d\t%d\t%d\t%d\n", 
               p[i].pid, p[i].bt, p[i].wt, p[i].tat);

        avg_wt += p[i].wt;
        avg_tat += p[i].tat;
    }

    avg_wt /= n;
    avg_tat /= n;

    printf("\nAverage Waiting Time = %.2f", avg_wt);
    printf("Average Turnaround Time = %.2f\n", avg_tat);

    return 0;
}