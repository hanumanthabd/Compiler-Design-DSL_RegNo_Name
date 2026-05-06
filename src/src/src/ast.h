#ifndef AST_H
#define AST_H

typedef struct ASTNode {
    char value[20];
    struct ASTNode *left;
    struct ASTNode *right;
} ASTNode;

ASTNode* createNode(char value[]);
void printAST(ASTNode *root);

#endif
