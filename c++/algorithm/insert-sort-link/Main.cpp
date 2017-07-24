/*************************************
Author: zchshen
Date: 2017-07-21
Brief: ascending order of insert sort by link list(include head)
**************************************/

#include <iostream>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>

using namespace std;

typedef struct Node{
	int data;
	struct Node* next;
}LinkNode;

void CreatListByEndInsert(LinkNode* head){
	assert(head);
	head->next = NULL;

	LinkNode* Index = head;
	LinkNode* node;
	srand((uint32_t)time(NULL));
	for (int i=0; i<20; i++){
		try{
			node = new LinkNode();	
		}
		catch(...){
			return;
		}

		node->data = rand()%100;
		Index->next = node;
		Index = node;
	}
	node->next = NULL;
}

void DisPlayList(LinkNode* head){
	assert(head);

	LinkNode* Index = head->next;
	while (NULL != Index){
		cout << "Data: " << Index->data << endl;
		Index = Index->next;
	}
	cout << endl;
}

void ReleaseList(LinkNode* head){
	assert(head);

	LinkNode* Index = head->next;
	while (NULL != Index){
		delete Index;
		Index = NULL;
	}
	delete head;
	head = NULL;
}

void InsertSortUp(LinkNode* head){
	assert(head);
	assert(head->next);

	LinkNode* curNode = head->next;
	LinkNode* frontNode = head;
	LinkNode* remainNode = curNode->next;
	LinkNode* insertNode = remainNode;
	curNode->next = NULL;

	while (remainNode){
		while (NULL != curNode && insertNode->data >= curNode->data){
			frontNode = curNode;
			curNode = curNode->next;
		}

		remainNode = remainNode->next;
		frontNode->next = insertNode;
		insertNode->next = curNode;
		insertNode = remainNode;
		curNode = head;
		frontNode = head;
	}
}

int main(int argc, char** argv){

	LinkNode* head = NULL;
	try{
		head = new LinkNode(); 
	}
	catch(...){
		exit(1);
	}

	CreatListByEndInsert(head);
	DisPlayList(head);
	InsertSortUp(head);
	DisPlayList(head);
	ReleaseList(head);

	return 0;
}
