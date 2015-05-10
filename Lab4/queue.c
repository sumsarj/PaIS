#include "queue.h"
#include <stdlib.h>
#include <stdio.h>

/* Implementera interface från queue.h här */

/*
 * struct QueueElement {       					// typen för ett köelement 
	struct QueueElement *next; 					// pekare till nästa köelement 
	int prio;     							// prioritet (ger köns ordning)
	DataPtr data;		  					// pekare till dataelement
}; 
*/
QueuePtr new_queue(){
	QueuePtr q = (QueuePtr)malloc(sizeof(struct QueueElement));
	q->next = NULL;
	q->prio = MAX_PRIO;
	q->data = NULL;
	return(q);
}
void delete_queue(QueuePtr q){ // tar bort kön helt och hålle
	QueuePtr q2;
	while((int)q){
		q2 = q;
		q = q->next;
		free(q2);

	}
}
void clear(QueuePtr q){
	int a = 1;
	QueuePtr qNext = q;
	QueuePtr q2;
	qNext = qNext->next;
	q->next = NULL;
	while(a){
		q2 = qNext;
		qNext = qNext->next;
		free(q2);
		if(qNext == NULL)
			a = 0;
	}
}

int size(QueuePtr q){
	int i = 0;
	
	while(q->next){
		i++;
		q = q->next;
	}
	return i;
}

void add(QueuePtr q, int prio, DataPtr d){
	int a = 1;
	QueuePtr qlast;
	while(a){
		if(q->prio < prio){
			QueuePtr newElem = malloc(sizeof(struct QueueElement));
			newElem->data = d;
			newElem->prio = prio;
			newElem->next = (qlast->next);
			qlast->next = newElem;
			a = 0;
		}else if(q->next == NULL){
			QueuePtr newElem = malloc(sizeof(struct QueueElement));
			newElem->data = d;
			newElem->prio = prio;
			newElem->next = (q->next);
			q->next = newElem;
			a = 0;
		}else{
			qlast = q;
			q = q->next;
		}
	}
}

DataPtr	get_first(QueuePtr q){
	return((q->next)->data);
}

void remove_first(QueuePtr q){
	if(q->next != NULL){
	QueuePtr qRem = q->next;
	q->next = (q->next)->next;
	free(qRem);
	}
}


